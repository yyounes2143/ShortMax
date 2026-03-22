package androidx.webkit.internal;

import android.webkit.ServiceWorkerWebSettings;
import androidx.annotation.RequiresApi;
import androidx.webkit.ServiceWorkerWebSettingsCompat;
import androidx.webkit.internal.ApiFeature;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.Collections;
import java.util.Set;
import org.chromium.support_lib_boundary.ServiceWorkerWebSettingsBoundaryInterface;
/* loaded from: classes2.dex */
public class ServiceWorkerWebSettingsImpl extends ServiceWorkerWebSettingsCompat {
    private ServiceWorkerWebSettingsBoundaryInterface mBoundaryInterface;
    private ServiceWorkerWebSettings mFrameworksImpl;

    public ServiceWorkerWebSettingsImpl(ServiceWorkerWebSettings serviceWorkerWebSettings) {
        this.mFrameworksImpl = serviceWorkerWebSettings;
    }

    private ServiceWorkerWebSettingsBoundaryInterface getBoundaryInterface() {
        if (this.mBoundaryInterface == null) {
            this.mBoundaryInterface = (ServiceWorkerWebSettingsBoundaryInterface) zt.a.a(ServiceWorkerWebSettingsBoundaryInterface.class, WebViewGlueCommunicator.getCompatConverter().convertServiceWorkerSettings(this.mFrameworksImpl));
        }
        return this.mBoundaryInterface;
    }

    @RequiresApi(24)
    private ServiceWorkerWebSettings getFrameworksImpl() {
        if (this.mFrameworksImpl == null) {
            this.mFrameworksImpl = WebViewGlueCommunicator.getCompatConverter().convertServiceWorkerSettings(Proxy.getInvocationHandler(this.mBoundaryInterface));
        }
        return this.mFrameworksImpl;
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    public boolean getAllowContentAccess() {
        ApiFeature.N n10 = WebViewFeatureInternal.SERVICE_WORKER_CONTENT_ACCESS;
        if (n10.isSupportedByFramework()) {
            return ApiHelperForN.getAllowContentAccess(getFrameworksImpl());
        }
        if (n10.isSupportedByWebView()) {
            return getBoundaryInterface().getAllowContentAccess();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    public boolean getAllowFileAccess() {
        ApiFeature.N n10 = WebViewFeatureInternal.SERVICE_WORKER_FILE_ACCESS;
        if (n10.isSupportedByFramework()) {
            return ApiHelperForN.getAllowFileAccess(getFrameworksImpl());
        }
        if (n10.isSupportedByWebView()) {
            return getBoundaryInterface().getAllowFileAccess();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    public boolean getBlockNetworkLoads() {
        ApiFeature.N n10 = WebViewFeatureInternal.SERVICE_WORKER_BLOCK_NETWORK_LOADS;
        if (n10.isSupportedByFramework()) {
            return ApiHelperForN.getBlockNetworkLoads(getFrameworksImpl());
        }
        if (n10.isSupportedByWebView()) {
            return getBoundaryInterface().getBlockNetworkLoads();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    public int getCacheMode() {
        ApiFeature.N n10 = WebViewFeatureInternal.SERVICE_WORKER_CACHE_MODE;
        if (n10.isSupportedByFramework()) {
            return ApiHelperForN.getCacheMode(getFrameworksImpl());
        }
        if (n10.isSupportedByWebView()) {
            return getBoundaryInterface().getCacheMode();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    @Deprecated(forRemoval = true)
    public Set<String> getRequestedWithHeaderOriginAllowList() {
        return Collections.emptySet();
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    public boolean isIncludeCookiesOnShouldInterceptRequestEnabled() {
        if (WebViewFeatureInternal.COOKIE_INTERCEPT.isSupportedByWebView()) {
            return getBoundaryInterface().getIncludeCookiesOnIntercept();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    public void setAllowContentAccess(boolean z10) {
        ApiFeature.N n10 = WebViewFeatureInternal.SERVICE_WORKER_CONTENT_ACCESS;
        if (n10.isSupportedByFramework()) {
            ApiHelperForN.setAllowContentAccess(getFrameworksImpl(), z10);
        } else if (n10.isSupportedByWebView()) {
            getBoundaryInterface().setAllowContentAccess(z10);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    public void setAllowFileAccess(boolean z10) {
        ApiFeature.N n10 = WebViewFeatureInternal.SERVICE_WORKER_FILE_ACCESS;
        if (n10.isSupportedByFramework()) {
            ApiHelperForN.setAllowFileAccess(getFrameworksImpl(), z10);
        } else if (n10.isSupportedByWebView()) {
            getBoundaryInterface().setAllowFileAccess(z10);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    public void setBlockNetworkLoads(boolean z10) {
        ApiFeature.N n10 = WebViewFeatureInternal.SERVICE_WORKER_BLOCK_NETWORK_LOADS;
        if (n10.isSupportedByFramework()) {
            ApiHelperForN.setBlockNetworkLoads(getFrameworksImpl(), z10);
        } else if (n10.isSupportedByWebView()) {
            getBoundaryInterface().setBlockNetworkLoads(z10);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    public void setCacheMode(int i10) {
        ApiFeature.N n10 = WebViewFeatureInternal.SERVICE_WORKER_CACHE_MODE;
        if (n10.isSupportedByFramework()) {
            ApiHelperForN.setCacheMode(getFrameworksImpl(), i10);
        } else if (n10.isSupportedByWebView()) {
            getBoundaryInterface().setCacheMode(i10);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    public void setIncludeCookiesOnShouldInterceptRequestEnabled(boolean z10) {
        if (WebViewFeatureInternal.COOKIE_INTERCEPT.isSupportedByWebView()) {
            getBoundaryInterface().setIncludeCookiesOnIntercept(z10);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public ServiceWorkerWebSettingsImpl(InvocationHandler invocationHandler) {
        this.mBoundaryInterface = (ServiceWorkerWebSettingsBoundaryInterface) zt.a.a(ServiceWorkerWebSettingsBoundaryInterface.class, invocationHandler);
    }

    @Override // androidx.webkit.ServiceWorkerWebSettingsCompat
    @Deprecated(forRemoval = true)
    public void setRequestedWithHeaderOriginAllowList(Set<String> set) {
    }
}
