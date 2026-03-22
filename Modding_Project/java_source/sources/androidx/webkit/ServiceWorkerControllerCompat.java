package androidx.webkit;

import androidx.annotation.AnyThread;
import androidx.webkit.internal.ServiceWorkerControllerImpl;
@AnyThread
/* loaded from: classes2.dex */
public abstract class ServiceWorkerControllerCompat {

    /* loaded from: classes2.dex */
    private static class LAZY_HOLDER {
        static final ServiceWorkerControllerCompat INSTANCE = new ServiceWorkerControllerImpl();

        private LAZY_HOLDER() {
        }
    }

    public static ServiceWorkerControllerCompat getInstance() {
        return LAZY_HOLDER.INSTANCE;
    }

    public abstract ServiceWorkerWebSettingsCompat getServiceWorkerWebSettings();

    public abstract void setServiceWorkerClient(ServiceWorkerClientCompat serviceWorkerClientCompat);
}
