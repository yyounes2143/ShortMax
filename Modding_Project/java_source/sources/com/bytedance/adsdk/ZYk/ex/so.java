package com.bytedance.adsdk.ZYk.ex;

import android.content.Context;
import android.util.Pair;
import com.bytedance.adsdk.ZYk.BTZ;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;
/* loaded from: classes3.dex */
public class so {
    private final ba ZYk;
    private final cFZ oJ;

    public so(cFZ cfz, ba baVar) {
        this.oJ = cfz;
        this.ZYk = baVar;
    }

    private com.bytedance.adsdk.ZYk.cFZ ZYk(Context context, String str, String str2) {
        cFZ cfz;
        Pair<tB, InputStream> oJ;
        BTZ<com.bytedance.adsdk.ZYk.cFZ> ZYk;
        if (str2 == null || (cfz = this.oJ) == null || (oJ = cfz.oJ(str)) == null) {
            return null;
        }
        tB tBVar = (tB) oJ.first;
        InputStream inputStream = (InputStream) oJ.second;
        if (tBVar == tB.ZIP) {
            ZYk = com.bytedance.adsdk.ZYk.so.oJ(context, new ZipInputStream(inputStream), str2);
        } else {
            ZYk = com.bytedance.adsdk.ZYk.so.ZYk(inputStream, str2);
        }
        if (ZYk.oJ() != null) {
            return ZYk.oJ();
        }
        return null;
    }

    private BTZ<com.bytedance.adsdk.ZYk.cFZ> tB(Context context, String str, String str2) {
        Closeable closeable = null;
        try {
            try {
                ex oJ = this.ZYk.oJ(str);
                if (oJ.oJ()) {
                    BTZ<com.bytedance.adsdk.ZYk.cFZ> oJ2 = oJ(context, str, oJ.ZYk(), oJ.tB(), str2);
                    oJ2.oJ();
                    try {
                        oJ.close();
                    } catch (IOException unused) {
                    }
                    return oJ2;
                }
                BTZ<com.bytedance.adsdk.ZYk.cFZ> btz = new BTZ<>(new IllegalArgumentException(oJ.ex()));
                try {
                    oJ.close();
                } catch (IOException unused2) {
                }
                return btz;
            } catch (Throwable th2) {
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th2;
            }
        } catch (Exception e10) {
            BTZ<com.bytedance.adsdk.ZYk.cFZ> btz2 = new BTZ<>(e10);
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException unused4) {
                }
            }
            return btz2;
        }
    }

    public BTZ<com.bytedance.adsdk.ZYk.cFZ> oJ(Context context, String str, String str2) {
        com.bytedance.adsdk.ZYk.cFZ ZYk = ZYk(context, str, str2);
        if (ZYk != null) {
            return new BTZ<>(ZYk);
        }
        return tB(context, str, str2);
    }

    private BTZ<com.bytedance.adsdk.ZYk.cFZ> oJ(Context context, String str, InputStream inputStream, String str2, String str3) throws IOException {
        BTZ<com.bytedance.adsdk.ZYk.cFZ> oJ;
        tB tBVar;
        cFZ cfz;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (!str2.contains("application/zip") && !str2.contains("application/x-zip") && !str2.contains("application/x-zip-compressed") && !str.split("\\?")[0].endsWith(".lottie")) {
            tBVar = tB.JSON;
            oJ = oJ(str, inputStream, str3);
        } else {
            tB tBVar2 = tB.ZIP;
            oJ = oJ(context, str, inputStream, str3);
            tBVar = tBVar2;
        }
        if (str3 != null && oJ.oJ() != null && (cfz = this.oJ) != null) {
            cfz.oJ(str, tBVar);
        }
        return oJ;
    }

    private BTZ<com.bytedance.adsdk.ZYk.cFZ> oJ(Context context, String str, InputStream inputStream, String str2) throws IOException {
        cFZ cfz;
        if (str2 != null && (cfz = this.oJ) != null) {
            return com.bytedance.adsdk.ZYk.so.oJ(context, new ZipInputStream(new FileInputStream(cfz.oJ(str, inputStream, tB.ZIP))), str);
        }
        return com.bytedance.adsdk.ZYk.so.oJ(context, new ZipInputStream(inputStream), (String) null);
    }

    private BTZ<com.bytedance.adsdk.ZYk.cFZ> oJ(String str, InputStream inputStream, String str2) throws IOException {
        cFZ cfz;
        if (str2 != null && (cfz = this.oJ) != null) {
            return com.bytedance.adsdk.ZYk.so.ZYk(new FileInputStream(cfz.oJ(str, inputStream, tB.JSON).getAbsolutePath()), str);
        }
        return com.bytedance.adsdk.ZYk.so.ZYk(inputStream, (String) null);
    }
}
