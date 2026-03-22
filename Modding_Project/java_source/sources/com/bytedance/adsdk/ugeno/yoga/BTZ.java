package com.bytedance.adsdk.ugeno.yoga;
/* loaded from: classes3.dex */
public class BTZ extends YogaNodeJNIBase {
    public void PiB() {
        long j10 = this.oJ;
        if (j10 != 0) {
            this.oJ = 0L;
            YogaNative.jni_YGNodeFinalizeJNI(j10);
        }
    }

    protected void finalize() throws Throwable {
        try {
            PiB();
        } finally {
            super.finalize();
        }
    }
}
