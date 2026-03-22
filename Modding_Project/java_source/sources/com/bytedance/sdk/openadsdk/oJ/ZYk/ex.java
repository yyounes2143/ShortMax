package com.bytedance.sdk.openadsdk.oJ.ZYk;

import android.view.View;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.bytedance.sdk.openadsdk.core.model.cY;
/* loaded from: classes3.dex */
public class ex implements PAGNativeAdData {
    private final oJ oJ;

    public ex(oJ oJVar) {
        this.oJ = oJVar;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public View getAdChoicesView() {
        oJ oJVar = this.oJ;
        if (oJVar != null) {
            return oJVar.dLZ();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public View getAdLogoView() {
        oJ oJVar = this.oJ;
        if (oJVar != null) {
            return oJVar.kkU();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public String getButtonText() {
        oJ oJVar = this.oJ;
        if (oJVar != null) {
            return oJVar.ba();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public String getDescription() {
        oJ oJVar = this.oJ;
        if (oJVar != null) {
            return oJVar.Pfn();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public PAGImageItem getIcon() {
        oJ oJVar = this.oJ;
        if (oJVar != null) {
            return oJVar.tB();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public PAGNativeAdData.PAGNativeMediaType getMediaType() {
        if (cY.Pfn(this.oJ.oJ)) {
            return PAGNativeAdData.PAGNativeMediaType.PAGNativeMediaTypeVideo;
        }
        return PAGNativeAdData.PAGNativeMediaType.PAGNativeMediaTypeImage;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public PAGMediaView getMediaView() {
        oJ oJVar = this.oJ;
        if (oJVar != null) {
            return oJVar.cFZ();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public String getTitle() {
        oJ oJVar = this.oJ;
        if (oJVar != null) {
            return oJVar.ex();
        }
        return null;
    }
}
