package com.bytedance.sdk.openadsdk.tB;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.tB.kkU;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.List;
/* loaded from: classes3.dex */
public class so extends ViewGroup implements kkU.tB {
    private final kkU oJ;

    public so(Context context, kkU kku) {
        super(context);
        this.oJ = kku;
        kku.oJ(this);
    }

    private View ZYk(FilterWord filterWord) {
        TextView textView = new TextView(getContext());
        textView.setTag(filterWord);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        int ZYk = cdg.ZYk(getContext(), 8.0f);
        marginLayoutParams.leftMargin = ZYk;
        marginLayoutParams.bottomMargin = ZYk;
        textView.setTextColor(oJ());
        textView.setText(filterWord.getName());
        textView.setPadding(ZYk, ZYk, ZYk, ZYk);
        textView.setBackground(ZYk());
        textView.setSelected(false);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.tB.so.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (so.this.oJ != null) {
                    if (view.isSelected()) {
                        so.this.oJ.oJ(kkU.oJ);
                        return;
                    }
                    Object tag = view.getTag();
                    if (tag instanceof FilterWord) {
                        so.this.oJ.oJ((FilterWord) tag);
                    }
                }
            }
        });
        textView.setSelected(false);
        textView.setLayoutParams(marginLayoutParams);
        return textView;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int childCount = getChildCount();
        int i16 = i12 - i10;
        int i17 = 0;
        int i18 = 0;
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt = getChildAt(i19);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (i19 != 0) {
                i14 = marginLayoutParams.leftMargin;
            } else {
                i14 = 0;
            }
            if (measuredWidth + i14 + i17 < i16) {
                i15 = i17 + i14;
            } else {
                i18 += marginLayoutParams.bottomMargin + measuredHeight;
                i15 = 0;
            }
            childAt.layout(i15, marginLayoutParams.topMargin + i18, i15 + measuredWidth, measuredHeight + i18);
            i17 = i15 + measuredWidth + marginLayoutParams.rightMargin;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        View.MeasureSpec.getMode(i10);
        View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        View.MeasureSpec.getSize(i11);
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < getChildCount(); i16++) {
            View childAt = getChildAt(i16);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            measureChild(childAt, i10, i11);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (i16 != 0) {
                i12 = marginLayoutParams.leftMargin;
            } else {
                i12 = 0;
            }
            if (measuredWidth + i12 + i15 < size) {
                i13 = i15 + i12;
            } else {
                i13 = 0;
            }
            if (i13 == 0) {
                i14 += measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            }
            i15 = i13 + measuredWidth + marginLayoutParams.rightMargin;
        }
        setMeasuredDimension(size, i14);
    }

    public void oJ(List<FilterWord> list) {
        if (list == null) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            FilterWord filterWord = list.get(i10);
            if (filterWord != null) {
                addView(ZYk(filterWord));
            }
        }
    }

    private ColorStateList oJ() {
        return new ColorStateList(new int[][]{new int[]{16842913}, new int[0]}, new int[]{Color.rgb(255, 44, 85), ViewCompat.MEASURED_STATE_MASK});
    }

    @Override // com.bytedance.sdk.openadsdk.tB.kkU.tB
    public void oJ(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt != null) {
                if (kkU.oJ.equals(filterWord)) {
                    childAt.setSelected(false);
                } else {
                    childAt.setSelected(filterWord.equals(childAt.getTag()));
                }
            }
        }
    }

    private Drawable ZYk() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        float ZYk = cdg.ZYk(getContext(), 5.0f);
        gradientDrawable.setCornerRadius(ZYk);
        gradientDrawable.setColor(Color.parseColor("#0D000000"));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setStroke(cdg.ZYk(getContext(), 1.0f), Color.parseColor("#FE2C55"));
        gradientDrawable2.setCornerRadius(ZYk);
        gradientDrawable2.setColor(Color.parseColor("#12FE2C55"));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842913}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }
}
