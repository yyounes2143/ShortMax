package com.bytedance.sdk.openadsdk.tB;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.tB.kkU;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class Pfn extends com.bytedance.sdk.openadsdk.core.Pfn.Pfn implements View.OnClickListener, kkU.tB {
    private FilterWord Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private StateListDrawable f13388ba;
    private final int cFZ;
    private final kkU ex;
    public static FilterWord oJ = new FilterWord("100:1", "GOOD");
    public static FilterWord ZYk = new FilterWord("100:2", "NOT_BAD");
    public static FilterWord tB = new FilterWord("100:3", "BAD");

    public Pfn(@NonNull Context context, int i10, kkU kku) {
        super(context);
        this.cFZ = i10;
        this.ex = kku;
        if (kku != null) {
            kku.oJ(this);
        }
        oJ(i10);
        oJ();
        ZYk();
    }

    private void ZYk() {
        int i10;
        float f10;
        int i11;
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(getContext());
        if (this.ex.jFA()) {
            i10 = 40;
        } else {
            i10 = 30;
        }
        soVar.setTextSize(i10);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        Context context = getContext();
        if (this.ex.jFA()) {
            f10 = 8.0f;
        } else {
            f10 = 4.0f;
        }
        layoutParams.setMargins(0, cdg.ZYk(getContext(), 12.0f), 0, cdg.ZYk(context, f10));
        addView(soVar, layoutParams);
        oJ oJVar = new oJ(getContext());
        if (this.ex.jFA()) {
            i11 = 17;
        } else {
            i11 = 12;
        }
        oJVar.setTextSize(i11);
        oJVar.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        oJVar.setMaxLines(1);
        oJVar.setSingleLine();
        oJVar.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.setMargins(0, 0, 0, cdg.ZYk(getContext(), 12.0f));
        addView(oJVar, layoutParams2);
        int i12 = this.cFZ;
        if (i12 != 1) {
            if (i12 != 2) {
                if (i12 == 3) {
                    oJVar.setText(cY.oJ(getContext(), "tt_bad"));
                    soVar.setText("😡");
                    return;
                }
                return;
            }
            oJVar.setText(cY.oJ(getContext(), "tt_not_bad"));
            soVar.setText("😐");
            return;
        }
        soVar.setText("😍");
        oJVar.setText(cY.oJ(getContext(), "tt_good"));
    }

    private void oJ(int i10) {
        if (i10 == 1) {
            this.Pfn = oJ;
        } else if (i10 == 2) {
            this.Pfn = ZYk;
        } else if (i10 != 3) {
        } else {
            this.Pfn = tB;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (isSelected()) {
            this.ex.oJ(kkU.oJ);
        } else {
            this.ex.oJ(this.Pfn);
        }
    }

    private void oJ() {
        if (this.f13388ba == null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(cdg.ZYk(getContext(), 12.0f));
            gradientDrawable.setColor(Color.parseColor("#F8F8F8"));
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setStroke(cdg.ZYk(getContext(), 2.0f), Color.parseColor("#FE2C55"));
            gradientDrawable2.setCornerRadius(cdg.ZYk(getContext(), 12.0f));
            gradientDrawable2.setColor(Color.parseColor("#12FE2C55"));
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.f13388ba = stateListDrawable;
            stateListDrawable.addState(new int[]{16842913}, gradientDrawable2);
            this.f13388ba.addState(new int[0], gradientDrawable);
        }
        setBackground(this.f13388ba);
        setSelected(false);
        setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        setLayoutParams(layoutParams);
        setOnClickListener(this);
    }

    @Override // com.bytedance.sdk.openadsdk.tB.kkU.tB
    public void oJ(FilterWord filterWord) {
        FilterWord filterWord2;
        if (filterWord == null || (filterWord2 = this.Pfn) == null) {
            return;
        }
        setSelected(filterWord.equals(filterWord2));
    }
}
