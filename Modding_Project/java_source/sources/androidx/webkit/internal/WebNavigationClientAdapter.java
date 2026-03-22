package androidx.webkit.internal;

import androidx.webkit.WebNavigationClient;
import androidx.webkit.WebViewFeature;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface;
@WebNavigationClient.ExperimentalNavigationCallback
/* loaded from: classes2.dex */
public class WebNavigationClientAdapter implements WebViewNavigationClientBoundaryInterface {
    WebNavigationClient mWebNavigationClient;

    public WebNavigationClientAdapter(WebNavigationClient webNavigationClient) {
        this.mWebNavigationClient = webNavigationClient;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public String[] getSupportedFeatures() {
        return new String[]{WebViewFeature.NAVIGATION_CALLBACK_BASIC};
    }

    public WebNavigationClient getWebNavigationClient() {
        return this.mWebNavigationClient;
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onFirstContentfulPaint(InvocationHandler invocationHandler) {
        this.mWebNavigationClient.onFirstContentfulPaint(PageImpl.forInvocationHandler(invocationHandler));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    @WebNavigationClient.ExperimentalNavigationCallback
    public void onNavigationCompleted(InvocationHandler invocationHandler) {
        this.mWebNavigationClient.onNavigationCompleted(NavigationImpl.forInvocationHandler(invocationHandler));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onNavigationRedirected(InvocationHandler invocationHandler) {
        this.mWebNavigationClient.onNavigationRedirected(NavigationImpl.forInvocationHandler(invocationHandler));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onNavigationStarted(InvocationHandler invocationHandler) {
        this.mWebNavigationClient.onNavigationStarted(NavigationImpl.forInvocationHandler(invocationHandler));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onPageDOMContentLoadedEventFired(InvocationHandler invocationHandler) {
        this.mWebNavigationClient.onPageDomContentLoadedEventFired(PageImpl.forInvocationHandler(invocationHandler));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onPageDeleted(InvocationHandler invocationHandler) {
        this.mWebNavigationClient.onPageDeleted(PageImpl.forInvocationHandler(invocationHandler));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onPageLoadEventFired(InvocationHandler invocationHandler) {
        this.mWebNavigationClient.onPageLoadEventFired(PageImpl.forInvocationHandler(invocationHandler));
    }
}
