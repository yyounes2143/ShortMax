package com.bytedance.sdk.component.adexpress.oJ.ZYk;

import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceResponse;
import com.bytedance.sdk.component.adexpress.ex.jFA;
import com.bytedance.sdk.component.adexpress.oJ.tB.oJ;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    static Object oJ = new Object();

    public static boolean Pfn() {
        return Pfn.ZYk().Pfn();
    }

    public static void ZYk() {
        try {
            so.ex();
            File so2 = Pfn.so();
            if (so2 == null || !so2.exists()) {
                return;
            }
            if (so2.getParentFile() != null) {
                com.bytedance.sdk.component.utils.cFZ.tB(so2.getParentFile());
            } else {
                com.bytedance.sdk.component.utils.cFZ.tB(so2);
            }
        } catch (Throwable unused) {
        }
    }

    private static String ba() {
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ ex = ex();
        if (ex == null) {
            return null;
        }
        return ex.ex();
    }

    private static File cFZ(String str) {
        List<Pair<String, String>> ZYk;
        oJ.ZYk Pfn = ex().Pfn();
        if (Pfn == null || (ZYk = Pfn.ZYk()) == null || ZYk.size() <= 0) {
            return null;
        }
        for (Pair<String, String> pair : ZYk) {
            Object obj = pair.second;
            if (obj != null && ((String) obj).equals(str)) {
                return new File(Pfn.so(), (String) pair.first);
            }
        }
        return null;
    }

    public static com.bytedance.sdk.component.adexpress.oJ.tB.oJ ex() {
        return Pfn.ZYk().ba();
    }

    public static void oJ() {
        Pfn.ZYk();
    }

    public static String tB() {
        return ba.tB();
    }

    private static boolean Pfn(String str) {
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ ex;
        List<oJ.C0170oJ> ba2;
        if (!Pfn() || (ex = ex()) == null || (ba2 = ex.ba()) == null) {
            return false;
        }
        for (oJ.C0170oJ c0170oJ : ba2) {
            if (c0170oJ != null && TextUtils.equals(str, c0170oJ.oJ())) {
                return true;
            }
        }
        return false;
    }

    public static String ex(String str) {
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar;
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ ex = ex();
        if (ex == null) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> oJ2 = ex.oJ();
            if (oJ2 == null || oJ2.size() <= 0 || (oJVar = oJ2.get(str)) == null) {
                return null;
            }
            return oJVar.ex();
        }
        return ba();
    }

    public static com.bytedance.sdk.component.adexpress.oJ.tB.ZYk oJ(String str) {
        return cFZ.oJ().oJ(str);
    }

    public static com.bytedance.sdk.component.adexpress.oJ.tB.ZYk tB(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.bytedance.sdk.component.adexpress.oJ.tB.ZYk oJ2 = cFZ.oJ().oJ(str);
        if (oJ2 != null) {
            oJ2.oJ(Long.valueOf(System.currentTimeMillis()));
            oJ(oJ2);
        }
        return oJ2;
    }

    private static File ba(String str) {
        if (Pfn()) {
            for (oJ.C0170oJ c0170oJ : ex().ba()) {
                if (c0170oJ.oJ() != null && c0170oJ.oJ().equals(str)) {
                    File file = new File(Pfn.so(), com.bytedance.sdk.component.utils.Pfn.oJ(c0170oJ.oJ()));
                    String oJ2 = com.bytedance.sdk.component.utils.Pfn.oJ(file);
                    if (c0170oJ.ZYk() == null || !c0170oJ.ZYk().equals(oJ2)) {
                        return null;
                    }
                    return file;
                }
            }
            return null;
        }
        return null;
    }

    public static void oJ(com.bytedance.sdk.component.adexpress.oJ.tB.ex exVar) {
        cFZ.oJ().oJ(exVar, exVar.f12737ba);
    }

    private static void oJ(final com.bytedance.sdk.component.adexpress.oJ.tB.ZYk zYk) {
        com.bytedance.sdk.component.adexpress.ex.ex.oJ(new com.bytedance.sdk.component.so.so("updateTmplTime") { // from class: com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (ZYk.oJ) {
                    ba.oJ().oJ(zYk, true);
                }
            }
        }, 10);
    }

    public static oJ oJ(String str, jFA.oJ oJVar, String str2, String str3) {
        File file;
        oJ oJVar2 = new oJ();
        if (TextUtils.isEmpty(str3)) {
            file = null;
        } else {
            file = ZYk(str3, str);
            if (file != null) {
                oJVar2.oJ(1);
            }
        }
        if (file == null && (file = cFZ(str)) != null) {
            oJVar2.oJ(3);
        }
        if (file == null && (file = ba(str)) != null) {
            oJVar2.oJ(2);
        }
        if (!TextUtils.isEmpty(str3)) {
            if (!oJ(str, str3)) {
                oJVar2.oJ(4);
            }
        } else if (!Pfn(str)) {
            oJVar2.oJ(6);
        }
        oJVar2.ZYk();
        if (file != null) {
            try {
                oJVar2.oJ(new WebResourceResponse(oJVar.oJ(), "utf-8", new FileInputStream(file)));
            } catch (Throwable unused) {
            }
        }
        return oJVar2;
    }

    public static Set<String> ZYk(String str) {
        return cFZ.oJ().ZYk(str);
    }

    private static File ZYk(String str, String str2) {
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar;
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ ex = ex();
        if (ex == null || !Pfn()) {
            return null;
        }
        Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> oJ2 = ex.oJ();
        if (oJ2.size() == 0 || (oJVar = oJ2.get(str)) == null) {
            return null;
        }
        for (oJ.C0170oJ c0170oJ : oJVar.ba()) {
            if (c0170oJ.oJ() != null && c0170oJ.oJ().equals(str2)) {
                File file = new File(Pfn.so(), com.bytedance.sdk.component.utils.Pfn.oJ(c0170oJ.oJ()));
                String oJ3 = com.bytedance.sdk.component.utils.Pfn.oJ(file);
                if (c0170oJ.ZYk() == null || !c0170oJ.ZYk().equals(oJ3)) {
                    return null;
                }
                return file;
            }
        }
        return null;
    }

    public static boolean ZYk(JSONObject jSONObject) {
        Object opt;
        return (jSONObject == null || (opt = jSONObject.opt("xTemplate")) == null || TextUtils.isEmpty(opt.toString())) ? false : true;
    }

    private static boolean oJ(String str, String str2) {
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ ex;
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar;
        if (!Pfn() || (ex = ex()) == null) {
            return false;
        }
        Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> oJ2 = ex.oJ();
        if (oJ2.size() == 0 || (oJVar = oJ2.get(str2)) == null) {
            return false;
        }
        for (oJ.C0170oJ c0170oJ : oJVar.ba()) {
            if (c0170oJ != null && TextUtils.equals(str, c0170oJ.oJ())) {
                return true;
            }
        }
        return false;
    }

    public static boolean oJ(JSONObject jSONObject) {
        Object opt;
        return (jSONObject == null || (opt = jSONObject.opt("template_Plugin")) == null || TextUtils.isEmpty(opt.toString())) ? false : true;
    }
}
