package androidx.webkit;

import android.os.CancellationSignal;
import android.webkit.CookieManager;
import android.webkit.GeolocationPermissions;
import android.webkit.ServiceWorkerController;
import android.webkit.WebStorage;
import androidx.annotation.AnyThread;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresOptIn;
import androidx.annotation.UiThread;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public interface Profile {
    public static final String DEFAULT_PROFILE_NAME = "Default";

    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn(level = RequiresOptIn.Level.ERROR)
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes2.dex */
    public @interface ExperimentalAddQuicHints {
    }

    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn(level = RequiresOptIn.Level.ERROR)
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes2.dex */
    public @interface ExperimentalOriginMatchedHeader {
    }

    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn(level = RequiresOptIn.Level.ERROR)
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes2.dex */
    public @interface ExperimentalPreconnect {
    }

    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn(level = RequiresOptIn.Level.ERROR)
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes2.dex */
    public @interface ExperimentalUrlPrefetch {
    }

    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn(level = RequiresOptIn.Level.ERROR)
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes2.dex */
    public @interface ExperimentalWarmUpRendererProcess {
    }

    @ExperimentalAddQuicHints
    @UiThread
    default void addQuicHints(Set<String> set) {
        throw new UnsupportedOperationException("Profile#addQuicHints is not implemented.");
    }

    @ExperimentalOriginMatchedHeader
    @UiThread
    void clearAllOriginMatchedHeaders();

    @UiThread
    default void clearCustomHeader(String str) {
    }

    @ExperimentalOriginMatchedHeader
    @UiThread
    void clearOriginMatchedHeader(String str);

    @ExperimentalUrlPrefetch
    @UiThread
    void clearPrefetchAsync(String str, Executor executor, OutcomeReceiverCompat<Void, PrefetchException> outcomeReceiverCompat);

    @AnyThread
    CookieManager getCookieManager();

    @RequiresApi(api = 24)
    @UiThread
    default Set<CustomHeader> getCustomHeaders() {
        return Collections.emptySet();
    }

    @AnyThread
    GeolocationPermissions getGeolocationPermissions();

    @AnyThread
    String getName();

    @AnyThread
    ServiceWorkerController getServiceWorkerController();

    @AnyThread
    WebStorage getWebStorage();

    @UiThread
    default boolean hasCustomHeader(String str) {
        return false;
    }

    @ExperimentalOriginMatchedHeader
    @UiThread
    boolean hasOriginMatchedHeader(String str);

    @ExperimentalPreconnect
    @UiThread
    default void preconnect(String str) {
        throw new UnsupportedOperationException("Profile#preconnect is not implemented.");
    }

    @ExperimentalUrlPrefetch
    @AnyThread
    void prefetchUrlAsync(String str, CancellationSignal cancellationSignal, Executor executor, OutcomeReceiverCompat<Void, PrefetchException> outcomeReceiverCompat);

    @ExperimentalUrlPrefetch
    @AnyThread
    void prefetchUrlAsync(String str, CancellationSignal cancellationSignal, Executor executor, SpeculativeLoadingParameters speculativeLoadingParameters, OutcomeReceiverCompat<Void, PrefetchException> outcomeReceiverCompat);

    @ExperimentalOriginMatchedHeader
    @UiThread
    void setOriginMatchedHeader(String str, String str2, Set<String> set);

    @ExperimentalUrlPrefetch
    @UiThread
    void setSpeculativeLoadingConfig(SpeculativeLoadingConfig speculativeLoadingConfig);

    @ExperimentalWarmUpRendererProcess
    @UiThread
    void warmUpRendererProcess();

    @UiThread
    default void clearCustomHeader(String str, String str2) {
    }

    @RequiresApi(api = 24)
    @UiThread
    default Set<CustomHeader> getCustomHeaders(String str) {
        return Collections.emptySet();
    }

    @RequiresApi(api = 24)
    @UiThread
    default Set<CustomHeader> getCustomHeaders(String str, String str2) {
        return Collections.emptySet();
    }

    @UiThread
    default void clearAllCustomHeaders() {
    }

    @UiThread
    default void addCustomHeader(CustomHeader customHeader) {
    }
}
