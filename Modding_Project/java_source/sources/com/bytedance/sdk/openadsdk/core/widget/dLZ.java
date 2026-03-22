package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class dLZ extends FrameLayout {
    private PAGLogoView Pfn;
    private si ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.Pfn.so f13304ba;
    private cY cFZ;
    private eZI ex;
    private com.bytedance.sdk.openadsdk.core.ZYk.oJ jFA;
    private boolean oJ;

    /* renamed from: so  reason: collision with root package name */
    private String f13305so;
    private TextView tB;

    public dLZ(@NonNull Context context) {
        super(context);
        setVisibility(8);
        setId(com.bytedance.sdk.openadsdk.utils.eZI.Uf);
    }

    public void setClickListener(com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar) {
        this.jFA = oJVar;
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        if (i10 == 0) {
            oJ();
        }
    }

    private void ZYk() {
        FrameLayout.LayoutParams layoutParams;
        Context context = getContext();
        boolean z10 = this.cFZ.Tt() == 1;
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setGravity(1);
        pfn.setOrientation(1);
        if (z10) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
        } else {
            layoutParams = new FrameLayout.LayoutParams(cdg.ZYk(context, 327.0f), -2);
        }
        layoutParams.gravity = 17;
        int ZYk = cdg.ZYk(context, 24.0f);
        layoutParams.rightMargin = ZYk;
        layoutParams.leftMargin = ZYk;
        addView(pfn, layoutParams);
        si siVar = new si(context);
        this.ZYk = siVar;
        siVar.setBackgroundColor(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(cdg.ZYk(context, 80.0f), cdg.ZYk(context, 80.0f));
        layoutParams2.bottomMargin = cdg.ZYk(context, 12.0f);
        pfn.addView(this.ZYk, layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.tB = soVar;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar.setEllipsize(truncateAt);
        this.tB.setGravity(17);
        this.tB.setMaxLines(2);
        this.tB.setMaxWidth(cdg.ZYk(context, 180.0f));
        this.tB.setTextColor(-1);
        this.tB.setTextSize(2, 24.0f);
        pfn.addView(this.tB, new LinearLayout.LayoutParams(-1, -2));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.f13304ba = soVar2;
        soVar2.setEllipsize(truncateAt);
        this.f13304ba.setGravity(17);
        this.f13304ba.setMaxLines(2);
        this.f13304ba.setTextColor(Color.parseColor("#BFFFFFFF"));
        this.f13304ba.setTextSize(2, 16.0f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = cdg.ZYk(context, 8.0f);
        pfn.addView(this.f13304ba, layoutParams3);
        this.ex = new eZI(context, true);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, cdg.ZYk(context, 16.0f));
        layoutParams4.topMargin = cdg.ZYk(context, 12.0f);
        this.ex.setVisibility(8);
        pfn.addView(this.ex, layoutParams4);
        this.Pfn = PAGLogoView.createPAGLogoViewByMaterial(context, this.cFZ);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, cdg.ZYk(context, 14.0f));
        layoutParams5.gravity = 8388691;
        layoutParams5.leftMargin = cdg.ZYk(context, 18.0f);
        if (z10) {
            layoutParams5.bottomMargin = cdg.ZYk(context, 61.0f);
        } else {
            layoutParams5.bottomMargin = cdg.ZYk(context, 24.0f);
        }
        addView(this.Pfn, layoutParams5);
    }

    public void oJ(cY cYVar, String str, com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar) {
        this.cFZ = cYVar;
        this.f13305so = str;
        this.jFA = oJVar;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void oJ() {
        if (this.oJ) {
            return;
        }
        this.oJ = true;
        ZYk();
        if (this.ZYk != null && this.cFZ.Zjw() != null && !TextUtils.isEmpty(this.cFZ.Zjw().oJ())) {
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.cFZ.Zjw(), this.ZYk, this.cFZ);
        }
        eZI ezi = this.ex;
        if (ezi != null) {
            cdg.oJ((TextView) null, ezi, this.cFZ);
            if (this.cFZ.Wd() != null) {
                this.ex.setVisibility(0);
            }
        }
        if (this.tB != null) {
            if (this.cFZ.Wd() != null && !TextUtils.isEmpty(this.cFZ.Wd().ZYk())) {
                this.tB.setText(this.cFZ.Wd().ZYk());
            } else if (!TextUtils.isEmpty(this.cFZ.Qzd())) {
                this.tB.setText(this.cFZ.Qzd());
            } else {
                this.tB.setVisibility(8);
            }
        }
        if (this.f13304ba != null) {
            String UUI = this.cFZ.UUI();
            if (!TextUtils.isEmpty(UUI)) {
                this.f13304ba.setText(UUI);
            } else {
                this.f13304ba.setVisibility(8);
            }
        }
        this.Pfn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.dLZ.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.oJ(dLZ.this.getContext(), dLZ.this.cFZ, dLZ.this.f13305so);
                } catch (Throwable unused) {
                }
            }
        });
    }
}
