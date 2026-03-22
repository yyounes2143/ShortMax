package com.bytedance.sdk.openadsdk.core.ba.oJ;

import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.component.adexpress.ZYk.dLZ;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.eZI;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class oJ extends tB implements com.bytedance.sdk.component.adexpress.dynamic.ba.oJ {
    protected WeakReference<View> ZYk;
    protected WeakReference<View> oJ;
    private dLZ tB;

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ba.oJ
    public void ZYk(View view) {
        this.ZYk = new WeakReference<>(view);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ba.oJ
    public void oJ(dLZ dlz) {
        this.tB = dlz;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ba.oJ
    public void oJ(View view) {
        this.oJ = new WeakReference<>(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ZYk.tB
    public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
        oJ(view, ((Integer) view.getTag()).intValue(), f10, f11, f12, f13, sparseArray);
    }

    private void oJ(View view, int i10, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray) {
        if (this.tB != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            WeakReference<View> weakReference = this.ZYk;
            if (weakReference != null) {
                int[] oJ = cdg.oJ(weakReference.get());
                if (oJ != null) {
                    iArr = oJ;
                }
                int[] tB = cdg.tB(this.ZYk.get());
                if (tB != null) {
                    iArr2 = tB;
                }
            }
            String str = "";
            try {
                int i11 = com.bytedance.sdk.component.adexpress.dynamic.oJ.f12710oq;
                if (view.getTag(i11) != null) {
                    str = String.valueOf(view.getTag(i11));
                }
            } catch (Exception unused) {
            }
            this.tB.oJ(view, i10, new eZI.oJ().ex(f10).tB(f11).ZYk(f12).oJ(f13).ZYk(this.Xe).oJ(this.f13115tb).ex(iArr[0]).Pfn(iArr[1]).ba(iArr2[0]).cFZ(iArr2[1]).oJ(sparseArray).oJ(this.nke).oJ(str).oJ());
        }
    }
}
