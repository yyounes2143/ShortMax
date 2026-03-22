package com.vungle.ads.internal.platform;

import android.content.Context;
import android.util.AndroidRuntimeException;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.core.util.Consumer;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.util.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebViewUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class WebViewUtil {
    @NotNull
    public static final WebViewUtil INSTANCE = new WebViewUtil();
    @NotNull
    private static final String TAG = "WebViewUtil";

    private WebViewUtil() {
    }

    public final void applyWebSettings(@NotNull WebView webView, @Nullable AdPayload.WebViewSettings webViewSettings) {
        boolean z10;
        boolean z11;
        Boolean allowUniversalAccessFromFileUrls;
        Boolean allowFileAccessFromFileUrls;
        Intrinsics.checkNotNullParameter(webView, "webView");
        WebSettings settings = webView.getSettings();
        Intrinsics.checkNotNullExpressionValue(settings, "webView.settings");
        settings.setBuiltInZoomControls(false);
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSaveFormData(true);
        settings.setUseWideViewPort(false);
        settings.setAllowFileAccess(true);
        if (webViewSettings != null && (allowFileAccessFromFileUrls = webViewSettings.getAllowFileAccessFromFileUrls()) != null) {
            z10 = allowFileAccessFromFileUrls.booleanValue();
        } else {
            z10 = false;
        }
        settings.setAllowFileAccessFromFileURLs(z10);
        if (webViewSettings != null && (allowUniversalAccessFromFileUrls = webViewSettings.getAllowUniversalAccessFromFileUrls()) != null) {
            z11 = allowUniversalAccessFromFileUrls.booleanValue();
        } else {
            z11 = false;
        }
        settings.setAllowUniversalAccessFromFileURLs(z11);
        webView.setVisibility(4);
        settings.setMediaPlaybackRequiresUserGesture(false);
    }

    public final void getUserAgent(@NotNull Context context, @NotNull Consumer<String> consumer) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        try {
            consumer.accept(WebSettings.getDefaultUserAgent(context));
        } catch (Exception e10) {
            if (e10 instanceof AndroidRuntimeException) {
                Logger.Companion.e(TAG, "WebView could be missing here");
            }
            consumer.accept(null);
        }
    }
}
