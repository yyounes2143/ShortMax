package com.vungle.ads.internal.ui.view;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import com.vungle.ads.internal.omsdk.WebViewObserver;
import kotlin.Metadata;
import kotlinx.serialization.json.JsonObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebViewAPI.kt */
@Metadata
/* loaded from: classes7.dex */
public interface WebViewAPI {

    /* compiled from: WebViewAPI.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface MraidDelegate {
        boolean processCommand(@NotNull String str, @NotNull JsonObject jsonObject);
    }

    /* compiled from: WebViewAPI.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface WebClientErrorHandler {
        void onReceivedError(@NotNull String str, boolean z10);

        void onRenderProcessUnresponsive(@Nullable WebView webView, @Nullable WebViewRenderProcess webViewRenderProcess);

        boolean onWebRenderingProcessGone(@Nullable WebView webView, @Nullable Boolean bool);
    }

    void notifyPropertiesChange(boolean z10);

    void setAdVisibility(boolean z10);

    void setConsentStatus(boolean z10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4);

    void setErrorHandler(@NotNull WebClientErrorHandler webClientErrorHandler);

    void setMraidDelegate(@Nullable MraidDelegate mraidDelegate);

    void setWebViewObserver(@Nullable WebViewObserver webViewObserver);
}
