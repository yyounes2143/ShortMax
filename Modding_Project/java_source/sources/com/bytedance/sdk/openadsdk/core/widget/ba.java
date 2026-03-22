package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class ba extends com.bytedance.sdk.openadsdk.core.Pfn.ex {
    private int ZYk;
    private float oJ;

    public ba(Context context) {
        super(context);
        this.oJ = 2.25f;
        this.ZYk = 12;
        oJ();
    }

    public static com.bytedance.sdk.openadsdk.core.Pfn.ex ZYk(Context context) {
        return new ba(context, 28, 5.0f);
    }

    private void oJ() {
        setBackground(ex.oJ());
        setImageResource(cY.ex(getContext(), "tt_close_btn"));
        int ZYk = cdg.ZYk(getContext(), this.oJ);
        setPadding(ZYk, ZYk, ZYk, ZYk);
        setScaleType(ImageView.ScaleType.FIT_XY);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Pfn.ex, android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams != null) {
            int ZYk = cdg.ZYk(getContext(), this.ZYk);
            layoutParams.width = ZYk;
            layoutParams.height = ZYk;
        }
        super.setLayoutParams(layoutParams);
    }

    public ba(Context context, int i10, float f10) {
        super(context);
        this.oJ = f10;
        this.ZYk = i10;
        oJ();
    }

    public static com.bytedance.sdk.openadsdk.core.Pfn.ex oJ(Context context) {
        return new ba(context);
    }
}
