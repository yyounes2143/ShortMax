package com.bytedance.sdk.component.adexpress.oJ.ZYk;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class so {
    private static com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJ;

    public static synchronized com.bytedance.sdk.component.adexpress.oJ.tB.oJ ZYk() {
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar;
        synchronized (so.class) {
            oJVar = oJ;
        }
        return oJVar;
    }

    public static void ex() {
        tB.ZYk(Pfn.so(), ZYk(), "temp_pkg_info.json");
        oJ = null;
    }

    public static void oJ() {
        FileInputStream fileInputStream = null;
        try {
            File file = new File(Pfn.so(), "temp_pkg_info.json");
            long length = file.length();
            Long valueOf = Long.valueOf(length);
            if (length > 0 && file.exists() && file.isFile()) {
                byte[] bArr = new byte[valueOf.intValue()];
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    fileInputStream2.read(bArr);
                    com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJ2 = com.bytedance.sdk.component.adexpress.oJ.tB.oJ.oJ(new JSONObject(new String(bArr, "utf-8")));
                    if (oJ2 != null) {
                        oJ = oJ2;
                        oJ.tB();
                    }
                    fileInputStream = fileInputStream2;
                } catch (Throwable unused) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                            return;
                        } catch (IOException unused2) {
                            return;
                        }
                    }
                    return;
                }
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException unused3) {
                }
            }
        } catch (Throwable unused4) {
        }
    }

    public static void tB() {
        tB.oJ(Pfn.so(), ZYk(), "temp_pkg_info.json");
    }

    public static boolean ZYk(com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar) {
        return tB.tB(ZYk(), oJVar);
    }

    public static synchronized void oJ(com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar) {
        synchronized (so.class) {
            if (oJVar != null) {
                if (oJVar.so()) {
                    oJ = oJVar;
                }
            }
        }
    }

    public static boolean oJ(String str) {
        return tB.oJ(ZYk(), str);
    }
}
