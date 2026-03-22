package com.bykv.vk.openvk.oJ.oJ.ZYk;

import com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private static ZYk Pfn = null;
    public static int ZYk = 10;
    public static int ex = 10;
    public static int oJ = 10;
    public static int tB = 10;

    public static int Pfn() {
        return ex;
    }

    public static int ZYk() {
        return oJ;
    }

    public static int ex() {
        return tB;
    }

    public static void oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            oJ = jSONObject.optInt(AdmobPreloadConfig.APP_OPEN, 10);
            ZYk = jSONObject.optInt(AdmobPreloadConfig.REWARD, 10);
            tB = jSONObject.optInt("brand", 10);
            int optInt = jSONObject.optInt("other", 10);
            ex = optInt;
            if (oJ < 0) {
                oJ = 10;
            }
            if (ZYk < 0) {
                ZYk = 10;
            }
            if (tB < 0) {
                tB = 10;
            }
            if (optInt < 0) {
                ex = 10;
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public static int tB() {
        return ZYk;
    }

    public static void oJ(ZYk zYk) {
        Pfn = zYk;
    }

    public static void oJ() {
        ZYk zYk = Pfn;
        if (zYk != null) {
            zYk.ex();
        }
    }
}
