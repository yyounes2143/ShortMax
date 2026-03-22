package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.cY;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex {
    private final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ Pfn;
    private final cY ZYk;
    private boolean ex;
    com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba oJ;
    private final String tB;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, int i10, int i11, int i12);

        void oJ(String str, JSONObject jSONObject);
    }

    public ex(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        this.Pfn = oJVar;
        this.ZYk = oJVar.ZYk;
        this.tB = oJVar.Pfn;
    }

    private void ex() {
        if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB() && this.ZYk.sQ() == 4) {
            this.oJ = com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(this.Pfn.Rl, this.tB);
        }
        if (this.oJ == null) {
            this.oJ = com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(this.Pfn.HyG, this.tB);
        }
    }

    public void ZYk() {
        com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba baVar = this.oJ;
        if (baVar != null) {
            baVar.tB(this.ZYk);
        }
    }

    public void oJ() {
        if (this.ex) {
            return;
        }
        this.ex = true;
        ex();
    }

    public com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba tB() {
        return this.oJ;
    }

    public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, int i10, int i11, int i12, oJ oJVar) {
        if (this.oJ != null) {
            int id2 = view.getId();
            if (id2 == com.bytedance.sdk.openadsdk.utils.eZI.Pfn) {
                oJVar.oJ("click_play_star_level", null);
                return;
            } else if (id2 == com.bytedance.sdk.openadsdk.utils.eZI.ex) {
                oJVar.oJ("click_play_star_nums", null);
                return;
            } else if (id2 == com.bytedance.sdk.openadsdk.utils.eZI.tB) {
                oJVar.oJ("click_play_source", null);
                return;
            } else if (id2 == com.bytedance.sdk.openadsdk.utils.eZI.ZYk) {
                oJVar.oJ("click_play_logo", null);
                return;
            } else {
                return;
            }
        }
        oJVar.oJ(view, f10, f11, f12, f13, sparseArray, i10, i11, i12);
    }
}
