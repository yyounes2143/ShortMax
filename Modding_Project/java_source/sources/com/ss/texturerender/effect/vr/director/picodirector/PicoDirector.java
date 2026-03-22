package com.ss.texturerender.effect.vr.director.picodirector;

import android.os.Bundle;
import android.view.Display;
import com.ss.texturerender.effect.vr.director.IDirector;
import com.ss.texturerender.math.Matrix3x3d;
/* loaded from: classes6.dex */
public class PicoDirector implements IDirector {
    private Display mDisplay;

    public PicoDirector(Display display) {
        this.mDisplay = display;
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void getView(float[] fArr, int i10) {
        if (PicoQuaternion.getVRQuaternion() != null) {
            Matrix3x3d.matrixToColumnArray(Matrix3x3d.rotationMatrix3x3(PicoQuaternion.getVRQuaternion()), fArr);
        }
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void reset() {
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void start() {
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void stop() {
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void setParam(Bundle bundle) {
    }
}
