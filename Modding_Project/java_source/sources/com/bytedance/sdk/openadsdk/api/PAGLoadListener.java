package com.bytedance.sdk.openadsdk.api;

import androidx.annotation.MainThread;
import com.bytedance.sdk.openadsdk.common.ba;
/* loaded from: classes3.dex */
public interface PAGLoadListener<Ad> extends ba {
    @MainThread
    void onAdLoaded(Ad ad2);

    @Override // com.bytedance.sdk.openadsdk.common.ba
    @MainThread
    void onError(int i10, String str);
}
