package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdCantPlayWithoutWebView extends VungleError {
    public AdCantPlayWithoutWebView() {
        super(Sdk.SDKError.Reason.WEBVIEW_ERROR, "No WebView when playing ads.", null);
    }
}
