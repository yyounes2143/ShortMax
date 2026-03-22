package com.bytedance.sdk.openadsdk.BTZ;

import android.content.Context;
import android.media.AudioManager;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
/* loaded from: classes3.dex */
public class jFA {
    private final AudioManager oJ;
    private int ZYk = -1;
    private boolean tB = false;

    public jFA(Context context) {
        this.oJ = (AudioManager) context.getApplicationContext().getSystemService("audio");
    }

    public int oJ() {
        return this.ZYk;
    }

    public void oJ(boolean z10) {
        oJ(z10, false);
    }

    public void oJ(boolean z10, boolean z11) {
        if (this.oJ == null) {
            return;
        }
        int i10 = 0;
        if (z10) {
            int cFZ = DeviceUtils.cFZ();
            if (cFZ != 0) {
                this.ZYk = cFZ;
            } else if (!z11) {
                return;
            }
            oJ(3, 0, 0);
            this.tB = true;
            return;
        }
        int i11 = this.ZYk;
        if (i11 == 0) {
            i11 = DeviceUtils.jFA() / 15;
        } else {
            if (i11 == -1) {
                if (!z11) {
                    return;
                }
                i11 = DeviceUtils.jFA() / 15;
            }
            this.ZYk = -1;
            oJ(3, i11, i10);
            this.tB = true;
        }
        i10 = 1;
        this.ZYk = -1;
        oJ(3, i11, i10);
        this.tB = true;
    }

    private void oJ(int i10, int i11, int i12) {
        try {
            this.oJ.setStreamVolume(i10, i11, i12);
        } catch (Throwable unused) {
        }
    }
}
