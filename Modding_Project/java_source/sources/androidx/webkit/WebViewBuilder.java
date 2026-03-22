package androidx.webkit;

import android.content.Context;
import android.webkit.WebView;
import androidx.annotation.RequiresOptIn;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;
import org.chromium.support_lib_boundary.WebViewBuilderBoundaryInterface;
@Experimental
/* loaded from: classes2.dex */
public final class WebViewBuilder {
    public static final int PRESET_LEGACY = 0;
    private final List<RestrictionAllowlist> mAllowLists = new ArrayList();
    WebViewBuilderBoundaryInterface mBuilderStateBoundary;
    private String mProfileName;
    private boolean mRestrictJavascriptInterface;

    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn(level = RequiresOptIn.Level.ERROR)
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes2.dex */
    public @interface Experimental {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes2.dex */
    public @interface Preset {
    }

    public WebViewBuilder(int i10) {
        if (i10 == 0) {
            return;
        }
        throw new IllegalArgumentException("Invalid preset: " + i10);
    }

    public WebViewBuilder addAllowlist(RestrictionAllowlist restrictionAllowlist) {
        this.mAllowLists.add(restrictionAllowlist);
        return this;
    }

    @UiThread
    public WebView build(Context context) {
        if (WebViewFeatureInternal.WEBVIEW_BUILDER_V1.isSupportedByWebView()) {
            if (this.mBuilderStateBoundary == null) {
                this.mBuilderStateBoundary = WebViewGlueCommunicator.getFactory().getWebViewBuilder();
            }
            WebViewBuilderBoundaryInterface.Config config = new WebViewBuilderBoundaryInterface.Config();
            config.restrictJavascriptInterface = this.mRestrictJavascriptInterface;
            config.profileName = this.mProfileName;
            try {
                for (RestrictionAllowlist restrictionAllowlist : this.mAllowLists) {
                    restrictionAllowlist.configure(config);
                }
                return this.mBuilderStateBoundary.build(context, config);
            } catch (RuntimeException e10) {
                throw new WebViewBuilderException(e10);
            }
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public WebViewBuilder restrictJavaScriptInterfaces() {
        this.mRestrictJavascriptInterface = true;
        return this;
    }

    public WebViewBuilder setProfile(String str) {
        this.mProfileName = str;
        return this;
    }
}
