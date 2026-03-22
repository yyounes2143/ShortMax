package com.bytedance.sdk.openadsdk.api.banner;

import android.content.Context;
import com.bytedance.sdk.openadsdk.utils.tB;
/* loaded from: classes3.dex */
public final class PAGBannerSize {
    private int ZYk;
    private int ex;
    private int oJ;
    private int tB = 1;
    public static final PAGBannerSize BANNER_W_320_H_50 = new PAGBannerSize(320, 50);
    public static final PAGBannerSize BANNER_W_300_H_250 = new PAGBannerSize(300, 250);
    public static final PAGBannerSize BANNER_W_728_H_90 = new PAGBannerSize(728, 90);

    public PAGBannerSize(int i10, int i11) {
        this.oJ = i10;
        this.ZYk = i11;
    }

    public static PAGBannerSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(Context context, int i10) {
        int oJ = tB.oJ(context, i10, 0);
        if (oJ == tB.oJ) {
            return new PAGBannerSize(-1, -1);
        }
        PAGBannerSize pAGBannerSize = new PAGBannerSize(i10, oJ);
        pAGBannerSize.tB = 2;
        return pAGBannerSize;
    }

    public static PAGBannerSize getCurrentOrientationInlineAdaptiveBannerAdSize(Context context, int i10) {
        int oJ = tB.oJ(context, 0);
        if (oJ == tB.oJ) {
            return new PAGBannerSize(-1, -1);
        }
        PAGBannerSize pAGBannerSize = new PAGBannerSize(i10, 0);
        pAGBannerSize.ex = oJ;
        pAGBannerSize.tB = 3;
        return pAGBannerSize;
    }

    public static PAGBannerSize getInlineAdaptiveBannerAdSize(int i10, int i11) {
        PAGBannerSize pAGBannerSize = new PAGBannerSize(i10, 0);
        pAGBannerSize.ex = i11;
        pAGBannerSize.tB = 3;
        return pAGBannerSize;
    }

    public int getHeight() {
        return this.ZYk;
    }

    public int getMaxHeight() {
        return this.ex;
    }

    public int getType() {
        return this.tB;
    }

    public int getWidth() {
        return this.oJ;
    }
}
