package com.bytedance.sdk.openadsdk.api.bidding;

import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
/* loaded from: classes3.dex */
public class PAGBiddingRequest {
    private PAGBannerSize oJ = null;
    private String ZYk = null;
    private String tB = null;

    public String getAdxId() {
        return this.tB;
    }

    public PAGBannerSize getBannerSize() {
        return this.oJ;
    }

    public String getSlotId() {
        return this.ZYk;
    }

    public void setAdxId(String str) {
        this.tB = str;
    }

    public void setBannerSize(PAGBannerSize pAGBannerSize) {
        this.oJ = pAGBannerSize;
    }

    public void setSlotId(String str) {
        this.ZYk = str;
    }
}
