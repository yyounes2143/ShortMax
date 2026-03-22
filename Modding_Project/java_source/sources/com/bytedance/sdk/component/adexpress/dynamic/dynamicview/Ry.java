package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import androidx.annotation.ColorInt;
/* loaded from: classes3.dex */
public class Ry extends ba {
    public ZYk oJ;

    public Ry(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    protected GradientDrawable getDrawable() {
        ZYk zYk = new ZYk();
        this.oJ = zYk;
        return zYk;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        return super.jFA();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    public ZYk oJ(Bitmap bitmap) {
        oJ oJVar = new oJ(bitmap, this.oJ);
        this.oJ = oJVar;
        return oJVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    public GradientDrawable oJ(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        ZYk zYk = new ZYk(orientation, iArr);
        this.oJ = zYk;
        return zYk;
    }
}
