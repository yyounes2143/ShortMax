package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class PAGLogoView extends LinearLayout {
    protected int containerHeight;
    private com.bytedance.sdk.openadsdk.core.Pfn.ex mAdLogo;
    private com.bytedance.sdk.openadsdk.core.Pfn.so mAdText;

    public PAGLogoView(Context context) {
        this(context, null);
    }

    public static PAGLogoView createPAGLogoViewByMaterial(Context context, cY cYVar) {
        PAGLogoView pAGLogoView = new PAGLogoView(context);
        pAGLogoView.initData(cYVar);
        return pAGLogoView;
    }

    private void initView(Context context) {
        int ZYk = cdg.ZYk(context, 2.0f);
        this.containerHeight = cdg.ZYk(getContext(), 12.0f);
        this.mAdLogo = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(cdg.ZYk(context, 14.0f), cdg.ZYk(context, 6.0f));
        layoutParams.leftMargin = ZYk;
        this.mAdLogo.setLayoutParams(layoutParams);
        this.mAdLogo.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.mAdText = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, this.containerHeight);
        layoutParams2.leftMargin = ZYk;
        layoutParams2.rightMargin = ZYk;
        this.mAdText.setLayoutParams(layoutParams2);
        this.mAdText.setTextSize(1, 8.0f);
        this.mAdText.setGravity(17);
        this.mAdText.setTextColor(Color.parseColor("#BFFFFFFF"));
        addView(this.mAdLogo);
        addView(this.mAdText);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#26000000"));
        gradientDrawable.setCornerRadius(ZYk);
        setBackground(gradientDrawable);
        setGravity(16);
    }

    public void initData(cY cYVar) {
        if (cYVar == null) {
            return;
        }
        initData(cYVar.crS());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        layoutParams.width = -2;
        layoutParams.height = this.containerHeight;
        super.setLayoutParams(com.bytedance.sdk.openadsdk.core.Pfn.jFA.oJ(this, layoutParams));
    }

    public PAGLogoView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void initData(com.bytedance.sdk.openadsdk.core.model.ZYk zYk) {
        if (zYk == null) {
            return;
        }
        if (zYk.Pfn()) {
            this.mAdLogo.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(com.bytedance.sdk.openadsdk.core.si.oJ(), "tt_ad_logo"));
        } else {
            String oJ = zYk.oJ();
            if (TextUtils.isEmpty(oJ)) {
                this.mAdLogo.setVisibility(8);
            } else {
                if (oJ.contains("logo")) {
                    this.mAdLogo.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(com.bytedance.sdk.openadsdk.core.si.oJ(), "tt_ad_logo"));
                } else {
                    com.bytedance.sdk.openadsdk.jFA.ex.oJ(oJ).tB(1).oJ(this.mAdLogo);
                }
                this.mAdLogo.setVisibility(0);
            }
        }
        String ZYk = zYk.ZYk();
        if (zYk.Pfn()) {
            this.mAdText.setText(com.bytedance.sdk.component.utils.cY.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), "tt_logo_en"));
        } else if (TextUtils.isEmpty(ZYk)) {
            this.mAdText.setVisibility(8);
        } else {
            this.mAdText.setText(ZYk);
            this.mAdText.setVisibility(0);
        }
    }

    public PAGLogoView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        initView(context);
    }

    @RequiresApi(api = 21)
    public PAGLogoView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        initView(context);
    }
}
