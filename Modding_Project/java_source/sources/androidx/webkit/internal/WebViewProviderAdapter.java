package androidx.webkit.internal;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import androidx.annotation.UiThread;
import androidx.webkit.NavigationListener;
import androidx.webkit.PrerenderException;
import androidx.webkit.PrerenderOperationCallback;
import androidx.webkit.Profile;
import androidx.webkit.SpeculativeLoadingParameters;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import androidx.webkit.WebNavigationClient;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewRenderProcess;
import androidx.webkit.WebViewRenderProcessClient;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.ProfileBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
/* loaded from: classes2.dex */
public class WebViewProviderAdapter {
    final WebViewProviderBoundaryInterface mImpl;

    public WebViewProviderAdapter(WebViewProviderBoundaryInterface webViewProviderBoundaryInterface) {
        this.mImpl = webViewProviderBoundaryInterface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prerenderUrlAsync$1(PrerenderOperationCallback prerenderOperationCallback, Throwable th2) {
        prerenderOperationCallback.onError(new PrerenderException("Prerender operation failed", th2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prerenderUrlAsync$3(PrerenderOperationCallback prerenderOperationCallback, Throwable th2) {
        prerenderOperationCallback.onError(new PrerenderException("Prerender operation failed", th2));
    }

    public ScriptHandlerImpl addDocumentStartJavaScript(String str, String[] strArr) {
        return ScriptHandlerImpl.toScriptHandler(this.mImpl.addDocumentStartJavaScript(str, strArr));
    }

    @WebNavigationClient.ExperimentalNavigationCallback
    @UiThread
    public void addNavigationListener(Executor executor, NavigationListener navigationListener) {
        this.mImpl.addWebViewNavigationListener(executor, zt.a.c(new NavigationListenerAdapter(navigationListener)));
    }

    public void addWebMessageListener(String str, String[] strArr, WebViewCompat.WebMessageListener webMessageListener) {
        this.mImpl.addWebMessageListener(str, strArr, zt.a.c(new WebMessageListenerAdapter(webMessageListener)));
    }

    public WebMessagePortCompat[] createWebMessageChannel() {
        InvocationHandler[] createWebMessageChannel = this.mImpl.createWebMessageChannel();
        WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[createWebMessageChannel.length];
        for (int i10 = 0; i10 < createWebMessageChannel.length; i10++) {
            webMessagePortCompatArr[i10] = new WebMessagePortImpl(createWebMessageChannel[i10]);
        }
        return webMessagePortCompatArr;
    }

    public Profile getProfile() {
        return new ProfileImpl((ProfileBoundaryInterface) zt.a.a(ProfileBoundaryInterface.class, this.mImpl.getProfile()));
    }

    public WebChromeClient getWebChromeClient() {
        return this.mImpl.getWebChromeClient();
    }

    @WebNavigationClient.ExperimentalNavigationCallback
    @UiThread
    public WebNavigationClient getWebNavigationClient() {
        InvocationHandler webViewNavigationClient = this.mImpl.getWebViewNavigationClient();
        if (webViewNavigationClient == null) {
            return null;
        }
        return ((WebNavigationClientAdapter) zt.a.e(webViewNavigationClient)).getWebNavigationClient();
    }

    public WebViewClient getWebViewClient() {
        return this.mImpl.getWebViewClient();
    }

    public WebViewRenderProcess getWebViewRenderProcess() {
        return WebViewRenderProcessImpl.forInvocationHandler(this.mImpl.getWebViewRenderer());
    }

    public WebViewRenderProcessClient getWebViewRenderProcessClient() {
        InvocationHandler webViewRendererClient = this.mImpl.getWebViewRendererClient();
        if (webViewRendererClient == null) {
            return null;
        }
        return ((WebViewRenderProcessClientAdapter) zt.a.e(webViewRendererClient)).getWebViewRenderProcessClient();
    }

    public void insertVisualStateCallback(long j10, WebViewCompat.VisualStateCallback visualStateCallback) {
        this.mImpl.insertVisualStateCallback(j10, zt.a.c(new VisualStateCallbackAdapter(visualStateCallback)));
    }

    public boolean isAudioMuted() {
        return this.mImpl.isAudioMuted();
    }

    public void postWebMessage(WebMessageCompat webMessageCompat, Uri uri) {
        this.mImpl.postMessageToMainFrame(zt.a.c(new WebMessageAdapter(webMessageCompat)), uri);
    }

    public void prerenderUrlAsync(String str, CancellationSignal cancellationSignal, Executor executor, final PrerenderOperationCallback prerenderOperationCallback) {
        this.mImpl.prerenderUrl(str, cancellationSignal, executor, new ValueCallback() { // from class: androidx.webkit.internal.m0
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                Void r22 = (Void) obj;
                PrerenderOperationCallback.this.onPrerenderActivated();
            }
        }, new ValueCallback() { // from class: androidx.webkit.internal.n0
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                WebViewProviderAdapter.lambda$prerenderUrlAsync$1(PrerenderOperationCallback.this, (Throwable) obj);
            }
        });
    }

    @WebNavigationClient.ExperimentalNavigationCallback
    @UiThread
    public void removeNavigationListener(NavigationListener navigationListener) {
        this.mImpl.removeWebViewNavigationListener(zt.a.c(new NavigationListenerAdapter(navigationListener)));
    }

    public void removeWebMessageListener(String str) {
        this.mImpl.removeWebMessageListener(str);
    }

    @UiThread
    public void saveState(Bundle bundle, int i10, boolean z10) {
        this.mImpl.saveState(bundle, i10, z10);
    }

    public void setAudioMuted(boolean z10) {
        this.mImpl.setAudioMuted(z10);
    }

    public void setProfileWithName(String str) {
        this.mImpl.setProfile(str);
    }

    @WebNavigationClient.ExperimentalNavigationCallback
    @UiThread
    public void setWebNavigationClient(WebNavigationClient webNavigationClient) {
        this.mImpl.setWebViewNavigationClient(zt.a.c(new WebNavigationClientAdapter(webNavigationClient)));
    }

    @SuppressLint({"LambdaLast"})
    public void setWebViewRenderProcessClient(Executor executor, WebViewRenderProcessClient webViewRenderProcessClient) {
        InvocationHandler invocationHandler;
        if (webViewRenderProcessClient != null) {
            invocationHandler = zt.a.c(new WebViewRenderProcessClientAdapter(executor, webViewRenderProcessClient));
        } else {
            invocationHandler = null;
        }
        this.mImpl.setWebViewRendererClient(invocationHandler);
    }

    @Profile.ExperimentalUrlPrefetch
    public void prerenderUrlAsync(String str, CancellationSignal cancellationSignal, Executor executor, SpeculativeLoadingParameters speculativeLoadingParameters, final PrerenderOperationCallback prerenderOperationCallback) {
        this.mImpl.prerenderUrl(str, cancellationSignal, executor, zt.a.c(new SpeculativeLoadingParametersAdapter(speculativeLoadingParameters)), new ValueCallback() { // from class: androidx.webkit.internal.k0
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                Void r22 = (Void) obj;
                PrerenderOperationCallback.this.onPrerenderActivated();
            }
        }, new ValueCallback() { // from class: androidx.webkit.internal.l0
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                WebViewProviderAdapter.lambda$prerenderUrlAsync$3(PrerenderOperationCallback.this, (Throwable) obj);
            }
        });
    }
}
