package com.bytedance.sdk.openadsdk.QSm.oJ;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.adjust.sdk.Constants;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.LpP;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.eZI;
import com.bytedance.sdk.openadsdk.QSm.ZYk.oJ;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.settings.jFA;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.bytedance.vodsetting.Module;
import java.io.File;
import java.io.FileInputStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class tB {
    private static volatile tB oJ;
    private final Set<String> Pfn = Collections.synchronizedSet(new HashSet());
    private String ZYk;
    private String ex;
    private String tB;

    private String Pfn() {
        if (TextUtils.isEmpty(this.tB)) {
            String str = ex() + File.separator + Module.COMMON;
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            this.tB = str;
        }
        return this.tB;
    }

    private String ba() {
        if (TextUtils.isEmpty(this.ex)) {
            String str = ex() + File.separator + "pregames";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            this.ex = str;
        }
        return this.ex;
    }

    private String ex() {
        if (TextUtils.isEmpty(this.ZYk)) {
            try {
                File file = new File(si.oJ().getCacheDir(), "playable");
                if (!file.exists()) {
                    file.mkdirs();
                }
                this.ZYk = file.getAbsolutePath();
            } catch (Throwable th2) {
                QSm.tB("PlayableResManager", "init root path error: ".concat(String.valueOf(th2)));
            }
        }
        return this.ZYk;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB() {
        ofl.oJ(new so("pag_plb_res_check") { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.tB.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.QSm.ZYk.oJ ZYk = com.bytedance.sdk.openadsdk.QSm.ZYk.oJ.ZYk(com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("pag_plb_config", "model", ""));
                if (ZYk != null) {
                    tB.this.oJ(ZYk, null, 0);
                }
            }
        });
    }

    public void ZYk() {
        if (jFA.oJ() && com.bytedance.sdk.openadsdk.oq.oJ.oJ("plb_res_enable", 0) == 1) {
            long currentTimeMillis = System.currentTimeMillis() - com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("pag_plb_config", "last_update_time", 0L);
            final String oJ2 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("plb_res", "");
            long oJ3 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("plb_res_fetch_interval", (int) Constants.ONE_HOUR);
            if (currentTimeMillis < ((oJ3 <= 0 || oJ3 > 259200000) ? 3600000L : 3600000L) || TextUtils.isEmpty(oJ2)) {
                return;
            }
            int oJ4 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("plb_res_delay_fetch_time", 0);
            if (oJ4 <= 0) {
                ZYk(oJ2);
            } else {
                WcQ.ZYk().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.tB.3
                    @Override // java.lang.Runnable
                    public void run() {
                        tB.this.ZYk(oJ2);
                    }
                }, oJ4);
            }
        }
    }

    private static String tB(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf("?");
        if (indexOf != -1) {
            str = str.substring(0, indexOf);
        }
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf == -1) {
            return "";
        }
        return "." + str.substring(lastIndexOf + 1);
    }

    public static tB oJ() {
        if (oJ == null) {
            synchronized (tB.class) {
                try {
                    if (oJ == null) {
                        oJ = new tB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(final String str) {
        ofl.oJ(new so("pag_plb_update_config") { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.tB.4
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.component.cFZ.ZYk.ZYk tB = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().tB();
                try {
                    tB.ZYk(com.bytedance.sdk.openadsdk.so.ex.oJ(tB, str));
                    com.bytedance.sdk.component.cFZ.ZYk oJ2 = tB.oJ();
                    if (oJ2 != null && oJ2.ba()) {
                        String ex = oJ2.ex();
                        com.bytedance.sdk.openadsdk.QSm.ZYk.oJ ZYk = com.bytedance.sdk.openadsdk.QSm.ZYk.oJ.ZYk(ex);
                        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("pag_plb_config", "last_update_time", Long.valueOf(System.currentTimeMillis()));
                        if (ZYk != null) {
                            com.bytedance.sdk.openadsdk.QSm.ZYk.oJ ZYk2 = com.bytedance.sdk.openadsdk.QSm.ZYk.oJ.ZYk(com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("pag_plb_config", "model", ""));
                            if (ZYk2 != null && ZYk.oJ().equals(ZYk2.oJ())) {
                                return;
                            }
                            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("pag_plb_config", "model", ex);
                            tB.this.oJ(ZYk, ZYk2, 1);
                        }
                    }
                } catch (Exception e10) {
                    QSm.tB("PlayableResManager", e10.getMessage());
                }
            }
        });
    }

    public void oJ(Map<String, String> map) {
        File[] listFiles;
        if (jFA.oJ() && com.bytedance.sdk.openadsdk.oq.oJ.oJ("plb_res_enable", 0) == 1) {
            String ba2 = ba();
            if (!TextUtils.isEmpty(ba2)) {
                File file = new File(ba2);
                if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                    for (File file2 : listFiles) {
                        if (file2 != null) {
                            try {
                                File oJ2 = com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ(file2);
                                if (oJ2 != null && oJ2.exists()) {
                                    map.put(file2.getName(), oJ2.getAbsolutePath());
                                }
                            } catch (Throwable unused) {
                            }
                        }
                    }
                }
            }
            int oJ3 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("plb_res_delay_fetch_time", 0);
            if (oJ3 <= 0) {
                tB();
            } else {
                WcQ.ZYk().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.tB.1
                    @Override // java.lang.Runnable
                    public void run() {
                        tB.this.tB();
                    }
                }, oJ3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void oJ(com.bytedance.sdk.openadsdk.QSm.ZYk.oJ oJVar, @Nullable com.bytedance.sdk.openadsdk.QSm.ZYk.oJ oJVar2, int i10) {
        List<oJ.C0185oJ> list = null;
        oJ(oJVar.ZYk(), oJVar2 == null ? null : oJVar2.ZYk(), 1, i10);
        List<oJ.C0185oJ> tB = oJVar.tB();
        if (oJVar2 != null) {
            list = oJVar2.tB();
        }
        oJ(tB, list, 2, i10);
    }

    private void oJ(@Nullable List<oJ.C0185oJ> list, @Nullable List<oJ.C0185oJ> list2, int i10, int i11) {
        if (list == null || list.isEmpty()) {
            return;
        }
        String Pfn = i10 == 1 ? Pfn() : ba();
        for (oJ.C0185oJ c0185oJ : list) {
            String oJ2 = c0185oJ.oJ();
            String oJ3 = eZI.oJ(oJ2);
            if (!TextUtils.isEmpty(oJ3)) {
                if (i10 == 1) {
                    oJ3 = oJ3 + tB(oJ2);
                }
                String str = oJ3;
                File file = new File(Pfn, str);
                boolean exists = file.exists();
                if (i11 == 1) {
                    if (exists && list2 != null && list2.contains(c0185oJ)) {
                        com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.tB(file);
                    }
                    oJ(oJ2, Pfn, str, i10, file, exists);
                } else if (!exists) {
                    oJ(oJ2, Pfn, str, i10, file, exists);
                }
            }
        }
    }

    private void oJ(final String str, final String str2, final String str3, final int i10, final File file, final boolean z10) {
        String concat;
        if (this.Pfn.contains(str)) {
            return;
        }
        if (i10 == 2) {
            concat = str3 + ".zip";
        } else {
            concat = z10 ? "tmp".concat(String.valueOf(str3)) : str3;
        }
        this.Pfn.add(str);
        com.bytedance.sdk.component.cFZ.ZYk.oJ ex = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ex();
        ex.ZYk(str);
        ex.oJ(str2, concat);
        final com.bytedance.sdk.component.cFZ.ZYk oJ2 = ex.oJ();
        this.Pfn.remove(str);
        if (oJ2 != null && oJ2.ba() && oJ2.Pfn() != null && oJ2.Pfn().exists()) {
            if (i10 == 2) {
                ofl.ZYk(new so("downloadZip") { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.tB.5
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (z10) {
                                file.delete();
                            }
                            String str4 = str2 + File.separator + str3;
                            LpP.oJ(oJ2.Pfn().getAbsolutePath(), str4);
                            File file2 = new File(str4);
                            File oJ3 = com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ(file2);
                            if (oJ3 != null && oJ3.exists()) {
                                com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().tB().put(file2.getName(), oJ3.getAbsolutePath());
                            }
                            com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.ZYk(file2);
                        } catch (Throwable th2) {
                            QSm.tB("PlayableResManager", "unzip error: ", th2, "tp=", Integer.valueOf(i10), ", url=", str);
                        }
                        try {
                            oJ2.Pfn().delete();
                        } catch (Throwable unused) {
                        }
                    }
                });
                return;
            } else if (z10) {
                file.delete();
                oJ2.Pfn().renameTo(file);
                return;
            } else {
                return;
            }
        }
        File file2 = new File(str2 + File.separator + str3 + ".tmp");
        if (file2.exists()) {
            try {
                file2.delete();
            } catch (Throwable unused) {
            }
        }
    }

    public WebResourceResponse oJ(String str) {
        if (jFA.oJ() && com.bytedance.sdk.openadsdk.oq.oJ.oJ("plb_res_enable", 0) == 1) {
            String oJ2 = eZI.oJ(str);
            if (TextUtils.isEmpty(oJ2)) {
                return null;
            }
            String Pfn = Pfn();
            File file = new File(Pfn, oJ2 + tB(str));
            if (file.exists()) {
                try {
                    String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str));
                    if (TextUtils.isEmpty(mimeTypeFromExtension)) {
                        return null;
                    }
                    return new WebResourceResponse(mimeTypeFromExtension, "UTF-8", new FileInputStream(file));
                } catch (Throwable unused) {
                }
            }
        }
        return null;
    }
}
