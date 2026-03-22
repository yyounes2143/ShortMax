package com.bytedance.sdk.openadsdk.core.dLZ.tB;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.cFZ;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.dLZ.oJ.ZYk;
import com.bytedance.sdk.openadsdk.core.model.Pfn;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex {
    public static final List<String> oJ = Arrays.asList(MimeTypes.VIDEO_MP4, MimeTypes.VIDEO_H263);
    private static final ConcurrentHashMap<String, Boolean> ZYk = new ConcurrentHashMap<>();

    private static double ZYk(String str) {
        if (str == null) {
            str = "";
        }
        int hashCode = str.hashCode();
        if (hashCode != -1664118616) {
            return (hashCode == 1331848029 && str.equals(MimeTypes.VIDEO_MP4)) ? 1.5d : 1.0d;
        }
        str.equals(MimeTypes.VIDEO_H263);
        return 1.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(cY cYVar, File file, Pfn.oJ oJVar, long j10) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.Pfn pfn = new com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.Pfn(si.oJ(), 0, 0);
        com.bytedance.sdk.openadsdk.core.dLZ.oJ oJ2 = pfn.oJ((String) null, file, new ArrayList());
        if (oJ2 != null) {
            oJVar.oJ(oJ2.oJ());
            oJVar.oJ(oJ2.PiB());
        }
        ZYk(cYVar, oJVar.tB(), true, j10);
        oJ(cYVar, "vast_url", oJ2, elapsedRealtime, pfn.f13137ba);
        ZYk();
    }

    public static double oJ(int i10, double d10, int i11, int i12, int i13, @Nullable String str) {
        double oJ2 = oJ(i10, d10, i11, i12);
        return ZYk(str) * (1.0d / ((oJ2 + 1.0d) + oJ(i13)));
    }

    private static double oJ(int i10, double d10, int i11, int i12) {
        return (d10 > 0.0d ? Math.abs(d10 - (i12 > 0 ? i11 / i12 : 0.0d)) : 0.0d) + (i10 > 0 ? Math.abs((i10 - i11) / i10) : 0.0d);
    }

    private static double oJ(int i10) {
        int max = Math.max(i10, 0);
        if (700 > max || max > 1500) {
            return Math.min(Math.abs(700 - max) / 700.0f, Math.abs(1500 - max) / 1500.0f);
        }
        return 0.0d;
    }

    private static void ZYk() {
        File[] listFiles;
        File oJ2 = oJ(si.oJ(), com.bytedance.sdk.openadsdk.multipro.ZYk.tB());
        if (oJ2 == null || (listFiles = oJ2.listFiles()) == null || listFiles.length <= 5) {
            return;
        }
        Arrays.sort(listFiles, new Comparator<File>() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.2
            @Override // java.util.Comparator
            /* renamed from: oJ */
            public int compare(File file, File file2) {
                if (file.lastModified() < file2.lastModified()) {
                    return -1;
                }
                if (file.lastModified() > file2.lastModified()) {
                    return 1;
                }
                return 0;
            }
        });
        int length = listFiles.length - 5;
        for (int i10 = 0; i10 < listFiles.length && i10 < length; i10++) {
            File file = listFiles[i10];
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public static void oJ(cY cYVar) {
        Pfn qr2;
        ArrayList<Pfn.oJ> oJ2;
        if (cYVar == null || !Pfn.oJ(cYVar) || (qr2 = cYVar.qr()) == null || (oJ2 = qr2.oJ()) == null || oJ2.isEmpty()) {
            return;
        }
        Iterator<Pfn.oJ> it = oJ2.iterator();
        while (it.hasNext()) {
            Pfn.oJ next = it.next();
            String ex = next.ex();
            if (!TextUtils.isEmpty(ex)) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.Pfn pfn = new com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.Pfn(si.oJ(), 0, 0);
                com.bytedance.sdk.openadsdk.core.dLZ.oJ oJ3 = pfn.oJ(ex, (File) null, new ArrayList());
                if (oJ3 != null) {
                    next.oJ(oJ3.oJ());
                    next.oJ(oJ3.PiB());
                }
                oJ(cYVar, "vast_content", oJ3, elapsedRealtime, pfn.f13137ba);
            }
            oJ(cYVar, next);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(cY cYVar, final String str, final boolean z10, final long j10) {
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), cYVar, cYVar.ex(), "track_url_request_result", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.3
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("url", str);
                    jSONObject2.put("duration", j10);
                    jSONObject2.put("success", z10);
                    jSONObject.put("ad_extra_data", jSONObject2);
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void ZYk(final cY cYVar, final String str, final com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar, final long j10, final ZYk.oJ oJVar2) {
        com.bytedance.sdk.openadsdk.ex.tB.oJ(new so("vast_parser2") { // from class: com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("duration", SystemClock.elapsedRealtime() - j10);
                    com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar3 = oJVar;
                    String str2 = "load_vast_fail";
                    if (oJVar3 != null) {
                        if (!TextUtils.isEmpty(oJVar3.jFA()) && !TextUtils.isEmpty(oJVar.ba()) && oJVar.so() > 0.0d) {
                            str2 = "load_vast_success";
                        }
                        jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, -3);
                    } else {
                        ZYk.oJ oJVar4 = oJVar2;
                        if (oJVar4 != null) {
                            jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, oJVar4.oJ);
                        }
                    }
                    com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, str, str2, jSONObject);
                    com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar5 = oJVar;
                    if (oJVar5 != null && oJVar5.ZYk() != null && TextUtils.isEmpty(oJVar.ZYk().ba())) {
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            jSONObject2.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, 1000);
                            jSONObject2.put(InMobiNetworkValues.DESCRIPTION, "1000:Image url is null");
                        } catch (Throwable unused) {
                        }
                        com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, str, "load_vast_icon_fail", jSONObject2);
                        oJVar.oJ((com.bytedance.sdk.openadsdk.core.dLZ.ZYk) null);
                    }
                } catch (Exception unused2) {
                }
            }
        });
    }

    public static void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        List<cY> ex = oJVar.ex();
        if (ex != null) {
            for (cY cYVar : ex) {
                oJ(cYVar);
            }
        }
    }

    private static void oJ(final cY cYVar, final Pfn.oJ oJVar) {
        File oJ2;
        String tB = oJVar.tB();
        if (TextUtils.isEmpty(tB)) {
            return;
        }
        final String str = tB + cYVar.iPr();
        ConcurrentHashMap<String, Boolean> concurrentHashMap = ZYk;
        if (concurrentHashMap.containsKey(str) || (oJ2 = oJ(str)) == null) {
            return;
        }
        if (oJ2.exists() && oJ2.length() > 0) {
            ZYk(cYVar, oJ2, oJVar, 0L);
            return;
        }
        concurrentHashMap.put(str, Boolean.TRUE);
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        com.bytedance.sdk.component.cFZ.ZYk.oJ ex = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ex();
        ex.ZYk(tB);
        ex.oJ(oJ2.getParent(), oJ2.getName());
        ex.tB(tB);
        ex.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.1
            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk) {
                if (zYk.ba() && zYk.Pfn() != null && zYk.Pfn().exists()) {
                    ex.ZYk(cYVar, zYk.Pfn(), Pfn.oJ.this, SystemClock.elapsedRealtime() - elapsedRealtime);
                } else {
                    ex.ZYk(cYVar, Pfn.oJ.this.tB(), false, SystemClock.elapsedRealtime() - elapsedRealtime);
                }
                ex.ZYk.remove(str);
            }

            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                ex.ZYk(cYVar, Pfn.oJ.this.tB(), false, SystemClock.elapsedRealtime() - elapsedRealtime);
                ex.ZYk.remove(str);
            }
        });
    }

    public static File oJ(String str) {
        String oJ2 = com.bytedance.sdk.component.utils.Pfn.oJ(str);
        if (oJ2 == null) {
            return null;
        }
        String name = new File(CacheDirFactory.getRootDir()).getName();
        return cFZ.oJ(si.oJ(), com.bytedance.sdk.openadsdk.multipro.ZYk.tB(), name + "/vast/", oJ2);
    }

    private static File oJ(Context context, boolean z10) {
        String name = new File(CacheDirFactory.getRootDir()).getName();
        return cFZ.oJ(context, z10, name + "/vast/");
    }

    public static void oJ(final cY cYVar, final String str, final com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar, final long j10, final ZYk.oJ oJVar2) {
        com.bytedance.sdk.openadsdk.ex.tB.oJ(new so("vast_parser1") { // from class: com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("duration", SystemClock.elapsedRealtime() - j10);
                    jSONObject.put("from", str);
                    if (oJVar != null) {
                        cY cYVar2 = cYVar;
                        com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar2, cYVar2.ex(), "track_load_vast_success", jSONObject);
                        return;
                    }
                    ZYk.oJ oJVar3 = oJVar2;
                    if (oJVar3 != null) {
                        jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, oJVar3.oJ);
                    }
                    cY cYVar3 = cYVar;
                    com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar3, cYVar3.ex(), "track_load_vast_fail", jSONObject);
                } catch (Exception unused) {
                }
            }
        });
    }
}
