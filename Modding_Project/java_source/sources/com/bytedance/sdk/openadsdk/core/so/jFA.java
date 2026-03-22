package com.bytedance.sdk.openadsdk.core.so;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.BTZ;
import com.bytedance.sdk.openadsdk.utils.cdg;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class jFA extends com.bytedance.sdk.openadsdk.core.ZYk.ZYk {
    public jFA(@NonNull Context context, @NonNull com.bytedance.sdk.openadsdk.core.model.cY cYVar, @NonNull String str, int i10) {
        super(context, cYVar, str, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk
    public com.bytedance.sdk.openadsdk.core.model.BTZ oJ(float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, long j10, long j11, View view, View view2, String str, float f14, int i10, float f15, int i11, JSONObject jSONObject, JSONObject jSONObject2) {
        float f16;
        float f17;
        float f18;
        float f19;
        int i12;
        int i13;
        int i14;
        long j12;
        long j13;
        char c10;
        int i15;
        int i16;
        int[] oJ = cdg.oJ(view);
        int i17 = 0;
        if (oJ == null || oJ.length != 2) {
            f16 = f10;
            f17 = f11;
            f18 = f12;
            f19 = f13;
            i12 = 0;
            i13 = 0;
        } else {
            i12 = oJ[0];
            i13 = oJ[1];
            if (this.QSm == 0) {
                f19 = (cdg.ZYk(this.ex, f13) + i13) - 0.5f;
                f18 = (cdg.ZYk(this.ex, f12) + i12) - 0.5f;
                f16 = (cdg.ZYk(this.ex, f10) + i12) - 0.5f;
                f17 = (cdg.ZYk(this.ex, f11) + i13) - 0.5f;
            } else {
                f16 = f10;
                f17 = f11;
                f18 = f12;
                f19 = f13;
            }
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        com.bytedance.sdk.openadsdk.core.model.eZI ezi = this.Pfn;
        if (ezi != null) {
            j12 = ezi.Pfn;
            j13 = ezi.f13225ba;
            if (this.QSm == 0) {
                iArr[0] = cdg.ZYk(this.ex, ezi.cFZ) + i12;
                iArr[1] = cdg.ZYk(this.ex, this.Pfn.f13227so) + i13;
                i15 = cdg.ZYk(this.ex, this.Pfn.jFA);
                i16 = cdg.ZYk(this.ex, this.Pfn.kkU);
                c10 = 0;
                i14 = 1;
            } else {
                c10 = 0;
                iArr[0] = ezi.cFZ;
                i14 = 1;
                iArr[1] = ezi.f13227so;
                i15 = ezi.jFA;
                i16 = ezi.kkU;
            }
            iArr2[c10] = i15;
            iArr2[i14] = i16;
            if (i15 == 0 && i16 == 0 && view2 != null) {
                iArr = cdg.oJ(view2);
                iArr2 = cdg.tB(view2);
            }
            i17 = 0;
        } else {
            i14 = 1;
            j12 = j10;
            j13 = j11;
        }
        this.QSm = i17;
        return new BTZ.oJ().ba(f16).Pfn(f17).ex(f18).tB(f19).ZYk(j12).oJ(j13).ZYk(oJ).oJ(iArr).tB(cdg.tB(view)).ex(iArr2).ex(this.HL).Pfn(this.IUZ).ba(this.Ln).ZYk(com.bytedance.sdk.openadsdk.core.jFA.ZYk().oJ() ? i14 : 2).oJ(sparseArray).oJ(str).oJ(i11).oJ(jSONObject).ZYk(jSONObject2).oJ();
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.model.eZI ezi) {
        this.Pfn = ezi;
    }
}
