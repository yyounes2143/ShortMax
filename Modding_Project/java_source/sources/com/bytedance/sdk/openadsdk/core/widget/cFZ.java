package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class cFZ extends com.bytedance.sdk.openadsdk.core.Pfn.cFZ {
    private boolean Pfn;
    private com.bytedance.sdk.openadsdk.core.Pfn.so ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f13303ba;
    private com.bytedance.sdk.openadsdk.core.Pfn.so ex;
    private si oJ;
    private so tB;

    public cFZ(Context context) {
        super(context);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        if (oJ()) {
            ZYk();
        }
    }

    public void ZYk() {
        if (this.Pfn) {
            return;
        }
        this.Pfn = true;
        Context context = getContext();
        setBackgroundColor(Color.parseColor("#2E2E2E"));
        LinearLayout linearLayout = new LinearLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setGravity(17);
        linearLayout.setOrientation(1);
        si siVar = new si(context);
        this.oJ = siVar;
        siVar.setId(520093745);
        int ZYk = cdg.ZYk(context, 64.0f);
        this.oJ.setLayoutParams(new RelativeLayout.LayoutParams(ZYk, ZYk));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.ZYk = soVar;
        soVar.setId(520093746);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(cdg.ZYk(context, 219.0f), -2);
        layoutParams2.topMargin = cdg.ZYk(context, 16.0f);
        this.ZYk.setLayoutParams(layoutParams2);
        this.ZYk.setEllipsize(TextUtils.TruncateAt.END);
        this.ZYk.setGravity(17);
        this.ZYk.setMaxWidth(cdg.ZYk(context, 150.0f));
        this.ZYk.setMaxLines(2);
        this.ZYk.setTextColor(-1);
        this.ZYk.setTextSize(1, 16.0f);
        so soVar2 = new so(context);
        this.tB = soVar2;
        soVar2.setId(520093748);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(cdg.ZYk(context, 219.0f), cdg.ZYk(context, 6.0f));
        layoutParams3.topMargin = cdg.ZYk(context, 24.0f);
        this.tB.setLayoutParams(layoutParams3);
        this.ex = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(cdg.ZYk(context, 138.0f), cdg.ZYk(context, 42.0f));
        layoutParams4.topMargin = cdg.ZYk(context, 48.0f);
        this.ex.setLayoutParams(layoutParams4);
        this.ex.setTextColor(-1);
        this.ex.setTextSize(16.0f);
        this.ex.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setStroke(2, -1);
        gradientDrawable.setCornerRadius(layoutParams4.height / 2);
        this.ex.setBackground(gradientDrawable);
        linearLayout.addView(this.oJ);
        linearLayout.addView(this.ZYk);
        linearLayout.addView(this.tB);
        linearLayout.addView(this.ex);
        addView(linearLayout);
    }

    @Nullable
    public com.bytedance.sdk.openadsdk.core.Pfn.so getDownloadButton() {
        return this.ex;
    }

    @Nullable
    public so getLoadingProgressBar() {
        return this.tB;
    }

    protected boolean oJ() {
        return true;
    }

    public void setProgress(int i10) {
        so soVar = this.tB;
        if (soVar != null) {
            soVar.setProgress(i10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ(com.bytedance.sdk.openadsdk.core.model.cY r7, int r8) {
        /*
            r6 = this;
            boolean r8 = r6.Pfn
            if (r8 == 0) goto L82
            if (r7 == 0) goto L82
            boolean r8 = r6.f13303ba
            if (r8 == 0) goto Lc
            goto L82
        Lc:
            r8 = 1
            r6.f13303ba = r8
            boolean r0 = r7.rg()
            r1 = 8
            if (r0 != 0) goto L4f
            com.bytedance.sdk.openadsdk.core.model.Ry r2 = r7.Zjw()
            if (r2 == 0) goto L4f
            com.bytedance.sdk.openadsdk.core.model.Ry r2 = r7.Zjw()
            java.lang.String r2 = r2.oJ()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L4f
            com.bytedance.sdk.openadsdk.core.model.Ry r2 = r7.Zjw()     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.component.Pfn.kkU r2 = com.bytedance.sdk.openadsdk.jFA.ex.oJ(r2)     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.component.Pfn.kkU r8 = r2.tB(r8)     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.openadsdk.jFA.ZYk r2 = new com.bytedance.sdk.openadsdk.jFA.ZYk     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.openadsdk.core.model.Ry r3 = r7.Zjw()     // Catch: java.lang.Throwable -> L4f
            java.lang.String r3 = r3.oJ()     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.openadsdk.utils.Ln r4 = new com.bytedance.sdk.openadsdk.utils.Ln     // Catch: java.lang.Throwable -> L4f
            com.bytedance.sdk.openadsdk.core.widget.si r5 = r6.oJ     // Catch: java.lang.Throwable -> L4f
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L4f
            r2.<init>(r7, r3, r4)     // Catch: java.lang.Throwable -> L4f
            r8.oJ(r2)     // Catch: java.lang.Throwable -> L4f
            goto L54
        L4f:
            com.bytedance.sdk.openadsdk.core.widget.si r8 = r6.oJ
            r8.setVisibility(r1)
        L54:
            if (r0 == 0) goto L5e
            com.bytedance.sdk.openadsdk.core.Pfn.so r8 = r6.ZYk
            java.lang.String r0 = "Loading"
            r8.setText(r0)
            goto L77
        L5e:
            java.lang.String r8 = r7.UUI()
            boolean r8 = android.text.TextUtils.isEmpty(r8)
            if (r8 != 0) goto L72
            com.bytedance.sdk.openadsdk.core.Pfn.so r8 = r6.ZYk
            java.lang.String r0 = r7.UUI()
            r8.setText(r0)
            goto L77
        L72:
            com.bytedance.sdk.openadsdk.core.Pfn.so r8 = r6.ZYk
            r8.setVisibility(r1)
        L77:
            com.bytedance.sdk.openadsdk.core.Pfn.so r8 = r6.ex
            if (r8 == 0) goto L82
            java.lang.String r7 = r7.ypD()
            r8.setText(r7)
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.widget.cFZ.oJ(com.bytedance.sdk.openadsdk.core.model.cY, int):void");
    }
}
