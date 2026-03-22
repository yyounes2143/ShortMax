package com.bytedance.adsdk.ugeno.jFA.cFZ;

import android.content.Context;
/* loaded from: classes3.dex */
public abstract class oJ extends com.bytedance.adsdk.ugeno.ZYk.oJ<com.bytedance.adsdk.ugeno.jFA.ZYk.oJ> {
    public oJ(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ, com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(String str, String str2) {
        super.oJ(str, str2);
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -411339735:
                if (str.equals("onVideoProgress")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1139576207:
                if (str.equals("onVideoFinish")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1302043440:
                if (str.equals("onVideoPlay")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1479592233:
                if (str.equals("onVideoResume")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1708332410:
                if (str.equals("onVideoPause")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                ZYk(str, str2);
                return;
            default:
                return;
        }
    }
}
