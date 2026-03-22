package io.bidmachine;

import android.content.Context;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdRequest;
import java.util.List;
/* loaded from: classes7.dex */
public class BidMachine {
    public static final String NAME = "BidMachine";
    private static final String TAG = "BidMachine";
    public static final String VERSION = "3.4.0";

    @NonNull
    @WorkerThread
    @Deprecated
    public static String getBidToken(@NonNull Context context, @NonNull AdsFormat adsFormat) {
        return getBidToken(context, new AdPlacementConfig.Builder(adsFormat).build());
    }

    @Nullable
    public static Object getExtrasParam(@NonNull Context context, @NonNull String str) {
        return ExtraParamsManager.get().getPublic(context, str);
    }

    public static void initialize(@NonNull Context context, @NonNull String str) {
        initialize(context, str, null);
    }

    public static boolean isInitialized() {
        return j2.e().A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getBidToken$8(String str) {
        return String.format("getBidToken - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getBidToken$9(BidTokenCallback bidTokenCallback, Context context, AdPlacementConfig adPlacementConfig) {
        bidTokenCallback.onCollected(getBidToken(context, adPlacementConfig));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$initialize$0(String str) {
        return String.format("initialize - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$setConsentConfig$3(boolean z10, String str) {
        return String.format("setConsentConfig - %s, %s", Boolean.valueOf(z10), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$setCoppa$5(Boolean bool) {
        return String.format("setCoppa - %s", bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$setEndpoint$1(String str) {
        return String.format("setEndpoint - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$setGPP$7(String str, List list) {
        return String.format("setGPP - %s, [%s]", str, io.bidmachine.core.g.R(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$setSubjectToGDPR$4(Boolean bool) {
        return String.format("setSubjectToGDPR - %s", bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$setTestMode$2(boolean z10) {
        return String.format("setTestMode - %s", Boolean.valueOf(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$setUSPrivacyString$6(String str) {
        return String.format("setUSPrivacyString - %s", str);
    }

    public static void registerAdRequestListener(@NonNull AdRequest.AdRequestListener<?> adRequestListener) {
        io.bidmachine.core.a.c("BidMachine", "registerAdRequestListener");
        j2.e().L(adRequestListener);
    }

    public static void registerNetworks(@NonNull NetworkConfig... networkConfigArr) {
        io.bidmachine.core.a.c("BidMachine", "registerNetworks with NetworkConfig array");
        NetworkRegistry.registerNetworks(networkConfigArr);
    }

    public static void setConsentConfig(final boolean z10, @Nullable final String str) {
        io.bidmachine.core.a.b("BidMachine", new hr.b() { // from class: io.bidmachine.h1
            @Override // hr.b
            public final Object get() {
                String lambda$setConsentConfig$3;
                lambda$setConsentConfig$3 = BidMachine.lambda$setConsentConfig$3(z10, str);
                return lambda$setConsentConfig$3;
            }
        });
        j2.e().u().r(z10, str);
    }

    public static void setCoppa(@Nullable final Boolean bool) {
        io.bidmachine.core.a.b("BidMachine", new hr.b() { // from class: io.bidmachine.d1
            @Override // hr.b
            public final Object get() {
                String lambda$setCoppa$5;
                lambda$setCoppa$5 = BidMachine.lambda$setCoppa$5(bool);
                return lambda$setCoppa$5;
            }
        });
        j2.e().u().s(bool);
    }

    public static void setEndpoint(@NonNull final String str) {
        io.bidmachine.core.a.b("BidMachine", new hr.b() { // from class: io.bidmachine.i1
            @Override // hr.b
            public final Object get() {
                String lambda$setEndpoint$1;
                lambda$setEndpoint$1 = BidMachine.lambda$setEndpoint$1(str);
                return lambda$setEndpoint$1;
            }
        });
        UrlProvider.setEndpoint(str);
    }

    public static void setGPP(@Nullable final String str, @Nullable final List<Integer> list) {
        io.bidmachine.core.a.b("BidMachine", new hr.b() { // from class: io.bidmachine.e1
            @Override // hr.b
            public final Object get() {
                String lambda$setGPP$7;
                lambda$setGPP$7 = BidMachine.lambda$setGPP$7(str, list);
                return lambda$setGPP$7;
            }
        });
        j2.e().u().t(str, list);
    }

    public static void setLoggingEnabled(boolean z10) {
        if (Debugger.isLoggingLock()) {
            io.bidmachine.core.a.c("BidMachine", "setLoggingEnabled skipped");
            return;
        }
        if (z10) {
            io.bidmachine.core.a.j(true);
            io.bidmachine.core.a.c("BidMachine", "setLoggingEnabled - true");
        } else {
            io.bidmachine.core.a.c("BidMachine", "setLoggingEnabled - false");
            io.bidmachine.core.a.j(false);
        }
        NetworkRegistry.setLoggingEnabled(z10);
    }

    public static void setPublisher(@Nullable Publisher publisher) {
        io.bidmachine.core.a.c("BidMachine", "setPublisher");
        j2.e().N(publisher);
    }

    public static void setSubjectToGDPR(@Nullable final Boolean bool) {
        io.bidmachine.core.a.b("BidMachine", new hr.b() { // from class: io.bidmachine.l1
            @Override // hr.b
            public final Object get() {
                String lambda$setSubjectToGDPR$4;
                lambda$setSubjectToGDPR$4 = BidMachine.lambda$setSubjectToGDPR$4(bool);
                return lambda$setSubjectToGDPR$4;
            }
        });
        j2.e().u().u(bool);
    }

    public static void setTargetingParams(@Nullable TargetingParams targetingParams) {
        io.bidmachine.core.a.c("BidMachine", "setTargetingParams");
        j2.e().O(targetingParams);
    }

    public static void setTestMode(final boolean z10) {
        if (Debugger.isTestModeLock()) {
            io.bidmachine.core.a.c("BidMachine", "setTestMode skipped");
            return;
        }
        io.bidmachine.core.a.b("BidMachine", new hr.b() { // from class: io.bidmachine.g1
            @Override // hr.b
            public final Object get() {
                String lambda$setTestMode$2;
                lambda$setTestMode$2 = BidMachine.lambda$setTestMode$2(z10);
                return lambda$setTestMode$2;
            }
        });
        j2.e().P(z10);
    }

    public static void setUSPrivacyString(@Nullable final String str) {
        io.bidmachine.core.a.b("BidMachine", new hr.b() { // from class: io.bidmachine.j1
            @Override // hr.b
            public final Object get() {
                String lambda$setUSPrivacyString$6;
                lambda$setUSPrivacyString$6 = BidMachine.lambda$setUSPrivacyString$6(str);
                return lambda$setUSPrivacyString$6;
            }
        });
        j2.e().u().v(str);
    }

    public static void unregisterAdRequestListener(@NonNull AdRequest.AdRequestListener<?> adRequestListener) {
        io.bidmachine.core.a.c("BidMachine", "unregisterAdRequestListener");
        j2.e().Q(adRequestListener);
    }

    @NonNull
    @WorkerThread
    public static String getBidToken(@NonNull Context context, @NonNull AdPlacementConfig adPlacementConfig) {
        final String f10 = s2.f(context.getApplicationContext(), adPlacementConfig);
        io.bidmachine.core.a.b("BidMachine", new hr.b() { // from class: io.bidmachine.f1
            @Override // hr.b
            public final Object get() {
                String lambda$getBidToken$8;
                lambda$getBidToken$8 = BidMachine.lambda$getBidToken$8(f10);
                return lambda$getBidToken$8;
            }
        });
        return f10;
    }

    public static void initialize(@NonNull Context context, @NonNull final String str, @Nullable InitializationCallback initializationCallback) {
        io.bidmachine.core.a.b("BidMachine", new hr.b() { // from class: io.bidmachine.m1
            @Override // hr.b
            public final Object get() {
                String lambda$initialize$0;
                lambda$initialize$0 = BidMachine.lambda$initialize$0(str);
                return lambda$initialize$0;
            }
        });
        j2.e().w(context, str, initializationCallback);
    }

    @WorkerThread
    public static void registerNetworks(@NonNull Context context, @NonNull String str) {
        io.bidmachine.core.a.c("BidMachine", "registerNetworks with JSON string");
        NetworkRegistry.registerNetworks(context, str);
    }

    @AnyThread
    @Deprecated
    public static void getBidToken(@NonNull Context context, @NonNull AdsFormat adsFormat, @NonNull BidTokenCallback bidTokenCallback) {
        getBidToken(context, new AdPlacementConfig.Builder(adsFormat).build(), bidTokenCallback);
    }

    @AnyThread
    public static void getBidToken(@NonNull Context context, @NonNull final AdPlacementConfig adPlacementConfig, @NonNull final BidTokenCallback bidTokenCallback) {
        final Context applicationContext = context.getApplicationContext();
        BidTokenTaskManager.execute(new Runnable() { // from class: io.bidmachine.k1
            @Override // java.lang.Runnable
            public final void run() {
                BidMachine.lambda$getBidToken$9(BidTokenCallback.this, applicationContext, adPlacementConfig);
            }
        });
    }

    public static void registerNetworks(@NonNull Context context, @NonNull String str, @Nullable NetworkRegistryCallback networkRegistryCallback) {
        io.bidmachine.core.a.c("BidMachine", "registerNetworks with JSON string");
        NetworkRegistry.registerNetworks(context, str, networkRegistryCallback);
    }
}
