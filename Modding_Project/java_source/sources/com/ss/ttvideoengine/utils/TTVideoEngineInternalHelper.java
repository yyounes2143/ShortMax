package com.ss.ttvideoengine.utils;

import android.content.Context;
import android.media.AudioManager;
/* loaded from: classes6.dex */
public class TTVideoEngineInternalHelper {
    public static float getVolume(Context context) {
        int i10;
        if (context == null) {
            return 0.0f;
        }
        int i11 = 0;
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager != null) {
                i10 = audioManager.getStreamVolume(3);
            } else {
                i10 = 0;
            }
            if (i10 >= 0) {
                i11 = i10;
            }
        } catch (Exception unused) {
        }
        return i11;
    }
}
