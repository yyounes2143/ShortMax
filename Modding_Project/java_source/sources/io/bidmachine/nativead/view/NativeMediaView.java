package io.bidmachine.nativead.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
/* loaded from: classes8.dex */
public class NativeMediaView extends RelativeLayout {
    public NativeMediaView(Context context) {
        super(context);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (mode != 1073741824) {
            if (mode == Integer.MIN_VALUE) {
                size = Math.min(size, measuredWidth);
            } else {
                size = measuredWidth;
            }
        }
        int i12 = (int) (size * 0.5625f);
        if (mode2 == 1073741824 && size2 < i12) {
            size = (int) (size2 * 1.7777778f);
        } else {
            size2 = i12;
        }
        if (Math.abs(size2 - measuredHeight) >= 2 || Math.abs(size - measuredWidth) >= 2) {
            getLayoutParams().width = size;
            getLayoutParams().height = size2;
        }
        super.onMeasure(i10, i11);
    }

    public NativeMediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeMediaView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
