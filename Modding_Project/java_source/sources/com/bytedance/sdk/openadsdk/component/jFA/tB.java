package com.bytedance.sdk.openadsdk.component.jFA;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.eZI;
import com.bytedance.sdk.openadsdk.core.widget.si;
/* loaded from: classes3.dex */
public abstract class tB extends com.bytedance.sdk.openadsdk.core.Pfn.cFZ {
    com.bytedance.sdk.openadsdk.core.widget.tB BTZ;
    com.bytedance.sdk.openadsdk.core.Pfn.so Pfn;
    com.bytedance.sdk.openadsdk.core.Pfn.tB ZYk;

    /* renamed from: ba  reason: collision with root package name */
    si f12985ba;
    com.bytedance.sdk.openadsdk.core.Pfn.so cFZ;
    com.bytedance.sdk.openadsdk.core.Pfn.so dLZ;
    PAGLogoView ex;
    si jFA;
    com.bytedance.sdk.openadsdk.core.Pfn.so kkU;
    com.bytedance.sdk.openadsdk.core.Pfn.ex oJ;

    /* renamed from: so  reason: collision with root package name */
    final cFZ f12986so;
    com.bytedance.sdk.openadsdk.core.Pfn.ex tB;

    public tB(Context context) {
        super(context);
        this.f12986so = new cFZ(context);
    }

    public abstract com.bytedance.sdk.openadsdk.core.Pfn.ex getAdIconView();

    public PAGLogoView getAdLogo() {
        return this.ex;
    }

    public abstract com.bytedance.sdk.openadsdk.core.Pfn.so getAdTitleTextView();

    public com.bytedance.sdk.openadsdk.core.Pfn.ex getBackImage() {
        return this.oJ;
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.so getClickButton() {
        return this.Pfn;
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.so getContent() {
        return this.dLZ;
    }

    public com.bytedance.sdk.openadsdk.core.widget.tB getDspAdChoice() {
        return this.BTZ;
    }

    public si getHostAppIcon() {
        return this.f12985ba;
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.so getHostAppName() {
        return this.cFZ;
    }

    public si getIconOnlyView() {
        return this.jFA;
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.ex getImageView() {
        return this.tB;
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.Pfn getOverlayLayout() {
        return null;
    }

    public abstract eZI getScoreBar();

    public com.bytedance.sdk.openadsdk.core.Pfn.so getTitle() {
        return this.kkU;
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.so getTopCountDown() {
        cFZ cfz = this.f12986so;
        if (cfz != null) {
            return cfz.getTopCountDown();
        }
        return null;
    }

    public View getTopDisLike() {
        cFZ cfz = this.f12986so;
        if (cfz != null) {
            return cfz.getTopDislike();
        }
        return null;
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.ex getTopSkip() {
        cFZ cfz = this.f12986so;
        if (cfz != null) {
            return cfz.getTopSkip();
        }
        return null;
    }

    public abstract View getUserInfo();

    public com.bytedance.sdk.openadsdk.core.Pfn.tB getVideoContainer() {
        return this.ZYk;
    }
}
