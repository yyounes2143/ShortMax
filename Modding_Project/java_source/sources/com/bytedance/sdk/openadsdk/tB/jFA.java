package com.bytedance.sdk.openadsdk.tB;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.tB.kkU;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
import java.util.List;
/* loaded from: classes3.dex */
public class jFA extends com.bytedance.sdk.openadsdk.core.Pfn.tB implements kkU.ZYk, kkU.ex, kkU.oJ, kkU.tB {
    private int BTZ;
    private com.bytedance.sdk.openadsdk.core.Pfn.so Pfn;
    private int PiB;
    private FilterWord WcQ;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private TextView f13389ba;
    private dLZ cFZ;
    private com.bytedance.sdk.openadsdk.core.Pfn.so dLZ;
    private final kkU ex;
    private View jFA;
    private com.bytedance.sdk.openadsdk.core.Pfn.ex kkU;
    ba oJ;

    /* renamed from: so  reason: collision with root package name */
    private View f13390so;
    private int tB;

    public jFA(Context context, kkU kku) {
        this(context, kku, null);
    }

    private com.bytedance.sdk.openadsdk.core.Pfn.so ZYk(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = ex() ? this.ZYk : cdg.ZYk(context, 12.0f);
        layoutParams.gravity = 80;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(this.tB);
        int rgb = Color.rgb(254, 44, 85);
        gradientDrawable.setColor(rgb);
        gradientDrawable.setAlpha(102);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setCornerRadius(this.tB);
        gradientDrawable2.setColor(rgb);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842910}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        int i10 = this.tB;
        soVar.setPadding(0, i10, 0, i10);
        soVar.setGravity(17);
        soVar.setBackground(stateListDrawable);
        soVar.setTextColor(-1);
        soVar.setTextSize(16.0f);
        soVar.setText(cY.oJ(context, "tt_suggestion_commit"));
        soVar.setEnabled(false);
        soVar.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.tB.jFA.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                jFA.this.ex.ex();
            }
        });
        soVar.setLayoutParams(layoutParams);
        return soVar;
    }

    private boolean ex() {
        if (this.BTZ == 0) {
            tB();
        }
        return this.BTZ < this.PiB;
    }

    private void tB() {
        if (this.BTZ > 0) {
            return;
        }
        this.BTZ = cdg.tB(getContext());
        int Pfn = cdg.Pfn(getContext());
        this.PiB = Pfn;
        this.ex.oJ(this.BTZ, Pfn);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Pfn.tB, android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (layoutParams != null) {
            if (this.BTZ == 0) {
                tB();
            }
            layoutParams.width = Math.min(this.BTZ, this.PiB) - (cdg.ZYk(getContext(), 16.0f) * 2);
        }
    }

    public jFA(Context context, kkU kku, List<FilterWord> list) {
        super(context);
        this.ex = kku;
        kku.oJ((kkU.tB) this);
        kku.oJ((kkU.ZYk) this);
        kku.oJ((kkU.ex) this);
        kku.oJ((kkU.oJ) this);
        tB();
        oJ(context);
        if (list == null || list.isEmpty()) {
            return;
        }
        ZYk(list);
    }

    private void oJ(Context context) {
        this.tB = cdg.ZYk(context, 8.0f);
        this.ZYk = cdg.ZYk(context, 20.0f);
        int ZYk = cdg.ZYk(context, 56.0f);
        int ZYk2 = cdg.ZYk(context, 30.0f);
        int ZYk3 = cdg.ZYk(context, 12.0f);
        if (ex()) {
            ZYk3 = this.ZYk;
        }
        if (!ex()) {
            ZYk = ZYk2;
        }
        View view = new View(getContext());
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, cdg.ZYk(getContext(), 98.0f));
        view.setBackground(cY.tB(context, "tt_ad_bg_header_gradient"));
        addView(view, layoutParams);
        ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(this.tB);
        gradientDrawable.setColor(-1);
        setBackground(gradientDrawable);
        setLayoutParams(layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        int ZYk4 = cdg.ZYk(context, 24.0f);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(ZYk4, ZYk4);
        layoutParams3.setMargins(0, ZYk3, ZYk3, 0);
        layoutParams3.gravity = 8388661;
        exVar.setImageDrawable(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_titlebar_close_seletor"));
        addView(exVar, layoutParams3);
        exVar.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.tB.jFA.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                jFA.this.ex.Pfn();
            }
        });
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        this.kkU = exVar2;
        exVar2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.tB.jFA.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                jFA.this.ZYk();
            }
        });
        this.kkU.setVisibility(8);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(ZYk4, ZYk4);
        layoutParams4.setMargins(ZYk3, ZYk3, 0, 0);
        layoutParams4.gravity = 8388659;
        Drawable oJ = com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_leftbackicon_selector");
        oJ.setAutoMirrored(true);
        this.kkU.setImageDrawable(oJ);
        addView(this.kkU, layoutParams4);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams5.setMargins(ZYk3, ZYk, ZYk3, ZYk3);
        pfn.setOrientation(1);
        addView(pfn, layoutParams5);
        View tB = tB(context);
        this.f13390so = tB;
        pfn.addView(tB);
        View ex = ex(context);
        this.jFA = ex;
        pfn.addView(ex);
        com.bytedance.sdk.openadsdk.core.Pfn.so ZYk5 = ZYk(context);
        this.Pfn = ZYk5;
        pfn.addView(ZYk5);
    }

    private View ex(Context context) {
        int ZYk;
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setOrientation(1);
        if (!ex()) {
            ZYk = cdg.ZYk(context, 200.0f);
        } else {
            ZYk = cdg.ZYk(context, 358.0f);
        }
        pfn.setLayoutParams(new LinearLayout.LayoutParams(-1, ZYk));
        TextView textView = new TextView(context);
        textView.setText(cY.oJ(context, "tt_select_reason"));
        textView.setTextSize(ex() ? 23 : 16);
        textView.setGravity(1);
        textView.setTextColor(Color.parseColor("#161823"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        layoutParams.bottomMargin = cdg.ZYk(context, ex() ? 24.0f : 4.0f);
        pfn.addView(textView, layoutParams);
        ba baVar = new ba(context, this.ex);
        this.oJ = baVar;
        pfn.addView(baVar);
        if (PiB.ib().Jm()) {
            com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
            this.dLZ = soVar;
            soVar.setId(eZI.SzJ);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.topMargin = ex() ? this.ZYk : cdg.ZYk(context, 6.0f);
            layoutParams2.gravity = 17;
            this.dLZ.setLayoutParams(layoutParams2);
            this.dLZ.setFocusable(false);
            this.dLZ.setHint(cY.oJ(context, "tt_add_bad_reason"));
            this.dLZ.setHintTextColor(Color.parseColor("#57000000"));
            this.dLZ.setTextColor(Color.rgb(22, 24, 35));
            this.dLZ.setTextSize(15.0f);
            this.dLZ.setGravity(GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK);
            this.dLZ.setVisibility(0);
            this.dLZ.setPadding(0, cdg.ZYk(context, 15.0f), 0, cdg.ZYk(context, 14.0f));
            this.dLZ.setEllipsize(TextUtils.TruncateAt.END);
            this.dLZ.setSingleLine();
            this.dLZ.setMaxLines(1);
            this.dLZ.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.tB.jFA.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    jFA.this.ex.ba();
                }
            });
            pfn.addView(this.dLZ, layoutParams2);
            pfn.addView(new dLZ(context, Color.argb(128, 0, 0, 0)));
        }
        pfn.setVisibility(8);
        return pfn;
    }

    private View tB(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        pfn.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setText(cY.oJ(context, "tt_like_this_ad"));
        textView.setTextSize(ex() ? 23 : 16);
        textView.setGravity(1);
        textView.setTextColor(Color.parseColor("#161823"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        pfn.addView(textView, layoutParams);
        TextView textView2 = new TextView(context);
        textView2.setText(cY.oJ(context, "tt_feel_hint"));
        textView2.setTextSize(ex() ? 14 : 10);
        textView2.setAlpha(0.5f);
        textView2.setTextColor(Color.parseColor("#161823"));
        textView2.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        if (ex()) {
            layoutParams2.topMargin = cdg.ZYk(context, 4.0f);
        }
        pfn.addView(textView2, layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn2.setOrientation(0);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        int ZYk = cdg.ZYk(context, 16.0f);
        int ZYk2 = cdg.ZYk(context, 12.0f);
        int ZYk3 = cdg.ZYk(context, 8.0f);
        if (ex()) {
            layoutParams3.topMargin = ZYk;
            layoutParams3.bottomMargin = ZYk;
        } else {
            layoutParams3.topMargin = ZYk2;
            layoutParams3.bottomMargin = ZYk3;
        }
        pfn.addView(pfn2, layoutParams3);
        pfn2.addView(new Pfn(context, 1, this.ex));
        Pfn pfn3 = new Pfn(context, 2, this.ex);
        ViewGroup.LayoutParams layoutParams4 = pfn3.getLayoutParams();
        boolean z10 = layoutParams4 instanceof LinearLayout.LayoutParams;
        LinearLayout.LayoutParams layoutParams5 = layoutParams4;
        if (!z10) {
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -2);
            layoutParams6.weight = 1.0f;
            layoutParams5 = layoutParams6;
        }
        LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) layoutParams5;
        layoutParams7.leftMargin = ZYk;
        layoutParams7.rightMargin = ZYk;
        pfn2.addView(pfn3, layoutParams5);
        pfn2.addView(new Pfn(context, 3, this.ex));
        dLZ dlz = new dLZ(context);
        this.cFZ = dlz;
        pfn.addView(dlz);
        this.f13389ba = new TextView(context);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -2);
        if (!ex()) {
            ZYk = ZYk3;
        }
        layoutParams8.topMargin = ZYk;
        this.f13389ba.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.f13389ba.setPadding(ZYk2, ZYk3, ZYk2, ZYk3);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(ZYk3);
        gradientDrawable.setColor(Color.parseColor("#F8F8F8"));
        this.f13389ba.setBackground(gradientDrawable);
        this.f13389ba.setText(cY.oJ(context, "tt_report_this_ad"));
        this.f13389ba.setTextSize(ex() ? 14 : 12);
        Drawable tB = cY.tB(context, "tt_report_ad_arrow");
        tB.setBounds(0, 0, ZYk2, ZYk2);
        this.f13389ba.setCompoundDrawables(null, null, tB, null);
        this.f13389ba.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.tB.jFA.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                jFA.this.oJ();
            }
        });
        pfn.addView(this.f13389ba, layoutParams8);
        return pfn;
    }

    private void ZYk(List<FilterWord> list) {
        this.oJ.oJ(list);
    }

    public void ZYk() {
        View view = this.jFA;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f13390so;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = this.kkU;
        if (exVar != null) {
            exVar.setVisibility(8);
        }
        kkU kku = this.ex;
        if (kku != null) {
            FilterWord filterWord = this.WcQ;
            if (filterWord != null) {
                kku.oJ(filterWord);
            } else {
                kku.oJ(kkU.oJ);
            }
            this.ex.tB(null);
        }
    }

    public void oJ() {
        View view = this.jFA;
        if (view != null) {
            view.setVisibility(0);
        }
        View view2 = this.f13390so;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = this.kkU;
        if (exVar != null) {
            exVar.setVisibility(0);
        }
        kkU kku = this.ex;
        if (kku == null || !kku.tB()) {
            return;
        }
        this.WcQ = this.ex.ZYk();
    }

    @Override // com.bytedance.sdk.openadsdk.tB.kkU.tB
    public void oJ(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        if (this.Pfn != null && TextUtils.isEmpty(this.ex.cFZ())) {
            this.Pfn.setEnabled(!kkU.oJ.equals(filterWord));
        }
        if (Pfn.oJ.equals(filterWord) || Pfn.ZYk.equals(filterWord)) {
            this.f13389ba.setVisibility(8);
            this.cFZ.setVisibility(8);
        }
        if (Pfn.tB.equals(filterWord) || kkU.oJ.equals(filterWord)) {
            this.f13389ba.setVisibility(0);
            this.cFZ.setVisibility(0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.tB.kkU.ZYk
    public void oJ(int i10) {
        if (kkU.tB == i10) {
            this.WcQ = null;
            ZYk();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.tB.kkU.ex
    public void oJ(String str) {
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar;
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = this.dLZ;
        if (soVar2 != null) {
            soVar2.setText(str);
        }
        if (TextUtils.isEmpty(str)) {
            kkU kku = this.ex;
            if (kku == null || (soVar = this.Pfn) == null) {
                return;
            }
            soVar.setEnabled(kku.tB());
            return;
        }
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar3 = this.Pfn;
        if (soVar3 != null) {
            soVar3.setEnabled(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.tB.kkU.oJ
    public void oJ(List<FilterWord> list) {
        ZYk(list);
    }
}
