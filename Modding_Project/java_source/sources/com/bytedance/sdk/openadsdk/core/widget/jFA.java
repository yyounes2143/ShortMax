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
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class jFA extends FrameLayout {
    private TextView Pfn;
    private si ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private PAGLogoView f13307ba;
    private com.bytedance.sdk.openadsdk.core.Pfn.so cFZ;
    private com.bytedance.sdk.openadsdk.core.ZYk.oJ dLZ;
    private eZI ex;
    private String jFA;
    private boolean kkU;
    private boolean oJ;

    /* renamed from: so  reason: collision with root package name */
    private cY f13308so;
    private TextView tB;

    public jFA(@NonNull Context context) {
        super(context);
        setVisibility(8);
        setId(com.bytedance.sdk.openadsdk.utils.eZI.zGT);
    }

    public void setClickListener(com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar) {
        this.dLZ = oJVar;
        TextView textView = this.Pfn;
        if (textView != null) {
            textView.setOnClickListener(oJVar);
            this.Pfn.setOnTouchListener(this.dLZ);
        }
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
        boolean z10 = this.f13308so.Tt() == 1;
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
        this.cFZ = soVar2;
        soVar2.setEllipsize(truncateAt);
        this.cFZ.setGravity(17);
        this.cFZ.setMaxLines(2);
        this.cFZ.setTextColor(Color.parseColor("#BFFFFFFF"));
        this.cFZ.setTextSize(2, 16.0f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = cdg.ZYk(context, 8.0f);
        pfn.addView(this.cFZ, layoutParams3);
        this.ex = new eZI(context, true);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, cdg.ZYk(context, 16.0f));
        layoutParams4.topMargin = cdg.ZYk(context, 12.0f);
        this.ex.setVisibility(8);
        pfn.addView(this.ex, layoutParams4);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.Pfn = soVar3;
        soVar3.setId(520093707);
        this.Pfn.setGravity(17);
        this.Pfn.setText(com.bytedance.sdk.component.utils.cY.oJ(context, "tt_video_download_apk"));
        this.Pfn.setTextColor(-1);
        this.Pfn.setTextSize(2, 16.0f);
        this.Pfn.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_reward_full_video_backup_btn_bg"));
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, cdg.ZYk(context, 44.0f));
        layoutParams5.topMargin = cdg.ZYk(context, 54.0f);
        pfn.addView(this.Pfn, layoutParams5);
        if (!this.kkU && this.f13308so.nYE() && Ln.tB(this.f13308so)) {
            this.Pfn.setVisibility(8);
        }
        this.f13307ba = PAGLogoView.createPAGLogoViewByMaterial(context, this.f13308so);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, cdg.ZYk(context, 14.0f));
        layoutParams6.gravity = 8388691;
        layoutParams6.leftMargin = cdg.ZYk(context, 18.0f);
        if (z10) {
            layoutParams6.bottomMargin = cdg.ZYk(context, 61.0f);
        } else {
            layoutParams6.bottomMargin = cdg.ZYk(context, 24.0f);
        }
        addView(this.f13307ba, layoutParams6);
    }

    public void oJ(cY cYVar, String str, com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar, boolean z10) {
        this.f13308so = cYVar;
        this.jFA = str;
        this.kkU = z10;
        this.dLZ = oJVar;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void oJ() {
        if (this.oJ) {
            return;
        }
        this.oJ = true;
        ZYk();
        this.Pfn.setOnClickListener(this.dLZ);
        this.Pfn.setOnTouchListener(this.dLZ);
        String ypD = this.f13308so.ypD();
        if (!TextUtils.isEmpty(ypD)) {
            this.Pfn.setText(ypD);
        }
        if (this.ZYk != null && this.f13308so.Zjw() != null && !TextUtils.isEmpty(this.f13308so.Zjw().oJ())) {
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.f13308so.Zjw(), this.ZYk, this.f13308so);
        }
        eZI ezi = this.ex;
        if (ezi != null) {
            cdg.oJ((TextView) null, ezi, this.f13308so);
            if (this.f13308so.Wd() != null) {
                this.ex.setVisibility(0);
            }
        }
        if (this.tB != null) {
            if (this.f13308so.Wd() != null && !TextUtils.isEmpty(this.f13308so.Wd().ZYk())) {
                this.tB.setText(this.f13308so.Wd().ZYk());
            } else if (!TextUtils.isEmpty(this.f13308so.Qzd())) {
                this.tB.setText(this.f13308so.Qzd());
            } else {
                this.tB.setVisibility(8);
            }
        }
        if (this.cFZ != null) {
            String UUI = this.f13308so.UUI();
            if (!TextUtils.isEmpty(UUI)) {
                this.cFZ.setText(UUI);
            } else {
                this.cFZ.setVisibility(8);
            }
        }
        this.f13307ba.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.jFA.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.oJ(jFA.this.getContext(), jFA.this.f13308so, jFA.this.jFA);
                } catch (Throwable unused) {
                }
            }
        });
    }
}
