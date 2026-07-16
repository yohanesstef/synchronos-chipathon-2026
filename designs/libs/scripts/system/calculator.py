import math
import streamlit as st

def main():
    # Configure the page layout
    st.set_page_config(page_title="Maneatis Synthesizer", page_icon="⚡", layout="wide")
    
    # Header
    st.title("⚡ Maneatis Multiplier Synthesizer")
    st.markdown("Interactive tape-out sizing calculator for Charge Pump (x) and VCTRL Buffer (y)")
    st.divider()

    # Create two columns: Left for Sliders, Right for Results
    col_inputs, col_results = st.columns([1.2, 1])

    with col_inputs:
        st.subheader("Physical Array Parameters")
        ceff = st.slider("Delay Cell Node Cap (C_eff) [fF]", min_value=10.0, max_value=500.0, value=32.23, step=0.1)
        n_stages = st.slider("Number of VCO Stages", min_value=2, max_value=10, value=4, step=1)
        c1 = st.slider("Loop Filter Capacitor (C1) [pF]", min_value=1.0, max_value=250.0, value=50.0, step=1.0)
        
        st.write("") # Spacer
        st.subheader("Loop Dynamics Target")
        bw_ratio = st.slider("Bandwidth Ratio (wn / wref)", min_value=0.01, max_value=0.20, value=0.10, step=0.005)
        zeta = st.slider("Damping Factor (Zeta)", min_value=0.5, max_value=2.0, value=1.0, step=0.05)
        n_divider = st.slider("Divider Ratio (N)", min_value=1, max_value=256, value=1, step=1)

    # ---------------------------------------------------------
    # Maneatis Calculations
    # ---------------------------------------------------------
    cb_val_ff = 2 * n_stages * ceff
    c_b = cb_val_ff * 1e-15
    c_1 = c1 * 1e-12

    # Derived from Maneatis Eq 22: BW_ratio = (x * N) / (2 * pi) * sqrt(CB / C1)
    x = (bw_ratio * 2 * math.pi / n_divider) * math.sqrt(c_1 / c_b)
    
    # Derived from Maneatis Eq 21: Zeta = (y / 4) * sqrt(x / N) * sqrt(C1 / CB)
    y = (4 * zeta) / (math.sqrt(x / n_divider) * math.sqrt(c_1 / c_b))

    # Determine safety warnings
    warnings = []
    if x < 0.5: warnings.append("x < 0.5: Charge pump devices becoming very small. Mismatch risk increases.")
    if x > 10: warnings.append("x > 10: Charge pump drawing massive area and current.")
    if y > 5: warnings.append("y > 5: VCTRL buffer PMOS becoming excessively large.")
    if y < 0.2: warnings.append("y < 0.2: Loop filter resistance too high.")

    with col_results:
        st.subheader("Ideal Multipliers")
        
        # Display X Multiplier
        st.metric(label="Charge Pump Multiplier (x)", value=f"{x:.4f}")
        st.caption("Scale CP Tail, Inputs, and Dummy Loads by this factor relative to a delay cell.")
        st.write("") # Spacer
        
        # Display Y Multiplier
        st.metric(label="VCTRL Buffer Multiplier (y)", value=f"{y:.4f}")
        st.caption("Scale the diode-connected PMOS in the VCTRL buffer by this factor.")
        st.write("") # Spacer
        
        # Display Contextual Calculation
        st.metric(label="Total Array Cap (CB)", value=f"{cb_val_ff:.2f} fF")

        # Display Warnings if any exist
        if warnings:
            st.error("**Layout Warnings:**\n" + "\n".join([f"- {w}" for w in warnings]))
        else:
            st.success("**Status:** All multipliers are within safe layout bounds.")

if __name__ == "__main__":
    main()