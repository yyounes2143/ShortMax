package com.bytedance.sdk.openadsdk.core.dLZ.ZYk;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.HL;
import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.ZYk;
import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    private EnumC0209tB Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f13126ba;
    private final boolean ex;
    private final String tB;
    private static final Map<String, ZYk> oJ = new ConcurrentHashMap();
    private static final AtomicBoolean ZYk = new AtomicBoolean(false);

    /* loaded from: classes3.dex */
    public static class ZYk {
        String ZYk;
        final cY oJ;
        float tB;

        public ZYk(String str, cY cYVar) {
            this(str, cYVar, -1.0f);
        }

        public String toString() {
            return super.toString();
        }

        public ZYk(String str, cY cYVar, float f10) {
            this.ZYk = str;
            this.oJ = cYVar;
            this.tB = f10;
        }
    }

    /* loaded from: classes3.dex */
    public static class oJ {
        private final String oJ;
        private EnumC0209tB ZYk = EnumC0209tB.TRACKING_URL;
        private boolean tB = false;

        public oJ(String str) {
            this.oJ = str;
        }

        public oJ oJ(boolean z10) {
            this.tB = z10;
            return this;
        }

        public tB oJ() {
            return new tB(this.oJ, this.ZYk, Boolean.valueOf(this.tB));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB$tB  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public enum EnumC0209tB {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    static {
        HL.oJ(new HL.oJ() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.1
            @Override // com.bytedance.sdk.component.utils.HL.oJ
            public void oJ(Context context, Intent intent, boolean z10, int i10) {
                if (i10 != 0 && tB.oJ.size() > 0) {
                    tB.ZYk();
                }
            }
        }, si.oJ());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public tB(String str, EnumC0209tB enumC0209tB, Boolean bool) {
        this.tB = str;
        this.Pfn = enumC0209tB;
        this.ex = bool.booleanValue();
    }

    public static void ZYk(cY cYVar, @NonNull List<tB> list, @Nullable com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ oJVar, @Nullable long j10, @Nullable String str, String str2) {
        oJ(cYVar, list, oJVar, j10, str, null, str2);
    }

    public static List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ> tB(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                if (optJSONObject != null) {
                    arrayList.add(new oJ.C0208oJ(optJSONObject.optString("content"), optJSONObject.optLong("trackingMilliseconds", 0L)).oJ());
                }
            }
        }
        return arrayList;
    }

    public boolean Pfn() {
        return this.f13126ba;
    }

    public boolean ex() {
        return this.ex;
    }

    public void m_() {
        this.f13126ba = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk() {
        if (ZYk.compareAndSet(false, true)) {
            Map<String, ZYk> map = oJ;
            HashSet<Map.Entry> hashSet = new HashSet(map.entrySet());
            map.clear();
            for (Map.Entry entry : hashSet) {
                if (entry != null) {
                    oJ((String) entry.getKey(), (ZYk) entry.getValue(), true);
                }
            }
            ZYk.set(false);
        }
    }

    public static List<String> oJ(cY cYVar, @NonNull List<tB> list, @Nullable com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ oJVar, @Nullable long j10, @Nullable String str, String str2) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (tB tBVar : list) {
            if (tBVar != null && (!tBVar.Pfn() || tBVar.ex())) {
                arrayList.add(tBVar.tB());
                tBVar.m_();
            }
        }
        return arrayList.isEmpty() ? arrayList : new com.bytedance.sdk.openadsdk.core.dLZ.tB.tB(arrayList, cYVar).oJ(oJVar).oJ(j10).ZYk(str).oJ(str2).oJ();
    }

    public String tB() {
        return this.tB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(final boolean z10, final String str, final String str2, final ZYk zYk, final String str3, final boolean z11) {
        cY cYVar;
        if (zYk == null || (cYVar = zYk.oJ) == null) {
            return;
        }
        final boolean Br = cYVar.Br();
        final String str4 = Br ? "dsp_track_link_result" : "track_link_result";
        com.bytedance.sdk.openadsdk.ex.tB.oJ(new so(str4) { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.3
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("type", zYk.ZYk);
                    jSONObject.put("success", z10);
                    jSONObject.put("url", str3);
                    if (z11) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("retry", true);
                        jSONObject.put("pag_json_data", jSONObject2.toString());
                    }
                    if (Br) {
                        if (!TextUtils.isEmpty(str)) {
                            jSONObject.put(InMobiNetworkValues.DESCRIPTION, str);
                        }
                        float f10 = zYk.tB;
                        if (f10 >= 0.0f) {
                            jSONObject.put("progress", Math.round(f10 * 100.0f) / 100.0d);
                        }
                    }
                } catch (Throwable unused) {
                }
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(zYk.oJ, str2, str4, jSONObject);
            }
        });
    }

    public static List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.ZYk> ZYk(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                if (optJSONObject != null) {
                    arrayList.add(new ZYk.oJ(optJSONObject.optString("content"), (float) optJSONObject.optDouble("trackingFraction", 0.0d)).oJ());
                }
            }
        }
        return arrayList;
    }

    public static boolean oJ(cY cYVar, @NonNull List<tB> list, @Nullable com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ oJVar, @Nullable long j10, @Nullable String str, ZYk zYk, @Nullable String str2) {
        List<String> oJ2 = oJ(cYVar, list, oJVar, j10, str, str2);
        oJ(oJ2, zYk);
        return !oJ2.isEmpty();
    }

    public static void oJ(List<String> list, ZYk zYk) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10);
            if (!TextUtils.isEmpty(str)) {
                oJ(str, zYk, false);
            }
        }
    }

    private static void oJ(final String str, final ZYk zYk, final boolean z10) {
        com.bytedance.sdk.component.cFZ.ZYk.ZYk tB = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().tB();
        if (tB == null) {
            return;
        }
        tB.oJ(true);
        tB.ZYk(str);
        tB.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.2
            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk2) {
                String str2;
                boolean z11;
                ZYk zYk3 = ZYk.this;
                if (zYk3 == null || zYk3.oJ == null) {
                    return;
                }
                String str3 = null;
                if (zYk2 == null || !zYk2.ba()) {
                    if (zYk2 != null) {
                        str3 = zYk2.oJ() + ":" + zYk2.ZYk();
                        if (!z10 && (zYk2.oJ() <= 300 || zYk2.oJ() >= 400)) {
                            tB.oJ.put(str, ZYk.this);
                        }
                    }
                    str2 = str3;
                    z11 = false;
                } else {
                    z11 = true;
                    str2 = null;
                }
                tB.ZYk(z11, str2, HyG.tB(ZYk.this.oJ.qnr()), ZYk.this, str, z10);
                if (!z11 || tB.oJ.isEmpty()) {
                    return;
                }
                tB.ZYk();
            }

            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                cY cYVar;
                ZYk zYk2 = ZYk.this;
                if (zYk2 != null && (cYVar = zYk2.oJ) != null) {
                    tB.ZYk(false, iOException != null ? iOException.getMessage() : null, HyG.tB(cYVar.qnr()), ZYk.this, str, z10);
                }
                if (z10 || ZYk.this == null) {
                    return;
                }
                tB.oJ.put(str, ZYk.this);
            }
        });
    }

    public static JSONArray oJ(List<tB> list) {
        JSONArray jSONArray = new JSONArray();
        for (int i10 = 0; i10 < list.size(); i10++) {
            jSONArray.put(list.get(i10).tB());
        }
        return jSONArray;
    }

    public static List<tB> oJ(JSONArray jSONArray) {
        return oJ(jSONArray, false);
    }

    public static List<tB> oJ(JSONArray jSONArray, boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                String optString = jSONArray.optString(i10);
                if (!TextUtils.isEmpty(optString)) {
                    arrayList.add(new oJ(optString).oJ(z10).oJ());
                }
            }
        }
        return arrayList;
    }
}
