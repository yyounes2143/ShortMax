package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.app.Activity;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.ZYk.ZYk;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.HyG;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba {
    private final oJ oJ;

    public ba(oJ oJVar) {
        this.oJ = oJVar;
    }

    public void oJ(float[] fArr, final com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk, final com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk2) {
        FrameLayout.LayoutParams layoutParams;
        com.bytedance.sdk.openadsdk.activity.so soVar;
        com.bytedance.sdk.openadsdk.component.reward.view.kkU kku;
        Arrays.toString(fArr);
        AdSlot build = new AdSlot.Builder().setCodeId(String.valueOf(this.oJ.ZYk.uv())).setExpressViewAcceptedSize(fArr[0], fArr[1]).build();
        oJ oJVar = this.oJ;
        oJVar.f13026tb.oJ(build, oJVar.ofl.awB);
        oJ oJVar2 = this.oJ;
        PiB piB = oJVar2.f13022mu;
        if (piB != null && (kku = oJVar2.f13026tb) != null) {
            piB.oJ(kku.oJ());
        }
        this.oJ.f13026tb.oJ(new com.bytedance.sdk.openadsdk.core.so.awB() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.ba.1
            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public int Pfn() {
                if (ba.this.oJ.f13026tb.tB()) {
                    return 4;
                }
                if (ba.this.oJ.f13026tb.ex()) {
                    return 5;
                }
                if (ba.this.oJ.cY.kkU()) {
                    return 1;
                }
                if (ba.this.oJ.cY.ba()) {
                    return 2;
                }
                ba.this.oJ.cY.jFA();
                return 3;
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public boolean ZYk(JSONObject jSONObject) {
                return com.bytedance.sdk.openadsdk.component.reward.oJ.oJ(ba.this.oJ);
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public void ba() {
                ba.this.oJ.LpP.oJ(zYk2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public long ex() {
                return ba.this.oJ.cY.oJ();
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public void oJ(boolean z10, String str) {
                if (ba.this.oJ.bgF != z10) {
                    ba.this.oJ.f13022mu.oJ(str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public long tB() {
                return ba.this.oJ.cY.PiB();
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public void ZYk() {
                if (ba.this.oJ.ofl == null || ba.this.oJ.ofl.kkU() == null) {
                    return;
                }
                ba.this.oJ.ofl.kkU().performClick();
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public void oJ() {
                ba.this.oJ.f13022mu.ex();
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public void ZYk(int i10) {
                ba.this.oJ.lY = i10;
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public void oJ(String str, JSONObject jSONObject) {
                if (ba.this.oJ == null || ba.this.oJ.cdg == null) {
                    return;
                }
                ba.this.oJ.cdg.oJ(str, jSONObject);
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public boolean oJ(JSONObject jSONObject) {
                if (ba.this.oJ == null || ba.this.oJ.cY == null) {
                    return false;
                }
                return ba.this.oJ.cY.oJ(jSONObject);
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public void oJ(int i10) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        ba.this.oJ.cY.UN();
                        return;
                    } else if (i10 == 3) {
                        ba.this.oJ.cY.oJ(zYk);
                        return;
                    } else if (i10 == 4) {
                        ba.this.oJ.cY.Ry();
                        return;
                    } else if (i10 != 5) {
                        return;
                    }
                }
                if (ba.this.oJ.cY.ba() || ba.this.oJ.cY.jFA()) {
                    return;
                }
                zYk.oJ(0L, false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public void oJ(int i10, String str) {
                ba.this.oJ.cY.oJ(i10, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.awB
            public void oJ(int i10, com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ) {
                ba.this.oJ.ofl.oJ(i10, wcQ);
            }
        });
        this.oJ.f13026tb.oJ(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.ba.2
            @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
            public void onAdClicked() {
                if (ba.this.oJ != null && ba.this.oJ.ZYk != null && ba.this.oJ.ZYk.jA()) {
                    zYk.e_();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderFail(View view, String str, int i10) {
                if (!ba.this.oJ.ZYk.RQ()) {
                    ba.this.oJ.Jc.oJ(true);
                    ba.this.oJ.Jc.Pfn();
                }
                ba.this.oJ.f13026tb.Pfn().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.ba.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zYk2.oJ(false, false, false, 90);
                    }
                });
                ba.this.oJ.ofl.PiB();
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderSuccess(View view, float f10, float f11) {
                QSm qSm;
                if (Ln.si(ba.this.oJ.ZYk)) {
                    return;
                }
                if (!ba.this.oJ.ZYk.RQ()) {
                    if (ba.this.oJ.f13026tb.jFA()) {
                        zYk2.oJ(true);
                        ba.this.oJ.cY.ex(false);
                    } else {
                        ba.this.oJ.cY.ex(true);
                    }
                    ba.this.oJ.ofl.oJ(8);
                    ba.this.oJ.Jc.oJ(true);
                    ba.this.oJ.Jc.Pfn();
                    if (ba.this.oJ.f13026tb.jFA()) {
                        ba.this.oJ.f13026tb.ZYk().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                        zYk2.oJ(ba.this.oJ.ofl.ba());
                    } else if (ba.this.oJ.ZYk.ib() != null && zYk2.oJ()) {
                        ba.this.oJ.mwH = true;
                    }
                }
                zYk2.tb();
                if (QSm.tB(ba.this.oJ.ZYk) && (qSm = ba.this.oJ.ofl.awB) != null) {
                    qSm.tB();
                }
                ba.this.oJ.ofl.PiB();
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdDismissed() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdShow(View view, int i10) {
            }
        });
        oJ oJVar3 = this.oJ;
        Activity activity = oJVar3.HyG;
        cY cYVar = oJVar3.ZYk;
        String str = oJVar3.Pfn;
        com.bytedance.sdk.openadsdk.core.so.jFA jfa = new com.bytedance.sdk.openadsdk.core.so.jFA(activity, cYVar, str, HyG.oJ(str)) { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.ba.3
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk, com.bytedance.sdk.openadsdk.core.ZYk.tB
            public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
                super.oJ(view, f10, f11, f12, f13, sparseArray, z10);
            }
        };
        jfa.oJ(new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.ba.4
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk.oJ
            public void oJ(View view, int i10) {
                zYk.e_();
            }
        });
        HashMap hashMap = new HashMap();
        if (Ln.si(this.oJ.ZYk)) {
            hashMap.put("click_scence", 3);
        } else {
            hashMap.put("click_scence", 1);
        }
        oJ oJVar4 = this.oJ;
        if (oJVar4.uvK && (soVar = oJVar4.oCU) != null) {
            int i10 = soVar.BTZ + 1;
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ad_show_order", i10);
                hashMap.put("pag_json_data", jSONObject.toString());
            } catch (Throwable unused) {
            }
        }
        jfa.oJ(hashMap);
        oJ oJVar5 = this.oJ;
        Activity activity2 = oJVar5.HyG;
        cY cYVar2 = oJVar5.ZYk;
        String str2 = oJVar5.Pfn;
        com.bytedance.sdk.openadsdk.core.so.so soVar2 = new com.bytedance.sdk.openadsdk.core.so.so(activity2, cYVar2, str2, HyG.oJ(str2)) { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.ba.5
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.oJ, com.bytedance.sdk.openadsdk.core.ZYk.ZYk, com.bytedance.sdk.openadsdk.core.ZYk.tB
            public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("duration", Long.valueOf(ba.this.oJ.cY.BTZ()));
                if (ba.this.oJ.oCU != null) {
                    ba.this.oJ.oCU.oJ(hashMap2, f10, f11);
                }
                oJ(hashMap2);
                super.oJ(view, f10, f11, f12, f13, sparseArray, z10);
            }
        };
        soVar2.oJ(new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.ba.6
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk.oJ
            public void oJ(View view, int i11) {
                zYk.e_();
            }
        });
        HashMap hashMap2 = new HashMap();
        if (Ln.si(this.oJ.ZYk)) {
            hashMap2.put("click_scence", 3);
        } else {
            hashMap2.put("click_scence", 1);
        }
        soVar2.oJ(hashMap2);
        this.oJ.f13026tb.oJ(jfa, soVar2);
        if (this.oJ.ZYk.RQ()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1);
        } else if (com.bytedance.sdk.openadsdk.core.kkU.ex.oJ(this.oJ.ZYk.uvK())) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1);
        } else if (QSm.tB(this.oJ.ZYk)) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -2);
        }
        layoutParams.gravity = 17;
        this.oJ.ofl.ba().addView(this.oJ.f13026tb.oJ(), layoutParams);
        if (!this.oJ.f13026tb.jFA()) {
            zYk2.oJ(false);
        }
        this.oJ.f13026tb.PiB();
    }
}
