package com.bytedance.sdk.openadsdk.core.BTZ.tB;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import android.webkit.WebResourceResponse;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.LpP;
import com.bytedance.sdk.component.utils.Pfn;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.cFZ;
import com.bytedance.sdk.openadsdk.QSm.oJ.ex;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.vungle.ads.internal.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private static volatile oJ oJ;
    private String ZYk;
    private final Map<cY, ZYk> tB = new ConcurrentHashMap();
    private final Map<String, JSONObject> ex = new ConcurrentHashMap();
    private final AtomicBoolean Pfn = new AtomicBoolean(false);

    /* renamed from: ba  reason: collision with root package name */
    private final Set<String> f13088ba = Collections.synchronizedSet(new HashSet());
    private final ConcurrentHashMap<String, com.bytedance.sdk.component.cFZ.ZYk.oJ> cFZ = new ConcurrentHashMap<>();

    /* renamed from: so  reason: collision with root package name */
    private final Map<String, String> f13089so = new ConcurrentHashMap();

    /* loaded from: classes3.dex */
    private static class ZYk {
        long ZYk;
        long ex;
        long oJ;
        long tB;

        private ZYk() {
        }

        public long ZYk() {
            return this.ex - this.tB;
        }

        public ZYk ex(long j10) {
            this.ex = j10;
            return this;
        }

        public long oJ() {
            return this.ZYk - this.oJ;
        }

        public ZYk tB(long j10) {
            this.tB = j10;
            return this;
        }

        public ZYk ZYk(long j10) {
            this.ZYk = j10;
            return this;
        }

        public ZYk oJ(long j10) {
            this.oJ = j10;
            return this;
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0201oJ {
        void oJ(boolean z10);
    }

    private oJ() {
    }

    private boolean Pfn(File file) {
        return file != null && file.exists() && file.isFile() && file.canRead();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File ex(File file) {
        File file2 = new File(file, "tt_open_ad_sdk_check_res.dat");
        return Pfn(file2) ? file2 : new File(file, "tt_open_ad_sdk_check_res.dat");
    }

    public static void tB(File file) {
        try {
            if (!file.exists() || file.setLastModified(System.currentTimeMillis())) {
                return;
            }
            file.renameTo(file);
            file.lastModified();
        } catch (Throwable unused) {
        }
    }

    public void ZYk() {
        if (this.Pfn.get()) {
            return;
        }
        ofl.oJ(new so("PlayableCache_init") { // from class: com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                File[] listFiles;
                try {
                    String ex = oJ.this.ex();
                    if (!TextUtils.isEmpty(ex)) {
                        File file = new File(ex);
                        if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                            for (File file2 : listFiles) {
                                if (file2 != null) {
                                    try {
                                        File oJ2 = oJ.oJ(file2);
                                        if (oJ2 != null && oJ2.exists()) {
                                            oJ.this.f13089so.put(file2.getName(), oJ2.getAbsolutePath());
                                        }
                                        oJ.this.oJ(oJ.this.ex(oJ2), true);
                                    } catch (Throwable unused) {
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable unused2) {
                }
                com.bytedance.sdk.openadsdk.QSm.oJ.tB.oJ().oJ(oJ.this.f13089so);
                oJ.this.Pfn.set(true);
            }
        });
    }

    private String Pfn() {
        if (TextUtils.isEmpty(this.ZYk)) {
            try {
                File file = new File(si.oJ().getCacheDir(), "playable");
                if (!file.exists()) {
                    file.mkdirs();
                }
                this.ZYk = file.getAbsolutePath();
            } catch (Throwable th2) {
                QSm.tB("PlayableCache", "init root path error: ".concat(String.valueOf(th2)));
            }
        }
        return this.ZYk;
    }

    public static void ZYk(File file) {
        tB(file);
        try {
            jFA.ZYk().WcQ().oJ(file);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String ex() {
        File file = new File(Pfn(), "games");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public static oJ oJ() {
        if (oJ == null) {
            synchronized (oJ.class) {
                try {
                    if (oJ == null) {
                        oJ = new oJ();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public void ZYk(cY cYVar) {
        if (cYVar == null || cYVar.ib() == null || TextUtils.isEmpty(cYVar.ib().PiB()) || !com.bytedance.sdk.openadsdk.oq.oJ.oJ("can_cancel_playable", false)) {
            return;
        }
        com.bytedance.sdk.component.cFZ.ZYk.oJ oJVar = this.cFZ.get(cYVar.ib().PiB());
        if (oJVar != null) {
            oJVar.ZYk();
        }
    }

    public Map<String, String> tB() {
        return this.f13089so;
    }

    public boolean oJ(cY cYVar) {
        if (this.Pfn.get() && cYVar != null && cYVar.ib() != null && cYVar.ib().PiB() != null) {
            try {
                if (!TextUtils.isEmpty(this.f13089so.get(Pfn.oJ(cYVar.ib().PiB())))) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject oJ(File file, boolean z10) {
        byte[] ex;
        String ZYk2;
        try {
            if (!Pfn(file) || (ex = cFZ.ex(file)) == null || ex.length <= 0) {
                return null;
            }
            if (TextUtils.equals(file.getName(), "tt_open_ad_sdk_check_res.dat")) {
                ZYk2 = com.bytedance.sdk.component.utils.oJ.tB(new String(ex));
            } else {
                ZYk2 = com.bytedance.sdk.component.ex.oJ.ZYk(new String(ex), com.bytedance.sdk.openadsdk.core.oJ.ZYk());
            }
            if (TextUtils.isEmpty(ZYk2)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(ZYk2);
            if (z10 && jSONObject.length() > 0) {
                this.ex.put(file.getParentFile().getName(), jSONObject);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public WebResourceResponse oJ(String str, String str2, String str3) {
        WebResourceResponse oJ2;
        String str4;
        File oJ3;
        try {
            oJ2 = com.bytedance.sdk.openadsdk.QSm.oJ.tB.oJ().oJ(str3);
        } catch (Throwable th2) {
            QSm.oJ("PlayableCache", "playable intercept error: ", th2);
        }
        if (oJ2 != null) {
            return oJ2;
        }
        if (this.Pfn.get() && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            try {
                if ((str3.startsWith("http://") || str3.startsWith("https://")) && str3.contains("?")) {
                    str3 = str3.split("\\?")[0];
                    if (str3.endsWith(DomExceptionUtils.SEPARATOR)) {
                        str3 = str3.substring(0, str3.length() - 1);
                    }
                }
                str4 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str3));
            } catch (Throwable unused) {
                str4 = null;
            }
            if (TextUtils.isEmpty(str4)) {
                return null;
            }
            String oJ4 = Pfn.oJ(str);
            if (TextUtils.isEmpty(oJ4)) {
                return null;
            }
            String str5 = this.f13089so.get(oJ4);
            if (!TextUtils.isEmpty(str5)) {
                oJ3 = new File(str5);
            } else {
                oJ3 = oJ(new File(ex(), oJ4));
                if (oJ3 != null && oJ3.exists()) {
                    this.f13089so.put(oJ4, oJ3.getAbsolutePath());
                }
            }
            if (oJ3 != null && oJ3.exists()) {
                String oJ5 = oJ(str2);
                if (TextUtils.isEmpty(oJ5)) {
                    return null;
                }
                String replace = str3.replace(oJ5, "");
                if (!TextUtils.isEmpty(replace) && !replace.startsWith("https://") && !replace.startsWith("http://")) {
                    File file = new File(oJ3, replace);
                    if (file.exists() && oJ(oJ4, replace, file) && file.getCanonicalPath().startsWith(oJ3.getCanonicalPath())) {
                        return new WebResourceResponse(str4, "utf-8", new FileInputStream(file));
                    }
                }
            }
            return null;
        }
        return null;
    }

    public static File oJ(File file) {
        File[] listFiles;
        if (file != null && file.isDirectory() && (listFiles = file.listFiles()) != null && listFiles.length != 0) {
            for (File file2 : listFiles) {
                if (file2 != null && file2.isFile() && Constants.AD_INDEX_FILE_NAME.equals(file2.getName())) {
                    return file;
                }
            }
            for (File file3 : listFiles) {
                if (file3 != null && file3.isDirectory()) {
                    return oJ(file3);
                }
            }
        }
        return null;
    }

    private String oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("\\?");
        if (split != null && split.length == 2) {
            String str2 = split[0];
            if (str2 != null && str2.endsWith(DomExceptionUtils.SEPARATOR)) {
                str = str.substring(0, split.length - 1);
            }
            String str3 = split[0];
            if (str3 != null && str3.endsWith(Constants.AD_INDEX_FILE_NAME)) {
                str = split[0];
            }
        }
        return str.replace(Constants.AD_INDEX_FILE_NAME, "");
    }

    private boolean oJ(String str, String str2, File file) {
        if (file != null && file.exists()) {
            JSONObject jSONObject = this.ex.get(str);
            if (jSONObject == null) {
                return true;
            }
            String optString = jSONObject.optString(str2);
            if (optString != null && optString.equalsIgnoreCase(Pfn.oJ(file))) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"[ByDesign4.2]BadDomainNameVerifier"})
    public void oJ(final cY cYVar, final InterfaceC0201oJ interfaceC0201oJ) {
        File file;
        if (ex.oJ().ZYk() && cYVar != null && Ln.ba(cYVar) && cYVar.BHY() != null && !TextUtils.isEmpty(cYVar.BHY().getBidAdm())) {
            com.bytedance.sdk.openadsdk.core.BTZ.tB.ZYk.oJ(cYVar, -705, "server bidding pre render");
            oJ(interfaceC0201oJ, false);
        } else if (cYVar != null && cYVar.ib() != null && !TextUtils.isEmpty(cYVar.ib().PiB())) {
            final String PiB = cYVar.ib().PiB();
            if (this.f13088ba.contains(PiB)) {
                return;
            }
            this.tB.put(cYVar, new ZYk().oJ(System.currentTimeMillis()));
            com.bytedance.sdk.openadsdk.core.BTZ.tB.ZYk.oJ(cYVar);
            String oJ2 = Pfn.oJ(PiB);
            final File file2 = new File(ex(), oJ2);
            String str = this.f13089so.get(oJ2);
            if (TextUtils.isEmpty(str)) {
                file = oJ(file2);
                if (file != null && file.exists()) {
                    this.f13089so.put(oJ2, file.getAbsolutePath());
                }
            } else {
                file = new File(str);
            }
            if (file != null && file.exists()) {
                com.bytedance.sdk.openadsdk.core.BTZ.tB.ZYk.oJ(cYVar, -702, (String) null);
                tB(file2);
                this.tB.remove(cYVar);
                oJ(interfaceC0201oJ, true);
                return;
            }
            try {
                cFZ.tB(file2);
            } catch (Throwable unused) {
            }
            this.f13088ba.add(PiB);
            String Pfn = Pfn();
            File file3 = new File(Pfn, oJ2 + ".zip");
            com.bytedance.sdk.component.cFZ.ZYk.oJ ex = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ex();
            this.cFZ.put(PiB, ex);
            ex.ZYk(PiB);
            ex.oJ(file3.getParent(), file3.getName());
            ex.oJ(7);
            ex.oJ("playable_download");
            ex.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.2
                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, final com.bytedance.sdk.component.cFZ.ZYk zYk) {
                    oJ.this.f13088ba.remove(PiB);
                    oJ.this.cFZ.remove(PiB);
                    final ZYk zYk2 = (ZYk) oJ.this.tB.remove(cYVar);
                    if (zYk2 != null) {
                        zYk2.ZYk(System.currentTimeMillis());
                    }
                    if (zYk.ba() && zYk.Pfn() != null && zYk.Pfn().exists()) {
                        ofl.ZYk(new so("downloadZip") { // from class: com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                boolean z10;
                                long j10;
                                long j11;
                                try {
                                    ZYk zYk3 = zYk2;
                                    if (zYk3 != null) {
                                        zYk3.tB(System.currentTimeMillis());
                                    }
                                    LpP.oJ(zYk.Pfn().getAbsolutePath(), file2.getAbsolutePath());
                                    ZYk zYk4 = zYk2;
                                    if (zYk4 != null) {
                                        zYk4.ex(System.currentTimeMillis());
                                    }
                                    ZYk zYk5 = zYk2;
                                    if (zYk5 != null) {
                                        j10 = zYk5.oJ();
                                        j11 = zYk2.ZYk();
                                    } else {
                                        j10 = 0;
                                        j11 = 0;
                                    }
                                    com.bytedance.sdk.openadsdk.core.BTZ.tB.ZYk.oJ(cYVar, j10, j11);
                                    oJ.ZYk(file2);
                                    z10 = true;
                                    try {
                                        File oJ3 = oJ.oJ(file2);
                                        if (oJ3 != null && oJ3.exists()) {
                                            oJ.this.f13089so.put(file2.getName(), oJ3.getAbsolutePath());
                                        }
                                        oJ.this.oJ(oJ.this.ex(oJ3), true);
                                    } catch (Throwable unused2) {
                                    }
                                } catch (Throwable th2) {
                                    QSm.oJ("PlayableCache", "unzip error: ", th2);
                                    com.bytedance.sdk.openadsdk.core.BTZ.tB.ZYk.oJ(cYVar, -704, th2.getMessage());
                                    z10 = false;
                                }
                                try {
                                    zYk.Pfn().delete();
                                } catch (Throwable unused3) {
                                }
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                oJ.this.oJ(interfaceC0201oJ, z10);
                            }
                        });
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.BTZ.tB.ZYk.oJ(cYVar, zYk.oJ() != 0 ? zYk.oJ() : -700, (String) null);
                    oJ.this.oJ(interfaceC0201oJ, false);
                }

                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                    oJ.this.f13088ba.remove(PiB);
                    oJ.this.cFZ.remove(PiB);
                    oJ.this.tB.remove(cYVar);
                    com.bytedance.sdk.openadsdk.core.BTZ.tB.ZYk.oJ(cYVar, -700, iOException.getMessage());
                    oJ.this.oJ(interfaceC0201oJ, false);
                }
            });
        } else {
            com.bytedance.sdk.openadsdk.core.BTZ.tB.ZYk.oJ(cYVar, -701, (String) null);
            oJ(interfaceC0201oJ, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final InterfaceC0201oJ interfaceC0201oJ, final boolean z10) {
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.3
            @Override // java.lang.Runnable
            public void run() {
                InterfaceC0201oJ interfaceC0201oJ2 = interfaceC0201oJ;
                if (interfaceC0201oJ2 != null) {
                    interfaceC0201oJ2.oJ(z10);
                }
            }
        });
    }
}
