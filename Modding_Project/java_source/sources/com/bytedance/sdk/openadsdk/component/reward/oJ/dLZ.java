package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.component.reward.oJ.ex;
import com.bytedance.sdk.openadsdk.core.ZYk.oJ;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.BTZ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class dLZ {
    private final com.bytedance.sdk.openadsdk.core.ZYk.ZYk ZYk;
    private final oJ oJ;
    private final com.bytedance.sdk.openadsdk.core.ZYk.Pfn tB;

    public dLZ(oJ oJVar) {
        int i10;
        this.oJ = oJVar;
        this.tB = oJ(oJVar, oJVar.ZYk);
        Activity activity = oJVar.HyG;
        cY cYVar = oJVar.ZYk;
        String str = oJVar.Pfn;
        if (oJVar.ex) {
            i10 = 7;
        } else {
            i10 = 5;
        }
        this.ZYk = new com.bytedance.sdk.openadsdk.core.ZYk.ZYk(activity, cYVar, str, i10) { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.dLZ.1
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk, com.bytedance.sdk.openadsdk.core.ZYk.tB
            public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
                try {
                    dLZ.this.oJ(view, f10, f11, f12, f13, sparseArray, this.Ln, this.HL, this.IUZ);
                } catch (Exception e10) {
                    QSm.tB("TTAD.RFReportManager", "onClickReport error :" + e10.getMessage());
                }
                com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(dLZ.this.oJ.ZYk, 9);
                dLZ.this.oJ.cY.cdg();
            }
        };
    }

    private JSONObject jFA() {
        try {
            long Id = this.oJ.cY.Id();
            int cY = this.oJ.cY.cY();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("duration", Id);
                jSONObject.put("percent", cY);
                return jSONObject;
            } catch (Throwable unused) {
                return jSONObject;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    private boolean so() {
        cY cYVar = this.oJ.ZYk;
        if (cYVar == null || cYVar.hwh() != 1) {
            return false;
        }
        return true;
    }

    public com.bytedance.sdk.openadsdk.core.ZYk.Pfn Pfn() {
        return this.tB;
    }

    public void ZYk() {
        boolean z10;
        com.bytedance.sdk.openadsdk.component.reward.view.kkU kku;
        if (this.oJ.PiB.get()) {
            return;
        }
        com.bytedance.sdk.openadsdk.activity.so soVar = this.oJ.oCU;
        if (soVar != null && soVar.wd().oq()) {
            oJ oJVar = this.oJ;
            if (!oJVar.Yg && !oJVar.oCU.lY()) {
                return;
            }
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (!this.oJ.ZYk.Pfn() || (kku = this.oJ.f13026tb) == null) {
                z10 = false;
            } else {
                jSONObject.put("dynamic_show_type", kku.kkU());
                this.oJ.f13026tb.oJ(jSONObject);
                z10 = true;
            }
            cY cYVar = this.oJ.ZYk;
            oJ(jSONObject);
            View findViewById = this.oJ.HyG.findViewById(16908290);
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("width", findViewById.getWidth());
                jSONObject2.put("height", findViewById.getHeight());
                jSONObject2.put("alpha", findViewById.getAlpha());
            } catch (Throwable unused) {
            }
            jSONObject.put("root_view", jSONObject2.toString());
            if (this.oJ.PiB.compareAndSet(false, true)) {
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, this.oJ.Pfn, jSONObject);
                this.oJ.cdg.jFA();
                Pfn.oJ oJVar2 = new Pfn.oJ(z10 ? this.oJ.f13026tb.kkU() : -1);
                oJ(oJVar2);
                com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(this.oJ.HyG.findViewById(16908290), cYVar, oJVar2);
                com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(cYVar);
            }
        } catch (JSONException e10) {
            QSm.oJ("TTAD.RFReportManager", "reportShowWhenBindVideoAd error", e10);
        }
    }

    public void ba() {
        JSONObject jSONObject = new JSONObject();
        if (Ln.si(this.oJ.ZYk)) {
            this.oJ.Xe.oJ(jSONObject);
        }
        int i10 = 1;
        try {
            if (this.oJ.kkU.get()) {
                if (!this.oJ.Jc.tB()) {
                    if (this.oJ.UN.ex()) {
                        i10 = 3;
                    } else if (this.oJ.Jc.ex()) {
                        i10 = 2;
                    } else {
                        i10 = 0;
                    }
                }
                jSONObject.put("endcard_content", i10);
            } else {
                jSONObject.put("endCardNotShow", 1);
            }
        } catch (JSONException unused) {
        }
        oJ oJVar = this.oJ;
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(oJVar.ZYk, oJVar.Pfn, "click_close", jSONObject);
    }

    public void cFZ() {
        JSONObject jSONObject = new JSONObject();
        oJ(jSONObject);
        oJ oJVar = this.oJ;
        com.bytedance.sdk.openadsdk.ex.tB.Pfn(oJVar.ZYk, oJVar.Pfn, jSONObject);
    }

    public com.bytedance.sdk.openadsdk.core.ZYk.ZYk ex() {
        return this.ZYk;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public com.bytedance.sdk.openadsdk.core.ZYk.Pfn tB() {
        this.tB.oJ(this.oJ.HyG.findViewById(16908290));
        this.tB.ZYk(this.oJ.f13027wd.findViewById(520093713));
        if (this.oJ.f13021jr.tB() != null) {
            this.tB.oJ(this.oJ.f13021jr.tB());
        }
        this.oJ.Xe.oJ(this.tB);
        this.tB.oJ(new oJ.InterfaceC0202oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.dLZ.3
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.oJ.InterfaceC0202oJ
            public long getVideoProgress() {
                return dLZ.this.oJ.cY.BTZ();
            }
        });
        com.bytedance.sdk.openadsdk.component.reward.view.BTZ btz = this.oJ.ofl;
        com.bytedance.sdk.openadsdk.core.ZYk.Pfn pfn = this.tB;
        btz.oJ(pfn, pfn, this.ZYk);
        this.oJ.XAo.oJ(this.tB);
        return this.tB;
    }

    public void oJ() {
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
        if (this.oJ.PiB.get()) {
            return;
        }
        com.bytedance.sdk.openadsdk.activity.so soVar = this.oJ.oCU;
        if (soVar != null && soVar.wd().oq()) {
            oJ oJVar = this.oJ;
            if (!oJVar.Yg && !oJVar.oCU.lY()) {
                return;
            }
        }
        JSONObject jSONObject = new JSONObject();
        cY cYVar = this.oJ.ZYk;
        oJ(jSONObject);
        if (this.oJ.PiB.compareAndSet(false, true)) {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, this.oJ.Pfn, jSONObject);
            this.oJ.cdg.jFA();
            Pfn.oJ oJVar2 = new Pfn.oJ(-1);
            oJ(oJVar2);
            com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(this.oJ.HyG.findViewById(16908290), cYVar, oJVar2);
            com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(cYVar);
            com.bytedance.sdk.openadsdk.core.model.ex NTC = cYVar.NTC();
            if (NTC == null || (oJ = NTC.oJ()) == null) {
                return;
            }
            oJ.oJ(0L);
        }
    }

    public void tB(boolean z10) {
        oJ oJVar = this.oJ;
        if (oJVar != null && z10 && oJVar.ZYk.Tjr() && !this.oJ.ZYk.Id()) {
            this.oJ.ZYk.ba(true);
            oJ oJVar2 = this.oJ;
            cY cYVar = oJVar2.ZYk;
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, oJVar2.Pfn, cYVar.PLU());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.activity.so soVar;
        oJ oJVar = this.oJ;
        if (!oJVar.uvK || (soVar = oJVar.oCU) == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(soVar.BTZ + 1, jSONObject);
        } catch (Throwable unused) {
        }
    }

    public void ZYk(boolean z10) {
        oJ oJVar = this.oJ;
        if (oJVar == null) {
            return;
        }
        if (!z10 && oJVar.PiB.get() && this.oJ.oIC > 0) {
            String valueOf = String.valueOf(SystemClock.elapsedRealtime() - this.oJ.oIC);
            oJ oJVar2 = this.oJ;
            com.bytedance.sdk.openadsdk.ex.tB.oJ(valueOf, oJVar2.ZYk, oJVar2.Pfn, oJVar2.cY.Pfn());
            this.oJ.oIC = 0L;
        } else {
            this.oJ.oIC = SystemClock.elapsedRealtime();
        }
        com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(this.oJ.ZYk, z10 ? 4 : 8);
        com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(this.oJ.ZYk, z10 ? 4 : 8);
    }

    public void oJ(final Map<String, Object> map) {
        if (this.oJ.PiB.get()) {
            return;
        }
        com.bytedance.sdk.openadsdk.activity.so soVar = this.oJ.oCU;
        if (soVar != null && soVar.wd().oq()) {
            oJ oJVar = this.oJ;
            if (!oJVar.Yg && !oJVar.oCU.lY()) {
                return;
            }
        }
        this.oJ.PiB.set(true);
        final View findViewById = this.oJ.HyG.findViewById(16908290);
        if (findViewById == null) {
            findViewById = this.oJ.HyG.getWindow().getDecorView();
        }
        findViewById.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.dLZ.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z10;
                int i10;
                Map map2;
                JSONObject jSONObject;
                cY cYVar = dLZ.this.oJ.ZYk;
                JSONObject jSONObject2 = null;
                try {
                    if (map != null) {
                        jSONObject = new JSONObject(map);
                    } else {
                        jSONObject = new JSONObject();
                    }
                    jSONObject2 = jSONObject;
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("width", findViewById.getWidth());
                    jSONObject3.put("height", findViewById.getHeight());
                    jSONObject3.put("alpha", findViewById.getAlpha());
                    jSONObject2.put("root_view", jSONObject3.toString());
                    dLZ.this.oJ(jSONObject2);
                } catch (Throwable th2) {
                    QSm.oJ("TTAD.RFReportManager", "run: ", th2);
                }
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, dLZ.this.oJ.Pfn, jSONObject2);
                dLZ.this.oJ.cdg.jFA();
                if (dLZ.this.oJ.f13026tb != null && (map2 = map) != null && map2.containsKey("dynamic_show_type")) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    i10 = dLZ.this.oJ.f13026tb.kkU();
                } else {
                    i10 = -1;
                }
                Pfn.oJ oJVar2 = new Pfn.oJ(i10);
                dLZ.this.oJ(oJVar2);
                com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(dLZ.this.oJ.HyG.findViewById(16908290), cYVar, oJVar2);
                com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(cYVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(Pfn.oJ oJVar) {
        com.bytedance.sdk.openadsdk.activity.so soVar;
        oJ oJVar2 = this.oJ;
        if (!oJVar2.uvK || (soVar = oJVar2.oCU) == null) {
            return;
        }
        oJVar.ZYk = soVar.BTZ;
    }

    private void ZYk(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, int i10, int i11, int i12) {
        if (!so() || this.oJ.ZYk == null || view == null) {
            return;
        }
        int id2 = view.getId();
        if (id2 == com.bytedance.sdk.openadsdk.utils.eZI.Pfn || id2 == com.bytedance.sdk.openadsdk.utils.eZI.ex || id2 == com.bytedance.sdk.openadsdk.utils.eZI.tB || id2 == com.bytedance.sdk.openadsdk.utils.eZI.ZYk || id2 == com.bytedance.sdk.openadsdk.utils.eZI.BTZ || id2 == com.bytedance.sdk.openadsdk.utils.eZI.SCr || id2 == com.bytedance.sdk.openadsdk.utils.eZI.f13417si || id2 == 520093705 || id2 == com.bytedance.sdk.openadsdk.utils.eZI.dLZ || id2 == 520093707 || id2 == com.bytedance.sdk.openadsdk.utils.eZI.cFZ) {
            int kkU = cdg.kkU(com.bytedance.sdk.openadsdk.core.si.oJ());
            com.bytedance.sdk.openadsdk.core.model.BTZ oJ = new BTZ.oJ().ba(f10).Pfn(f11).ex(f12).tB(f13).ZYk(System.currentTimeMillis()).oJ(0L).ZYk(cdg.oJ(this.oJ.ofl.dLZ())).oJ(cdg.oJ((View) null)).tB(cdg.tB(this.oJ.ofl.dLZ())).ex(cdg.tB((View) null)).ex(i11).Pfn(i12).ba(i10).oJ(sparseArray).ZYk(com.bytedance.sdk.openadsdk.core.jFA.ZYk().oJ() ? 1 : 2).tB(kkU).oJ(cdg.so(com.bytedance.sdk.openadsdk.core.si.oJ())).ZYk(cdg.jFA(com.bytedance.sdk.openadsdk.core.si.oJ())).oJ();
            HashMap hashMap = new HashMap();
            hashMap.put("duration", Long.valueOf(this.oJ.cY.BTZ()));
            oJ oJVar = this.oJ;
            com.bytedance.sdk.openadsdk.ex.tB.oJ("click_other", oJVar.ZYk, oJ, oJVar.Pfn, true, (Map<String, Object>) hashMap, -1);
        }
    }

    public void oJ(boolean z10) {
        cY cYVar = this.oJ.ZYk;
        if (cYVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.awB.oJ.ex Pfn = com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ(z10 ? 7 : 8).tB(String.valueOf(cYVar.uv())).Pfn(this.oJ.ZYk.iPr());
        Pfn.ZYk(this.oJ.Jc.cY()).ba(this.oJ.Jc.jr());
        Pfn.cFZ(this.oJ.ZYk.pe()).ex(this.oJ.ZYk.edj());
        com.bytedance.sdk.openadsdk.awB.tB.oJ().ZYk(Pfn);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, int i10, int i11, int i12) {
        if (view == null) {
            return;
        }
        if (view.getId() == com.bytedance.sdk.openadsdk.utils.eZI.Pfn) {
            oJ("click_play_star_level", (JSONObject) null);
        } else if (view.getId() != com.bytedance.sdk.openadsdk.utils.eZI.ex && view.getId() != com.bytedance.sdk.openadsdk.utils.eZI.cFZ) {
            if (view.getId() == com.bytedance.sdk.openadsdk.utils.eZI.tB) {
                oJ("click_play_source", (JSONObject) null);
            } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.eZI.ZYk) {
                oJ("click_play_logo", (JSONObject) null);
            } else if (view.getId() != com.bytedance.sdk.openadsdk.utils.eZI.BTZ && view.getId() != com.bytedance.sdk.openadsdk.utils.eZI.SCr && view.getId() != com.bytedance.sdk.openadsdk.utils.eZI.f13417si) {
                if (view.getId() == 520093705) {
                    oJ("click_start_play", jFA());
                } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.eZI.dLZ) {
                    oJ("click_video", jFA());
                } else if (view.getId() == 520093707 || view.getId() == com.bytedance.sdk.openadsdk.utils.eZI.f13418so) {
                    oJ("fallback_endcard_click", jFA());
                }
            } else {
                oJ("click_start_play_bar", jFA());
            }
        } else {
            oJ("click_play_star_nums", (JSONObject) null);
        }
        ZYk(view, f10, f11, f12, f13, sparseArray, i10, i11, i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(String str, JSONObject jSONObject) {
        oJ oJVar = this.oJ;
        cY cYVar = oJVar.ZYk;
        String str2 = oJVar.Pfn;
        if (!oJVar.ex) {
            jSONObject = null;
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str2, str, jSONObject);
    }

    public com.bytedance.sdk.openadsdk.core.ZYk.Pfn oJ(final oJ oJVar, final cY cYVar) {
        return new com.bytedance.sdk.openadsdk.core.ZYk.Pfn(oJVar.HyG, cYVar, oJVar.Pfn, oJVar.ex ? 7 : 5) { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.dLZ.4
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.Pfn
            public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, int i10, int i11, int i12, boolean z10) {
                if (cYVar.Br() && view != null) {
                    Object tag = view.getTag(570425345);
                    if (tag instanceof String) {
                        oJ((String) tag);
                    }
                }
                HashMap hashMap = new HashMap();
                hashMap.put("duration", Long.valueOf(oJVar.cY.BTZ()));
                if (oJVar.kkU.get()) {
                    hashMap.put("click_scence", 2);
                } else if (Ln.si(cYVar)) {
                    hashMap.put("click_scence", 3);
                } else {
                    hashMap.put("click_scence", 1);
                }
                com.bytedance.sdk.openadsdk.activity.so soVar = oJVar.oCU;
                if (soVar != null) {
                    soVar.oJ(hashMap, f10, f11);
                }
                oJ(hashMap);
                oJVar.cdg.e_();
                if (view.getId() == com.bytedance.sdk.openadsdk.utils.eZI.Vh && Ln.si(cYVar)) {
                    JSONObject jSONObject = new JSONObject();
                    if (cYVar.ib() != null) {
                        try {
                            jSONObject.put("playable_url", cYVar.ib().BTZ());
                        } catch (JSONException e10) {
                            QSm.oJ("TTAD.RFReportManager", "onRewardBarClick json error", e10);
                        }
                    }
                    com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, oJVar.Pfn, "click_playable_download_button_loading", jSONObject);
                }
                oJVar.f13021jr.oJ(view, f10, f11, f12, f13, sparseArray, i10, i11, i12, new ex.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.dLZ.4.1
                    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.ex.oJ
                    public void oJ(String str, JSONObject jSONObject2) {
                        dLZ.this.oJ(str, jSONObject2);
                    }

                    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.ex.oJ
                    public void oJ(View view2, float f14, float f15, float f16, float f17, SparseArray<tB.oJ> sparseArray2, int i13, int i14, int i15) {
                        dLZ.this.oJ(view2, f14, f15, f16, f17, sparseArray2, i13, i14, i15);
                    }
                });
                com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(cYVar, 9);
                oJVar.cY.cdg();
            }
        };
    }
}
