# MATLAB Voice Modulation & Demodulation (AM & FM)

This is my implementation for **Project 5** of the **Communication Systems** course during my Bachelor's degree[cite: 1, 2]. 

## Project Description
The goal of this project is to record a short voice sample and process it through analog modulation and demodulation pipelines using both Amplitude Modulation (AM) and Frequency Modulation (FM)[cite: 2]. The performance and output quality of both techniques are then compared[cite: 2].

The project consists of:
1. Reading the input voice recording (`Recording.m4a`)[cite: 1, 2].
2. Modulating the signal using AM (at a 20 kHz carrier) and demodulating it back[cite: 1, 2].
3. Modulating the signal using FM (at a 20 kHz carrier with a 2 kHz frequency deviation) and demodulating it back[cite: 1].
4. Exporting the output files (`AM.wav` and `FM.wav`) and comparing the audio quality[cite: 1, 2].

## Files in this Repository
* `voice_modulation.m`: The MATLAB script containing the DSP code[cite: 1].
* `Recording.m4a`: The raw input voice audio[cite: 1, 2].
* `Project_Report.pdf`: The original project report detailing the process and containing the resulting plots[cite: 2].

## Results & Observations
* **AM:** The demodulated signal successfully recovers the voice but includes noticeable background noise[cite: 2].
* **FM:** The demodulated signal yields a much cleaner audio output with significantly less noise than the AM counterpart[cite: 2].
