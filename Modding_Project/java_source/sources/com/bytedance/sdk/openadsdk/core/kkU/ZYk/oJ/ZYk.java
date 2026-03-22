package com.bytedance.sdk.openadsdk.core.kkU.ZYk.oJ;

import android.content.Context;
import com.bytedance.adsdk.ZYk.ba;
import com.bytedance.adsdk.ugeno.ex;
/* loaded from: classes3.dex */
public class ZYk extends ba {
    private ex oJ;

    public ZYk(Context context) {
        super(context);
    }

    public void oJ(ex exVar) {
        this.oJ = exVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.adsdk.ZYk.ba, android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.cFZ();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.adsdk.ZYk.ba, android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.so();
        }
    }
}
