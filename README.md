# Adaptive Predistortion

## Abstract
Nonlinear distortion caused by power amplifiers is one of the main limitations affecting the performance of digital transmission systems. In this discussion, the power amplifier is modeled as a memoryless nonlinear system, meaning its distortion can be compensated by placing a predistorter before the amplifier. In this case, the predistorter is also a memoryless nonlinear system that inverts the transformation performed by the amplifier. Naturally, for the inversion to be possible, the input signal must fall within the range where the amplifier’s transformation is invertible. The adaptivity of the predistorter will be discussed. Adaptivity is commonly employed in practice because it allows the system to track the slow temporal variations in the amplifier’s characteristics.

---

## Introduction
Predistortion is a fundamental technique for enhancing the performance of nonlinear amplifiers, which are widely used in telecommunication systems. These devices amplify signals for long-distance transmission but inevitably introduce distortions that broaden the signal spectrum and degrade the signal-to-noise ratio (SNR) and bit-error rate (BER). Predistortion mitigates these effects by applying an inverse transformation relative to the amplifier’s transfer function, ensuring that the amplified signal retains its desired properties.
A key aspect of predistortion is the mathematical modeling of the amplifier. Among the most popular models is the Rapp model, which describes nonlinear behavior as a function of saturation and gain. To further optimize signal quality, a technique known as Crest Factor Reduction (CR) is employed. This technique limits signal peaks, reducing the disparity between peak and average power, thereby preventing saturation and preserving linearity.
Modern systems integrate adaptive predistortion, which dynamically updates correction coefficients to address variations in amplifier characteristics caused by external factors (such as temperature or component aging). These systems leverage iterative learning algorithms to quickly converge toward optimal conditions, minimizing distortion and maximizing the signal-to-distortion ratio (SDR). By combining CR, nonlinear modeling, and adaptive predistortion, robust and efficient transmissions are ensured.

## Simulink block diagram
![Block diagram](https://github.com/rgiorgiotech/adaptive_predistortion/blob/main/schema-a-blocchi.png)

## Crest Factor Reduction
Compared to an unrestricted signal used as the input to the predistorter, Crest Factor Reduction offers the advantage of intentional and therefore controlled distortion. A low Crest Factor induces high nonlinear distortion, leading to BER degradation at the receiver due to nonlinear intermodulation noise. Conversely, with a high Crest Factor, this distortion is avoided, but the output average power will be low. A compromise is thus sought, where the Crest Factor is sufficiently small to ensure an undeteriorated BER.

## Lambda effect
The preceding analysis demonstrates how reducing the value of the parameter λ can effectively limit the phenomenon of spectral broadening induced by non-ideal amplification. It is observed that the resulting signals (after CR, predistortion, and amplification, respectively) exhibit frequency components that are extraneous to the original signal’s spectrum and are enhanced in power. This effect becomes more pronounced as the value of λ increases.
Furthermore, it is evident that increasing this parameter leads to a greater power discrepancy between the signal output from the predistortion block and the non-ideally amplified signal. This, in turn, can result in potential degradation of transmission performance.
Lastly, it is noted that the CR technique, when applied in isolation, exhibits poorer performance compared to adaptive predistortion. This is because the former approach does not take into account the effects of the non-ideal amplifier. A clear example supporting this observation emerges in the case of a complex input signal.

---

## Conclusions
The project demonstrated that the use of adaptive predistortion is an effective solution for mitigating the effects of nonlinear distortion introduced by power amplifiers. Through the implementation on Simulink, we verified that combining techniques such as Crest Factor Reduction (CR) and piecewise linear interpolation can significantly improve the quality of the transmitted signal, preserving its linearity and reducing spectral broadening.
In particular, adopting the Rapp model allowed the simulation of realistic scenarios and highlighted the key role of the smoothing factor _s_ in determining the system’s behavior.
The different values of λ showed that the processed signal exhibits a narrower and more controlled spectral shape compared to the initial non-linearized signal. This indicates that the system effectively limits the distortion induced by the amplifier while maintaining average power at acceptable levels.
Moreover, for complex signals, the combined effect of CR and predistortion resulted in a visibly improved spectrum, which closely resembles the expected ideal signal. This confirms that adaptive predistortion, in synergy with CR, can compensate for nonlinear distortions, ensuring optimal SNR and BER performance.
