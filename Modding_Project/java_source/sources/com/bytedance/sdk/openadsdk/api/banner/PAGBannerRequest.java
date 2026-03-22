package com.bytedance.sdk.openadsdk.api.banner;

import com.bytedance.sdk.openadsdk.api.PAGRequest;
/* loaded from: classes3.dex */
public class PAGBannerRequest extends PAGRequest {
    private PAGBannerSize oJ;

    public PAGBannerRequest(PAGBannerSize pAGBannerSize) {
        this.oJ = pAGBannerSize;
    }

    public PAGBannerSize getAdSize() {
        return this.oJ;
    }

    public void setAdSize(PAGBannerSize pAGBannerSize) {
        this.oJ = pAGBannerSize;
    }
}
