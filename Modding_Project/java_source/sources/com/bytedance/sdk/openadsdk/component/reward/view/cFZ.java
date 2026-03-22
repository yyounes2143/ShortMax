package com.bytedance.sdk.openadsdk.component.reward.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes3.dex */
public class cFZ extends com.bytedance.sdk.openadsdk.core.Pfn.ex {
    private float oJ;

    public cFZ(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.Pfn.ex, android.widget.ImageView, android.view.View
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        int i12 = getLayoutParams().width;
        int i13 = getLayoutParams().height;
        float f10 = this.oJ;
        if (f10 > 0.0f) {
            if (i12 == -2) {
                size = (int) (size2 * f10);
                mode = 1073741824;
            } else if (i13 == -2) {
                size2 = (int) (size / f10);
                mode2 = 1073741824;
            }
        }
        setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(size, mode), View.MeasureSpec.makeMeasureSpec(size2, mode2));
    }

    public void setRatio(float f10) {
        this.oJ = f10;
    }

    public cFZ(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }
}
