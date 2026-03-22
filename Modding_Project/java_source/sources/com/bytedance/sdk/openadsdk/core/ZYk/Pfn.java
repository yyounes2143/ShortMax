package com.bytedance.sdk.openadsdk.core.ZYk;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.cY;
/* loaded from: classes3.dex */
public abstract class Pfn extends oJ {
    public Pfn(@NonNull Context context, @NonNull cY cYVar, @NonNull String str, int i10) {
        super(context, cYVar, str, i10);
    }

    protected abstract void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, int i10, int i11, int i12, boolean z10);

    @Override // com.bytedance.sdk.openadsdk.core.ZYk.oJ, com.bytedance.sdk.openadsdk.core.ZYk.ZYk, com.bytedance.sdk.openadsdk.core.ZYk.tB
    public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
        if (oJ(view, z10)) {
            oJ(view, f10, f11, f12, f13, sparseArray, this.Ln, this.HL, this.IUZ, z10);
        }
        super.oJ(view, f10, f11, f12, f13, sparseArray, z10);
    }
}
