package com.bytedance.sdk.openadsdk.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.oq;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.mbridge.msdk.MBridgeConstans;
import java.io.File;
import java.io.FileFilter;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ {
    private final String Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private final Map<cY, Long> f12966ba = Collections.synchronizedMap(new HashMap());
    private final C0194oJ ex;
    @SuppressLint({"StaticFieldLeak"})
    private final Context tB;
    private static final HashMap<String, oJ> oJ = new HashMap<>();
    private static final HashMap<String, C0194oJ> ZYk = new HashMap<>();

    private oJ(Context context, String str) {
        this.tB = context;
        C0194oJ c0194oJ = ZYk.get(str);
        this.ex = c0194oJ == null ? new C0194oJ(str) : c0194oJ;
        this.Pfn = str;
    }

    public String ZYk(String str) {
        try {
            String ZYk2 = this.ex.ZYk(str);
            if (TextUtils.isEmpty(ZYk2)) {
                return null;
            }
            return ZYk2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean ex(String str) {
        return this.ex.cFZ(str);
    }

    public void tB(String str) {
        this.ex.ba(str);
    }

    /* renamed from: com.bytedance.sdk.openadsdk.common.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0194oJ {
        protected final String oJ;
        private final HashSet<String> cFZ = new HashSet<>();
        String ZYk = "material_data";
        String tB = "has_played";
        String ex = "create_time";
        String Pfn = "in_use_process";

        /* renamed from: ba  reason: collision with root package name */
        String f12967ba = "req_id";

        public C0194oJ(String str) {
            this.oJ = TextUtils.isEmpty(str) ? "" : str;
        }

        public boolean Pfn(String str) {
            try {
                return com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ(oJ(str), this.tB, true);
            } catch (Throwable unused) {
                return true;
            }
        }

        public String ZYk(String str) {
            try {
                return com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk(oJ(str), this.ZYk, null);
            } catch (Throwable unused) {
                return null;
            }
        }

        public void ba(String str) {
            try {
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ(oJ(str), this.Pfn, oq.ZYk(com.bytedance.sdk.openadsdk.core.si.oJ()));
                this.cFZ.add(str);
            } catch (Throwable unused) {
            }
        }

        public boolean cFZ(String str) {
            String oJ;
            String ZYk;
            try {
                oJ = oJ(str);
                ZYk = com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk(oJ, this.Pfn, "");
            } catch (Throwable unused) {
            }
            if (TextUtils.isEmpty(ZYk)) {
                return false;
            }
            if (ZYk.equals(oq.ZYk(com.bytedance.sdk.openadsdk.core.si.oJ())) && !this.cFZ.contains(str)) {
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ(oJ, this.Pfn, "");
                return false;
            }
            return true;
        }

        public long ex(String str) {
            try {
                return com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ(oJ(str), this.ex, 0L);
            } catch (Throwable unused) {
                return 0L;
            }
        }

        protected String oJ(String str) {
            if (TextUtils.isEmpty(str)) {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            return this.oJ + "_cache_" + str;
        }

        public void so(String str) {
            try {
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ(oJ(str));
                this.cFZ.remove(str);
            } catch (Throwable unused) {
            }
        }

        public String tB(String str) {
            try {
                return com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk(oJ(str), this.f12967ba, null);
            } catch (Throwable unused) {
                return null;
            }
        }

        public void oJ(AdSlot adSlot, String str, String str2) {
            try {
                String codeId = adSlot.getCodeId();
                String oJ = oJ(codeId);
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ(oJ, this.tB, Boolean.FALSE);
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ(oJ, this.ex, Long.valueOf(System.currentTimeMillis()));
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ(oJ, this.ZYk, str);
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ(oJ, this.Pfn, "");
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ(oJ, this.f12967ba, str2);
                this.cFZ.remove(codeId);
            } catch (Throwable unused) {
            }
        }
    }

    public static oJ oJ(String str) {
        oJ oJVar;
        HashMap<String, oJ> hashMap = oJ;
        oJ oJVar2 = hashMap.get(str);
        if (oJVar2 == null) {
            synchronized (oJ.class) {
                try {
                    oJVar = hashMap.get(str);
                    if (oJVar == null) {
                        oJVar = new oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), str);
                        hashMap.put(str, oJVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return oJVar;
        }
        return oJVar2;
    }

    private String ZYk() {
        return CacheDirFactory.getICacheDir(0).oJ();
    }

    public static void oJ(String str, C0194oJ c0194oJ) {
        ZYk.put(str, c0194oJ);
    }

    public void oJ(String str, cY cYVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String tB = this.ex.tB(str);
        String iPr = cYVar != null ? cYVar.iPr() : "";
        if (TextUtils.isEmpty(tB) || TextUtils.isEmpty(iPr) || tB.equals(iPr)) {
            this.ex.so(str);
        }
    }

    public void oJ() {
        String str;
        File[] listFiles;
        try {
            boolean cFZ = com.bytedance.sdk.openadsdk.core.jFA.cFZ(this.Pfn);
            if (cFZ) {
                str = "files";
            } else {
                str = "shared_prefs";
            }
            File file = new File(this.tB.getDataDir(), str);
            if (file.exists() && file.isDirectory() && (listFiles = file.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.common.oJ.1
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    if (file2 != null) {
                        return file2.getName().contains(oJ.this.Pfn);
                    }
                    return false;
                }
            })) != null) {
                for (File file2 : listFiles) {
                    if (cFZ) {
                        try {
                            com.bytedance.sdk.component.utils.cFZ.tB(file2);
                        } catch (Throwable unused) {
                        }
                    } else {
                        this.tB.deleteSharedPreferences(file2.getName().replace(".xml", ""));
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        try {
            File file3 = new File(ZYk());
            if (file3.exists() && file3.isDirectory()) {
                com.bytedance.sdk.component.utils.cFZ.tB(file3);
            }
        } catch (Throwable unused3) {
        }
    }

    public void oJ(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        cY ba2;
        if ((oJVar != null && oJVar.ba() != null && oJVar.ba().cMS()) || oJVar == null || adSlot == null || !TextUtils.isEmpty(adSlot.getBidAdm()) || (ba2 = oJVar.ba()) == null || ba2.ocG() == 2) {
            return;
        }
        try {
            this.ex.oJ(adSlot, oJVar.WcQ(), oJVar.ZYk());
        } catch (Throwable unused) {
        }
    }

    public boolean oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, boolean z10) {
        if (oJVar == null || !oJVar.Pfn()) {
            return false;
        }
        if (z10) {
            Iterator<cY> it = oJVar.ex().iterator();
            while (it.hasNext()) {
                if (!oJ(it.next())) {
                    it.remove();
                }
            }
        }
        return oJVar.Pfn();
    }

    public String oJ(String str, long j10) {
        long ex = this.ex.ex(str);
        boolean Pfn = this.ex.Pfn(str);
        if (System.currentTimeMillis() - ex >= j10 || Pfn) {
            return null;
        }
        return ZYk(str);
    }

    private boolean oJ(cY cYVar) {
        if (cYVar != null) {
            return Ln.si(cYVar) || cYVar.ib() != null;
        }
        return false;
    }
}
