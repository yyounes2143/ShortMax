package com.bytedance.sdk.openadsdk.api.factory;

import com.bytedance.sdk.openadsdk.api.PAGRequest;
import com.bytedance.sdk.openadsdk.common.ba;
/* loaded from: classes3.dex */
public interface IADLoader<R extends PAGRequest, L extends ba> {
    void loadAd(String str, R r10, L l10);
}
