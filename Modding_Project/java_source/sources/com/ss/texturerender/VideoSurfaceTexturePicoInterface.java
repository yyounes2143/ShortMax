package com.ss.texturerender;

import com.ss.texturerender.effect.PicoTextureObj;
import java.util.HashMap;
/* loaded from: classes6.dex */
public interface VideoSurfaceTexturePicoInterface {
    int[] getFovResult();

    void setIsPicoVRScene(boolean z10);

    void updatePicoTextureObj(HashMap<Integer, PicoTextureObj> hashMap);
}
