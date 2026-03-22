package com.bytedance.sdk.openadsdk.ba;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.so;
import com.bytedance.sdk.openadsdk.awB.oJ.ex;
import com.bytedance.sdk.openadsdk.awB.tB;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.UN;
import com.bytedance.vodsetting.Module;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private static volatile ZYk oJ;
    private final ConcurrentHashMap<String, com.bytedance.sdk.openadsdk.eZI.oJ> ZYk = new ConcurrentHashMap<>();
    private com.bytedance.sdk.openadsdk.eZI.oJ tB = null;
    private volatile boolean ex = false;
    private volatile HandlerThread Pfn = null;

    /* renamed from: ba  reason: collision with root package name */
    private volatile Handler f12949ba = null;
    private String cFZ = "";

    /* renamed from: so  reason: collision with root package name */
    private int f12950so = 0;
    private volatile long jFA = 0;
    private final Runnable kkU = new Runnable() { // from class: com.bytedance.sdk.openadsdk.ba.ZYk.6
        @Override // java.lang.Runnable
        public void run() {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                if (oJ.oJ().Pfn()) {
                    Set<String> keySet = ZYk.this.ZYk.keySet();
                    if (keySet.size() > ZYk.this.f12950so) {
                        ZYk.this.f12950so = keySet.size();
                    }
                    HashSet hashSet = new HashSet(5);
                    ArrayList arrayList = new ArrayList(keySet.size());
                    arrayList.addAll(ZYk.this.ZYk.values());
                    Collections.sort(arrayList);
                    for (int i10 = 0; i10 < arrayList.size() && i10 < 5; i10++) {
                        hashSet.add(((com.bytedance.sdk.openadsdk.eZI.oJ) arrayList.get(i10)).ZYk());
                    }
                    try {
                        for (String str : keySet) {
                            com.bytedance.sdk.openadsdk.eZI.oJ oJVar = (com.bytedance.sdk.openadsdk.eZI.oJ) ZYk.this.ZYk.get(str);
                            if (oJVar != null) {
                                JSONObject oJ2 = oJVar.oJ(jSONObject2);
                                if (hashSet.contains(str)) {
                                    jSONObject.put(str, oJ2);
                                }
                            }
                        }
                        jSONObject.put(Module.COMMON, jSONObject2);
                    } catch (JSONException e10) {
                        QSm.tB(e10.getMessage(), new Object[0]);
                    }
                } else {
                    try {
                        if (ZYk.this.tB != null) {
                            jSONObject.put(Module.COMMON, ZYk.this.tB.oJ(jSONObject2));
                        }
                    } catch (JSONException e11) {
                        QSm.tB(e11.getMessage(), new Object[0]);
                    }
                }
                ZYk.this.cFZ = jSONObject.toString();
                ZYk zYk = ZYk.this;
                zYk.oJ(zYk.kkU, oJ.oJ().ex());
            } catch (OutOfMemoryError e12) {
                QSm.tB(e12.getMessage(), new Object[0]);
            }
        }
    };

    private ZYk() {
    }

    private void Pfn() {
        if (!this.ex) {
            this.ex = true;
            oJ(this.kkU, oJ.oJ().ex());
        }
    }

    private void ex() {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.jFA > 10000) {
            tB.oJ("track_feature_result", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.ba.ZYk.1
                @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                @Nullable
                public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                    ZYk.this.jFA = elapsedRealtime;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("msg", String.valueOf(ZYk.this.f12950so));
                    return ex.ZYk().oJ("track_feature_result").ZYk(jSONObject.toString());
                }
            });
        }
    }

    private Handler tB() {
        if (this.Pfn != null && this.Pfn.isAlive()) {
            if (this.f12949ba == null) {
                synchronized (WcQ.class) {
                    try {
                        if (this.f12949ba == null) {
                            this.f12949ba = new Handler(this.Pfn.getLooper());
                        }
                    } finally {
                    }
                }
            }
        } else {
            synchronized (WcQ.class) {
                try {
                    if (this.Pfn != null) {
                        if (!this.Pfn.isAlive()) {
                        }
                    }
                    this.Pfn = so.oJ("csj_feature", -1);
                    this.f12949ba = new Handler(this.Pfn.getLooper());
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f12949ba;
    }

    public void ZYk() {
        try {
            if (oJ.oJ().tB()) {
                oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ba.ZYk.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (oJ.oJ().Pfn()) {
                            for (String str : ZYk.this.ZYk.keySet()) {
                                com.bytedance.sdk.openadsdk.eZI.oJ oJVar = (com.bytedance.sdk.openadsdk.eZI.oJ) ZYk.this.ZYk.get(str);
                                if (oJVar != null) {
                                    oJVar.oJ();
                                }
                            }
                        } else if (ZYk.this.tB != null) {
                            ZYk.this.tB.oJ();
                        }
                    }
                });
            }
        } catch (OutOfMemoryError e10) {
            QSm.tB(e10.getMessage(), new Object[0]);
        }
    }

    private void oJ(Runnable runnable) {
        if (UN.oJ || runnable == null) {
            return;
        }
        try {
            tB().post(runnable);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(Runnable runnable, long j10) {
        if (UN.oJ || runnable == null) {
            return;
        }
        try {
            tB().postDelayed(runnable, j10);
        } catch (Throwable unused) {
        }
    }

    public static ZYk oJ() {
        if (oJ == null) {
            synchronized (com.bytedance.sdk.openadsdk.core.tB.class) {
                try {
                    if (oJ == null) {
                        oJ = new ZYk();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public void oJ(JSONObject jSONObject) {
        if (oJ.oJ().tB()) {
            try {
                jSONObject.put("feature_data", this.cFZ);
                ex();
            } catch (JSONException e10) {
                QSm.tB(e10.getMessage(), new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(@NonNull String str, @NonNull String str2, String str3) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && oJ.oJ().tB()) {
                Pfn();
                if (oJ.oJ().Pfn()) {
                    com.bytedance.sdk.openadsdk.eZI.oJ oJVar = this.ZYk.get(str2);
                    if (oJVar == null) {
                        oJVar = new com.bytedance.sdk.openadsdk.eZI.oJ(str2);
                    }
                    oJVar.oJ(str, str3);
                    this.ZYk.put(str2, oJVar);
                    return;
                }
                if (this.tB == null) {
                    this.tB = new com.bytedance.sdk.openadsdk.eZI.oJ(str2);
                }
                this.tB.oJ(str, str3);
            }
        } catch (OutOfMemoryError e10) {
            QSm.tB(e10.getMessage(), new Object[0]);
        }
    }

    public void oJ(@NonNull final String str, @NonNull final String str2, final String str3, String str4) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !oJ.oJ().tB()) {
            return;
        }
        if (!"show".equals(str) && !"click".equals(str) && !"dislike".equals(str)) {
            if (oJ.oJ().Ry()) {
                if (TextUtils.isEmpty(str4)) {
                    return;
                }
                if (!"rewarded_video".equals(str4) && !"fullscreen_interstitial_ad".equals(str4) && !"open_ad".equals(str4)) {
                    return;
                }
            }
            if ("feed_play".equals(str) || "feed_pause".equals(str) || "feed_continue".equals(str) || "feed_over".equals(str) || "feed_break".equals(str) || "play_error".equals(str)) {
                oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ba.ZYk.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ZYk.this.oJ(str, str2, str3);
                    }
                });
                return;
            }
            return;
        }
        oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ba.ZYk.2
            @Override // java.lang.Runnable
            public void run() {
                ZYk.this.oJ(str, str2, str3);
            }
        });
    }

    public void oJ(@NonNull final String str, final cY cYVar) {
        if (!TextUtils.isEmpty(str) && oJ.oJ().tB() && cY.Pfn(cYVar)) {
            if (!oJ.oJ().Ry() || cYVar.TxP() == 8 || cYVar.TxP() == 7 || cYVar.TxP() == 3) {
                if ("videoPercent30".equals(str) || "videoForceBreak".equals(str)) {
                    oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ba.ZYk.4
                        @Override // java.lang.Runnable
                        public void run() {
                            String cdg = cYVar.cdg();
                            String iPr = cYVar.iPr();
                            if (!TextUtils.isEmpty(cdg)) {
                                ZYk.this.oJ(str, cdg, iPr);
                            }
                        }
                    });
                }
            }
        }
    }

    public void oJ(@NonNull final String str, final cY cYVar, final String str2) {
        if (TextUtils.isEmpty(str) || !oJ.oJ().tB()) {
            return;
        }
        if ("landingStart".equals(str) || "landingFinish".equals(str) || "landingContinue".equals(str) || "landingPause".equals(str)) {
            oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ba.ZYk.5
                @Override // java.lang.Runnable
                public void run() {
                    cY cYVar2 = cYVar;
                    if (cYVar2 != null && !TextUtils.isEmpty(cYVar2.cdg())) {
                        ZYk zYk = ZYk.this;
                        String str3 = str;
                        String cdg = cYVar.cdg();
                        zYk.oJ(str3, cdg, cYVar.iPr() + str2);
                    }
                }
            });
        }
    }
}
