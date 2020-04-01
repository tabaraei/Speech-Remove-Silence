Folowing steps are required in order to remove silence from audio file:

### 1- Signal framing:
For framing we set the time per frame to 30 milliseconds. Thus, with a simple equation (frameSize = fs*30ms), the appropriate size for each frame is obtained.

### 2- Calculate energy for each frame:
To obtain the energy per frame, we have to calculate the sum of squared samples of each frame. This energy reflects the power of that particular window. (this treshold can be found by testing different values)

### 3- Tresholding:
Obviously, to identify the silence in each frame, the energy of the different frames must be calculated. Then, if the frame energy is lower than the threshold, it indicates silence and should be removed from the signal.


## MATLAB Code Explanation:
- After recieving input file (which I've attached a sample "input.wav" file), the input signal will be stored in "Signal" variable and its signal will take place in "fs" variable.

- Frame size is obtained by mentioned equation (=30ms) and input signal will be framed

- By testing different values to remove silence, the best treshold in this case was found.

- After calculating frame energy, if the value was higher than treshold it is NOT a silence, and should be stored in "result" variable.

- Finaly we plot the results in order to compate input with output signal, which we can see that output file has shorter period and silence is removed from the file. At last we store "output.wav" file.
