package com.bytedance.sdk.openadsdk.component.oJ;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.sdk.openadsdk.core.ZYk.oJ {
    private final com.bytedance.sdk.openadsdk.component.so.oJ oJ;

    public oJ(@NonNull Context context, @NonNull cY cYVar, @NonNull String str, int i10, com.bytedance.sdk.openadsdk.component.so.oJ oJVar) {
        super(context, cYVar, str, i10);
        this.oJ = oJVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ZYk.oJ, com.bytedance.sdk.openadsdk.core.ZYk.ZYk, com.bytedance.sdk.openadsdk.core.ZYk.tB
    public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
        if (view.getTag() == "open_ad_click_button_tag") {
            oJ("click_bar");
        } else {
            oJ("click_material");
        }
        HashMap hashMap = new HashMap();
        hashMap.put("duration", Long.valueOf(this.oJ.tB()));
        oJ(hashMap);
        super.oJ(view, f10, f11, f12, f13, sparseArray, z10);
        Pfn.oJ(((com.bytedance.sdk.openadsdk.core.ZYk.ZYk) this).f13105ba, 9);
    }
}
