package com.bytedance.sdk.openadsdk.core.so;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.model.Jc;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONArray;
/* loaded from: classes3.dex */
public class WcQ {
    /* JADX INFO: Access modifiers changed from: private */
    public static void ex(JSONArray jSONArray, String str) {
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                String optString = jSONArray.optString(i10);
                if (!TextUtils.isEmpty(optString)) {
                    String oJ = com.bytedance.sdk.openadsdk.core.kkU.tB.oJ(optString, str);
                    File oJ2 = oJ(oJ);
                    if (oJ2 != null && oJ2.exists() && oJ2.length() > 0) {
                        return;
                    }
                    tB(oJ);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tB(JSONArray jSONArray, String str) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            String optString = jSONArray.optString(i10);
            if (!TextUtils.isEmpty(optString)) {
                String oJ = com.bytedance.sdk.openadsdk.core.kkU.tB.oJ(optString, str);
                File oJ2 = oJ(oJ);
                if (oJ2 != null && oJ2.exists() && oJ2.length() > 0) {
                    return;
                }
                tB(oJ);
            }
        }
    }

    public static boolean ZYk(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        Jc BWx;
        return (cYVar == null || (BWx = cYVar.BWx()) == null || BWx.ba() == null) ? false : true;
    }

    public static void oJ(final com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        ofl.ZYk(new com.bytedance.sdk.component.so.so("preloadStaticRes") { // from class: com.bytedance.sdk.openadsdk.core.so.WcQ.1
            @Override // java.lang.Runnable
            public void run() {
                Jc BWx;
                Jc.oJ ba2;
                com.bytedance.sdk.openadsdk.core.model.cY cYVar2 = cYVar;
                if (cYVar2 == null || (BWx = cYVar2.BWx()) == null || (ba2 = BWx.ba()) == null) {
                    return;
                }
                String jXJ = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().jXJ();
                WcQ.oJ(cYVar, ba2.oJ(), jXJ);
                WcQ.tB(ba2.ZYk(), jXJ);
                WcQ.ex(ba2.tB(), jXJ);
            }
        });
    }

    public static void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, JSONArray jSONArray, String str) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            String optString = jSONArray.optString(i10);
            if (!TextUtils.isEmpty(optString)) {
                String oJ = com.bytedance.sdk.openadsdk.core.kkU.tB.oJ(optString, str);
                String oJ2 = com.bytedance.sdk.component.utils.Pfn.oJ(oJ);
                InputStream oJ3 = com.bytedance.sdk.openadsdk.jFA.ex.oJ(oJ, oJ2);
                if (oJ3 != null) {
                    try {
                        oJ3.close();
                    } catch (IOException unused) {
                    }
                } else {
                    com.bytedance.sdk.openadsdk.jFA.ex.oJ(oJ).tB(1).oJ(oJ2).oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(cYVar, oJ, new com.bytedance.sdk.component.Pfn.eZI() { // from class: com.bytedance.sdk.openadsdk.core.so.WcQ.2
                        @Override // com.bytedance.sdk.component.Pfn.eZI
                        public void oJ(int i11, String str2, @Nullable Throwable th2) {
                        }

                        @Override // com.bytedance.sdk.component.Pfn.eZI
                        public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
                            dlz.oJ();
                        }
                    }), 4);
                }
            }
        }
    }

    public static InputStream ZYk(String str) {
        File oJ = oJ(str);
        if (oJ != null && oJ.exists() && oJ.length() > 0) {
            try {
                return new FileInputStream(oJ);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB("ExpressStaticResPreload", th2.getMessage());
            }
        }
        return null;
    }

    private static void tB(String str) {
        File oJ = oJ(str);
        if (oJ == null) {
            return;
        }
        File file = new File(oJ + ".tmp");
        com.bytedance.sdk.component.cFZ.ZYk.oJ ex = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ex();
        ex.oJ(8);
        ex.oJ("preloadStaticRes");
        ex.ZYk(str);
        ex.oJ(oJ.getParent(), oJ.getName());
        com.bytedance.sdk.component.cFZ.ZYk oJ2 = ex.oJ();
        if (oJ2 != null && oJ2.ba() && oJ2.Pfn() != null && oJ2.Pfn().exists()) {
            com.bytedance.sdk.component.utils.QSm.oJ("ExpressStaticResPreload", "downloadFile: success url=".concat(String.valueOf(str)));
            return;
        }
        if (oJ.exists()) {
            try {
                oJ.delete();
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB("ExpressStaticResPreload", th2.getMessage());
            }
        }
        if (file.exists()) {
            try {
                file.delete();
            } catch (Throwable th3) {
                com.bytedance.sdk.component.utils.QSm.tB("ExpressStaticResPreload", th3.getMessage());
            }
        }
    }

    public static File oJ(String str) {
        String str2;
        String oJ = com.bytedance.sdk.component.utils.Pfn.oJ(str);
        if (oJ == null) {
            return null;
        }
        String name = new File(CacheDirFactory.getRootDir()).getName();
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            str2 = name + "/express_static_res/";
        } else {
            str2 = name + "/express_static_res/";
        }
        return com.bytedance.sdk.component.utils.cFZ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), com.bytedance.sdk.openadsdk.multipro.ZYk.tB(), str2, oJ);
    }
}
