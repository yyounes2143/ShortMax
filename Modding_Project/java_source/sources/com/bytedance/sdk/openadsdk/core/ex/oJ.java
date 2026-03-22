package com.bytedance.sdk.openadsdk.core.ex;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.Pfn;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.cFZ;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.awB.oJ.ex;
import com.bytedance.sdk.openadsdk.core.BTZ.tB.tB;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.ZYk;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private final List<String> oJ = new CopyOnWriteArrayList();
    private final tB ZYk = new tB(5, 5, true);
    private final ConcurrentHashMap<String, Long> tB = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.ex.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0211oJ {
        private static final oJ oJ = new oJ();
    }

    private boolean tB(String str) {
        return !this.oJ.contains(str);
    }

    public File ZYk(String str) {
        String str2;
        String oJ = Pfn.oJ(str);
        if (oJ == null) {
            return null;
        }
        String name = new File(CacheDirFactory.getRootDir()).getName();
        if (ZYk.tB()) {
            str2 = name + "/music/";
        } else {
            str2 = name + "//music/";
        }
        return cFZ.oJ(si.oJ(), ZYk.tB(), str2, oJ);
    }

    public void tB() {
        com.bytedance.sdk.openadsdk.awB.tB.oJ("music_preload_start", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.ex.oJ.2
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                ex oJ = ex.ZYk().oJ("music_preload_start");
                oJ.oJ();
                return oJ;
            }
        });
    }

    public static oJ oJ() {
        return C0211oJ.oJ;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        List<cY> ex = oJVar.ex();
        if (ex == null || ex.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < ex.size(); i10++) {
            cY cYVar = ex.get(i10);
            if (cYVar != null) {
                oJ(cYVar);
            }
        }
    }

    public void ZYk() {
        File oJ = oJ(si.oJ(), ZYk.tB());
        oJ.getAbsolutePath();
        try {
            this.ZYk.oJ(oJ);
        } catch (IOException e10) {
            QSm.oJ("MusicCacheManager", "trimFileCache fail", e10);
        }
    }

    public InputStream oJ(String str) {
        File ZYk = ZYk(str);
        if (ZYk != null && oJ(ZYk)) {
            try {
                return new FileInputStream(ZYk);
            } catch (Exception e10) {
                QSm.tB("MusicCacheManager", e10.getMessage());
            }
        }
        return null;
    }

    private void oJ(cY cYVar) {
        cY.oJ PdF;
        String jFA;
        if (cYVar == null || (PdF = cYVar.PdF()) == null || (jFA = PdF.jFA()) == null || !jFA.contains("music_url")) {
            return;
        }
        tB();
        String ZYk = PdF.ZYk();
        if (TextUtils.isEmpty(ZYk)) {
            try {
                new JSONObject().put("result", 0);
            } catch (JSONException e10) {
                QSm.tB("MusicCacheManager", e10.getMessage());
            }
            oJ(0, -1L, 10001, "music url string is null");
            return;
        }
        File ZYk2 = ZYk(ZYk);
        if (ZYk2 == null) {
            return;
        }
        ZYk2.getPath();
        if (oJ(ZYk2)) {
            oJ(2, -1L, -1, null);
        } else {
            oJ(cYVar, ZYk, ZYk2);
        }
    }

    private boolean oJ(File file) {
        return file.exists() && file.length() != 0;
    }

    private void oJ(cY cYVar, String str, File file) {
        if (tB(str)) {
            this.tB.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
            com.bytedance.sdk.component.cFZ.ZYk.oJ ex = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ex();
            ex.ZYk(str);
            ex.oJ(file.getParent(), file.getName());
            ex.tB(str);
            this.oJ.add(str);
            ex.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.ex.oJ.1
                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk) {
                    zYk.tB();
                    zYk.oJ();
                    String tB = tBVar.tB();
                    Long l10 = (Long) oJ.this.tB.get(tB);
                    if (zYk.ba() && zYk.Pfn() != null && zYk.Pfn().exists()) {
                        zYk.Pfn();
                        if (l10 != null) {
                            oJ.this.tB.remove(tB);
                            oJ.this.oJ(1, SystemClock.elapsedRealtime() - l10.longValue(), -1, null);
                        }
                        try {
                            cFZ.ZYk(zYk.Pfn());
                        } catch (IOException e10) {
                            QSm.tB("MusicCacheManager", e10.getMessage());
                        }
                    }
                    if (zYk.ba() || l10 == null) {
                        return;
                    }
                    oJ.this.oJ(0, SystemClock.elapsedRealtime() - l10.longValue(), -2, "http response status code isn't 200");
                }

                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                    Long l10 = (Long) oJ.this.tB.get(tBVar.tB());
                    if (l10 != null) {
                        oJ.this.oJ(0, SystemClock.elapsedRealtime() - l10.longValue(), -2, "http response status code isn't 200");
                    }
                }
            });
        }
    }

    private File oJ(Context context, boolean z10) {
        String str;
        String name = new File(CacheDirFactory.getRootDir()).getName();
        if (ZYk.tB()) {
            str = name + "/music";
        } else {
            str = name + "//music";
        }
        return cFZ.oJ(context, z10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final int i10, final long j10, final int i11, final String str) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ("music_preload_finish", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.ex.oJ.3
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("result", i10);
                long j11 = j10;
                if (j11 != -1) {
                    jSONObject.put("load_duration", j11);
                }
                ex ZYk = ex.ZYk().oJ("music_preload_finish").ZYk(jSONObject.toString());
                if (!TextUtils.isEmpty(str)) {
                    ZYk.ZYk(i11);
                    ZYk.ba(str);
                }
                ZYk.oJ();
                return ZYk;
            }
        });
    }

    public void oJ(final boolean z10) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ("music_cache", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.ex.oJ.4
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("result", z10);
                ex ZYk = ex.ZYk().oJ("music_cache").ZYk(jSONObject.toString());
                ZYk.oJ();
                return ZYk;
            }
        });
    }
}
