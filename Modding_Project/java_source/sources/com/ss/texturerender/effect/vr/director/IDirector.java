package com.ss.texturerender.effect.vr.director;

import android.os.Bundle;
/* loaded from: classes6.dex */
public interface IDirector {
    void getView(float[] fArr, int i10);

    void reset();

    void setParam(Bundle bundle);

    void start();

    void stop();
}
