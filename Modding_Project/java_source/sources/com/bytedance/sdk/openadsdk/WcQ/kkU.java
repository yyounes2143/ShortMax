package com.bytedance.sdk.openadsdk.WcQ;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.si;
/* loaded from: classes3.dex */
public abstract class kkU extends com.bytedance.sdk.openadsdk.core.Pfn.tB {
    protected com.bytedance.sdk.openadsdk.core.Pfn.so Pfn;
    protected com.bytedance.sdk.openadsdk.core.Pfn.ex ZYk;

    /* renamed from: ba  reason: collision with root package name */
    protected com.bytedance.sdk.openadsdk.core.Pfn.so f12856ba;
    protected com.bytedance.sdk.openadsdk.core.Pfn.so ex;
    protected com.bytedance.sdk.openadsdk.core.Pfn.tB oJ;
    protected si tB;

    public kkU(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        oJ(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.bytedance.sdk.openadsdk.core.Pfn.tB Pfn(Context context) {
        return new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.bytedance.sdk.openadsdk.core.Pfn.so ZYk(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar.setEllipsize(TextUtils.TruncateAt.END);
        soVar.setMaxLines(1);
        soVar.setTextColor(Color.parseColor("#FF999999"));
        soVar.setTextSize(2, 16.0f);
        return soVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.bytedance.sdk.openadsdk.core.Pfn.ex ba(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        exVar.setScaleType(ImageView.ScaleType.FIT_CENTER);
        return exVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public si cFZ(Context context) {
        si siVar = new si(context);
        siVar.setScaleType(ImageView.ScaleType.FIT_XY);
        siVar.setBackgroundColor(0);
        return siVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.bytedance.sdk.openadsdk.core.Pfn.so ex(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_backup_btn_1"));
        soVar.setGravity(17);
        soVar.setText(cY.oJ(context, "tt_video_download_apk"));
        soVar.setTextColor(-1);
        soVar.setTextSize(2, 14.0f);
        return soVar;
    }

    public FrameLayout getTtAdContainer() {
        return this.oJ;
    }

    public TextView getTtFullAdAppName() {
        return this.ex;
    }

    public TextView getTtFullAdDesc() {
        return this.Pfn;
    }

    public TextView getTtFullAdDownload() {
        return this.f12856ba;
    }

    public si getTtFullAdIcon() {
        return this.tB;
    }

    public ImageView getTtFullImg() {
        return this.ZYk;
    }

    protected abstract void oJ(Context context);

    /* JADX INFO: Access modifiers changed from: protected */
    public PAGLogoView so(Context context) {
        PAGLogoView pAGLogoView = new PAGLogoView(context);
        pAGLogoView.setId(520093739);
        return pAGLogoView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.bytedance.sdk.openadsdk.core.Pfn.so tB(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar.setEllipsize(TextUtils.TruncateAt.END);
        soVar.setMaxLines(1);
        soVar.setSingleLine();
        soVar.setTextColor(Color.parseColor("#FF999999"));
        soVar.setTextSize(2, 12.0f);
        return soVar;
    }
}
