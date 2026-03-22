package androidx.webkit;

import android.os.Build;
import android.util.Log;
import android.webkit.WebSettings;
import androidx.annotation.RequiresOptIn;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.webkit.internal.ApiFeature;
import androidx.webkit.internal.ApiHelperForN;
import androidx.webkit.internal.ApiHelperForO;
import androidx.webkit.internal.ApiHelperForQ;
import androidx.webkit.internal.WebSettingsAdapter;
import androidx.webkit.internal.WebSettingsNoOpAdapter;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes2.dex */
public class WebSettingsCompat {
    public static final int ATTRIBUTION_BEHAVIOR_APP_SOURCE_AND_APP_TRIGGER = 3;
    public static final int ATTRIBUTION_BEHAVIOR_APP_SOURCE_AND_WEB_TRIGGER = 1;
    public static final int ATTRIBUTION_BEHAVIOR_DISABLED = 0;
    public static final int ATTRIBUTION_BEHAVIOR_WEB_SOURCE_AND_WEB_TRIGGER = 2;
    @Deprecated
    public static final int DARK_STRATEGY_PREFER_WEB_THEME_OVER_USER_AGENT_DARKENING = 2;
    @Deprecated
    public static final int DARK_STRATEGY_USER_AGENT_DARKENING_ONLY = 0;
    @Deprecated
    public static final int DARK_STRATEGY_WEB_THEME_DARKENING_ONLY = 1;
    @Deprecated
    public static final int FORCE_DARK_AUTO = 1;
    @Deprecated
    public static final int FORCE_DARK_OFF = 0;
    @Deprecated
    public static final int FORCE_DARK_ON = 2;
    @ExperimentalSpeculativeLoading
    public static final int SPECULATIVE_LOADING_DISABLED = 0;
    @ExperimentalSpeculativeLoading
    public static final int SPECULATIVE_LOADING_PRERENDER_ENABLED = 1;
    private static final String TAG = "WebSettingsCompat";
    public static final int WEB_AUTHENTICATION_SUPPORT_FOR_APP = 1;
    public static final int WEB_AUTHENTICATION_SUPPORT_FOR_BROWSER = 2;
    public static final int WEB_AUTHENTICATION_SUPPORT_NONE = 0;

    @Target({ElementType.METHOD, ElementType.FIELD, ElementType.TYPE})
    @RequiresOptIn(level = RequiresOptIn.Level.ERROR)
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes2.dex */
    public @interface ExperimentalBackForwardCacheSettings {
    }

    @Target({ElementType.METHOD, ElementType.FIELD, ElementType.TYPE})
    @RequiresOptIn(level = RequiresOptIn.Level.ERROR)
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes2.dex */
    public @interface ExperimentalSpeculativeLoading {
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes2.dex */
    public @interface ForceDark {
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes2.dex */
    public @interface ForceDarkStrategy {
    }

    @Target({ElementType.METHOD, ElementType.PARAMETER, ElementType.FIELD, ElementType.LOCAL_VARIABLE})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface HyperlinkContextMenuItems {
        public static final int COPY_LINK_ADDRESS = 1;
        public static final int COPY_LINK_TEXT = 2;
        public static final int DISABLED = 0;
        public static final int OPEN_LINK = 4;
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes2.dex */
    public @interface MenuItemFlags {
    }

    private WebSettingsCompat() {
    }

    public static boolean areCookiesIncludedInShouldInterceptRequest(WebSettings webSettings) {
        if (WebViewFeatureInternal.COOKIE_INTERCEPT.isSupportedByWebView()) {
            return getAdapter(webSettings).getCookieAccessForShouldInterceptRequestEnabled();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    private static WebSettingsAdapter getAdapter(WebSettings webSettings) {
        try {
            return WebViewGlueCommunicator.getCompatConverter().convertSettings(webSettings);
        } catch (ClassCastException e10) {
            if (Build.VERSION.SDK_INT == 30 && "android.webkit.WebSettingsWrapper".equals(webSettings.getClass().getCanonicalName())) {
                Log.e(TAG, "Error converting WebSettings to Chrome implementation. All AndroidX method calls on this WebSettings instance will be no-op calls. See https://crbug.com/388824130 for more info.", e10);
                return new WebSettingsNoOpAdapter();
            }
            throw e10;
        }
    }

    public static int getAttributionRegistrationBehavior(WebSettings webSettings) {
        if (WebViewFeatureInternal.ATTRIBUTION_REGISTRATION_BEHAVIOR.isSupportedByWebView()) {
            return getAdapter(webSettings).getAttributionRegistrationBehavior();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static boolean getBackForwardCacheEnabled(WebSettings webSettings) {
        if (WebViewFeatureInternal.BACK_FORWARD_CACHE.isSupportedByWebView()) {
            return getAdapter(webSettings).getBackForwardCacheEnabled();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @ExperimentalBackForwardCacheSettings
    public static BackForwardCacheSettings getBackForwardCacheSettings(WebSettings webSettings) {
        if (WebViewFeatureInternal.BACK_FORWARD_CACHE_SETTINGS.isSupportedByWebView()) {
            return getAdapter(webSettings).getBackForwardCacheSettings();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static int getDisabledActionModeMenuItems(WebSettings webSettings) {
        ApiFeature.N n10 = WebViewFeatureInternal.DISABLED_ACTION_MODE_MENU_ITEMS;
        if (n10.isSupportedByFramework()) {
            return ApiHelperForN.getDisabledActionModeMenuItems(webSettings);
        }
        if (n10.isSupportedByWebView()) {
            return getAdapter(webSettings).getDisabledActionModeMenuItems();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static boolean getEnterpriseAuthenticationAppLinkPolicyEnabled(WebSettings webSettings) {
        if (WebViewFeatureInternal.ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY.isSupportedByWebView()) {
            return getAdapter(webSettings).getEnterpriseAuthenticationAppLinkPolicyEnabled();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Deprecated
    public static int getForceDark(WebSettings webSettings) {
        ApiFeature.Q q10 = WebViewFeatureInternal.FORCE_DARK;
        if (q10.isSupportedByFramework()) {
            return ApiHelperForQ.getForceDark(webSettings);
        }
        if (q10.isSupportedByWebView()) {
            return getAdapter(webSettings).getForceDark();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Deprecated
    public static int getForceDarkStrategy(WebSettings webSettings) {
        if (WebViewFeatureInternal.FORCE_DARK_STRATEGY.isSupportedByWebView()) {
            return getAdapter(webSettings).getForceDark();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static boolean getHasEnrolledInstrumentEnabled(WebSettings webSettings) {
        if (WebViewFeatureInternal.PAYMENT_REQUEST.isSupportedByWebView()) {
            return getAdapter(webSettings).getHasEnrolledInstrumentEnabled();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static boolean getOffscreenPreRaster(WebSettings webSettings) {
        return webSettings.getOffscreenPreRaster();
    }

    public static boolean getPaymentRequestEnabled(WebSettings webSettings) {
        if (WebViewFeatureInternal.PAYMENT_REQUEST.isSupportedByWebView()) {
            return getAdapter(webSettings).getPaymentRequestEnabled();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Deprecated(forRemoval = true)
    public static Set<String> getRequestedWithHeaderOriginAllowList(WebSettings webSettings) {
        return Collections.emptySet();
    }

    public static boolean getSafeBrowsingEnabled(WebSettings webSettings) {
        ApiFeature.O o10 = WebViewFeatureInternal.SAFE_BROWSING_ENABLE;
        if (o10.isSupportedByFramework()) {
            return ApiHelperForO.getSafeBrowsingEnabled(webSettings);
        }
        if (o10.isSupportedByWebView()) {
            return getAdapter(webSettings).getSafeBrowsingEnabled();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @ExperimentalSpeculativeLoading
    public static int getSpeculativeLoadingStatus(WebSettings webSettings) {
        if (WebViewFeatureInternal.SPECULATIVE_LOADING.isSupportedByWebView()) {
            return getAdapter(webSettings).getSpeculativeLoadingStatus();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static UserAgentMetadata getUserAgentMetadata(WebSettings webSettings) {
        if (WebViewFeatureInternal.USER_AGENT_METADATA.isSupportedByWebView()) {
            return getAdapter(webSettings).getUserAgentMetadata();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @UiThread
    public static int getWebAuthenticationSupport(WebSettings webSettings) {
        if (WebViewFeatureInternal.WEB_AUTHENTICATION.isSupportedByWebView()) {
            return getAdapter(webSettings).getWebAuthenticationSupport();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static WebViewMediaIntegrityApiStatusConfig getWebViewMediaIntegrityApiStatus(WebSettings webSettings) {
        if (WebViewFeatureInternal.WEBVIEW_MEDIA_INTEGRITY_API_STATUS.isSupportedByWebView()) {
            return getAdapter(webSettings).getWebViewMediaIntegrityApiStatus();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static boolean isAlgorithmicDarkeningAllowed(WebSettings webSettings) {
        if (WebViewFeatureInternal.ALGORITHMIC_DARKENING.isSupportedByWebView()) {
            return getAdapter(webSettings).isAlgorithmicDarkeningAllowed();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setAlgorithmicDarkeningAllowed(WebSettings webSettings, boolean z10) {
        if (WebViewFeatureInternal.ALGORITHMIC_DARKENING.isSupportedByWebView()) {
            getAdapter(webSettings).setAlgorithmicDarkeningAllowed(z10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setAttributionRegistrationBehavior(WebSettings webSettings, int i10) {
        if (WebViewFeatureInternal.ATTRIBUTION_REGISTRATION_BEHAVIOR.isSupportedByWebView()) {
            getAdapter(webSettings).setAttributionRegistrationBehavior(i10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setBackForwardCacheEnabled(WebSettings webSettings, boolean z10) {
        if (WebViewFeatureInternal.BACK_FORWARD_CACHE.isSupportedByWebView()) {
            getAdapter(webSettings).setBackForwardCacheEnabled(z10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @ExperimentalBackForwardCacheSettings
    public static void setBackForwardCacheSettings(WebSettings webSettings, BackForwardCacheSettings backForwardCacheSettings) {
        if (WebViewFeatureInternal.BACK_FORWARD_CACHE_SETTINGS.isSupportedByWebView()) {
            getAdapter(webSettings).setBackForwardCacheSettings(backForwardCacheSettings);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setCookiesIncludedInShouldInterceptRequest(WebSettings webSettings, boolean z10) {
        if (WebViewFeatureInternal.COOKIE_INTERCEPT.isSupportedByWebView()) {
            getAdapter(webSettings).setCookieAccessForShouldInterceptRequestEnabled(z10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setDisabledActionModeMenuItems(WebSettings webSettings, int i10) {
        ApiFeature.N n10 = WebViewFeatureInternal.DISABLED_ACTION_MODE_MENU_ITEMS;
        if (n10.isSupportedByFramework()) {
            ApiHelperForN.setDisabledActionModeMenuItems(webSettings, i10);
        } else if (n10.isSupportedByWebView()) {
            getAdapter(webSettings).setDisabledActionModeMenuItems(i10);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    public static void setEnterpriseAuthenticationAppLinkPolicyEnabled(WebSettings webSettings, boolean z10) {
        if (WebViewFeatureInternal.ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY.isSupportedByWebView()) {
            getAdapter(webSettings).setEnterpriseAuthenticationAppLinkPolicyEnabled(z10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Deprecated
    public static void setForceDark(WebSettings webSettings, int i10) {
        ApiFeature.Q q10 = WebViewFeatureInternal.FORCE_DARK;
        if (q10.isSupportedByFramework()) {
            ApiHelperForQ.setForceDark(webSettings, i10);
        } else if (q10.isSupportedByWebView()) {
            getAdapter(webSettings).setForceDark(i10);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Deprecated
    public static void setForceDarkStrategy(WebSettings webSettings, int i10) {
        if (WebViewFeatureInternal.FORCE_DARK_STRATEGY.isSupportedByWebView()) {
            getAdapter(webSettings).setForceDarkStrategy(i10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setHasEnrolledInstrumentEnabled(WebSettings webSettings, boolean z10) {
        if (WebViewFeatureInternal.PAYMENT_REQUEST.isSupportedByWebView()) {
            getAdapter(webSettings).setHasEnrolledInstrumentEnabled(z10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setHyperlinkContextMenuItems(WebSettings webSettings, int i10) {
        if (WebViewFeatureInternal.HYPERLINK_CONTEXT_MENU_ITEMS.isSupportedByWebView()) {
            getAdapter(webSettings).setHyperlinkContextMenuItems(i10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setOffscreenPreRaster(WebSettings webSettings, boolean z10) {
        webSettings.setOffscreenPreRaster(z10);
    }

    public static void setPaymentRequestEnabled(WebSettings webSettings, boolean z10) {
        if (WebViewFeatureInternal.PAYMENT_REQUEST.isSupportedByWebView()) {
            getAdapter(webSettings).setPaymentRequestEnabled(z10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setSafeBrowsingEnabled(WebSettings webSettings, boolean z10) {
        ApiFeature.O o10 = WebViewFeatureInternal.SAFE_BROWSING_ENABLE;
        if (o10.isSupportedByFramework()) {
            ApiHelperForO.setSafeBrowsingEnabled(webSettings, z10);
        } else if (o10.isSupportedByWebView()) {
            getAdapter(webSettings).setSafeBrowsingEnabled(z10);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @ExperimentalSpeculativeLoading
    public static void setSpeculativeLoadingStatus(WebSettings webSettings, int i10) {
        if (WebViewFeatureInternal.SPECULATIVE_LOADING.isSupportedByWebView()) {
            getAdapter(webSettings).setSpeculativeLoadingStatus(i10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setUserAgentMetadata(WebSettings webSettings, UserAgentMetadata userAgentMetadata) {
        if (WebViewFeatureInternal.USER_AGENT_METADATA.isSupportedByWebView()) {
            getAdapter(webSettings).setUserAgentMetadata(userAgentMetadata);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @UiThread
    public static void setWebAuthenticationSupport(WebSettings webSettings, int i10) {
        if (WebViewFeatureInternal.WEB_AUTHENTICATION.isSupportedByWebView()) {
            getAdapter(webSettings).setWebAuthenticationSupport(i10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setWebViewMediaIntegrityApiStatus(WebSettings webSettings, WebViewMediaIntegrityApiStatusConfig webViewMediaIntegrityApiStatusConfig) {
        if (WebViewFeatureInternal.WEBVIEW_MEDIA_INTEGRITY_API_STATUS.isSupportedByWebView()) {
            getAdapter(webSettings).setWebViewMediaIntegrityApiStatus(webViewMediaIntegrityApiStatusConfig);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Deprecated(forRemoval = true)
    public static void setRequestedWithHeaderOriginAllowList(WebSettings webSettings, Set<String> set) {
    }
}
