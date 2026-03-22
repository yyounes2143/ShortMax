package androidx.webkit;

import androidx.annotation.AnyThread;
import androidx.webkit.internal.ProxyControllerImpl;
import java.util.concurrent.Executor;
@AnyThread
/* loaded from: classes2.dex */
public abstract class ProxyController {

    /* loaded from: classes2.dex */
    private static class LAZY_HOLDER {
        static final ProxyController INSTANCE = new ProxyControllerImpl();

        private LAZY_HOLDER() {
        }
    }

    public static ProxyController getInstance() {
        if (WebViewFeature.isFeatureSupported(WebViewFeature.PROXY_OVERRIDE)) {
            return LAZY_HOLDER.INSTANCE;
        }
        throw new UnsupportedOperationException("Proxy override not supported");
    }

    public abstract void clearProxyOverride(Executor executor, Runnable runnable);

    public abstract void setProxyOverride(ProxyConfig proxyConfig, Executor executor, Runnable runnable);
}
