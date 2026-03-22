package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.bridge;

import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b implements a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final WebView f34538a;

    public b(@NotNull WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.f34538a = webView;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.bridge.a
    public void a() {
        this.f34538a.evaluateJavascript("notifyReadyEvent()", null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.bridge.a
    public void a(boolean z10) {
        WebView webView = this.f34538a;
        webView.evaluateJavascript("setIsViewable(" + z10 + ')', null);
    }
}
