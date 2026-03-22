package com.mbridge.msdk.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
/* loaded from: classes6.dex */
public class FeedbackRadioGroup extends RadioGroup {
    public FeedbackRadioGroup(Context context) {
        super(context);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            if (marginLayoutParams.leftMargin + paddingLeft + childAt.getMeasuredWidth() + marginLayoutParams.rightMargin + getPaddingRight() > i12 - i10) {
                paddingLeft = getPaddingLeft();
                paddingTop += i14;
                i14 = getChildAt(i15).getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            } else {
                i14 = Math.max(i14, childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
            }
            int i16 = marginLayoutParams.leftMargin + paddingLeft;
            int i17 = marginLayoutParams.topMargin + paddingTop;
            childAt.layout(i16, i17, childAt.getMeasuredWidth() + i16, childAt.getMeasuredHeight() + i17);
            paddingLeft += marginLayoutParams.leftMargin + childAt.getMeasuredWidth() + marginLayoutParams.rightMargin;
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i11);
        measureChildren(i10, i11);
        int childCount = getChildCount();
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i13 < childCount) {
            View childAt = getChildAt(i13);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            int i18 = i16 + measuredWidth;
            if (getPaddingLeft() + i18 + getPaddingRight() > size) {
                i12 = Math.max(i16, i15);
                i14 += i17;
                i17 = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                Log.v("FeedbackRadioGroup", "maxHeight:" + i14 + "---maxWidth:" + i12);
            } else {
                i17 = Math.max(i17, childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
                measuredWidth = i18;
                i12 = i15;
            }
            if (i13 == childCount - 1) {
                i14 += i17;
                i15 = Math.max(measuredWidth, i15);
            } else {
                i15 = i12;
            }
            i13++;
            i16 = measuredWidth;
        }
        int paddingLeft = i15 + getPaddingLeft() + getPaddingRight();
        int paddingTop = i14 + getPaddingTop() + getPaddingBottom();
        if (mode != 1073741824) {
            size = paddingLeft;
        }
        if (mode2 != 1073741824) {
            size2 = paddingTop;
        }
        setMeasuredDimension(size, size2);
    }

    public FeedbackRadioGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
