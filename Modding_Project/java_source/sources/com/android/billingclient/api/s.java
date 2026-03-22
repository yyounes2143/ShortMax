package com.android.billingclient.api;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.core.util.Consumer;
import com.android.billingclient.api.BillingClient;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzil;
import com.google.android.gms.internal.play_billing.zzr;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class s extends b {
    private final Context K;
    private volatile int L;
    @Nullable
    private volatile com.google.android.gms.internal.play_billing.zzau M;
    private volatile r N;
    @Nullable
    private volatile ScheduledExecutorService O;

    @AnyThread
    public s(@Nullable String str, Context context, @Nullable t tVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        super(null, context, null, null, builder);
        this.L = 0;
        this.K = context;
    }

    public static /* synthetic */ Object D1(s sVar, int i10, com.google.android.gms.internal.play_billing.zzp zzpVar) {
        String str;
        try {
            if (sVar.M != null) {
                com.google.android.gms.internal.play_billing.zzau zzauVar = sVar.M;
                String packageName = sVar.K.getPackageName();
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                if (i10 != 6) {
                                    str = "QUERY_PRODUCT_DETAILS_ASYNC";
                                } else {
                                    str = "START_CONNECTION";
                                }
                            } else {
                                str = "IS_FEATURE_SUPPORTED";
                            }
                        } else {
                            str = "CONSUME_ASYNC";
                        }
                    } else {
                        str = "ACKNOWLEDGE_PURCHASE";
                    }
                } else {
                    str = "LAUNCH_BILLING_FLOW";
                }
                zzauVar.zza(packageName, str, new q(zzpVar));
                return "billingOverrideService.getBillingOverride";
            }
            throw null;
        } catch (Exception e10) {
            sVar.q1(zzie.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, u.F);
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClientTesting", "An error occurred while retrieving billing override.", e10);
            zzpVar.zzb(0);
            return "billingOverrideService.getBillingOverride";
        }
    }

    private final int G1(com.google.android.gms.internal.play_billing.zzcz zzczVar) {
        try {
            return ((Integer) zzczVar.get(28500L, TimeUnit.MILLISECONDS)).intValue();
        } catch (TimeoutException e10) {
            q1(zzie.BILLING_OVERRIDE_SERVICE_CALL_TIMEOUT, 28, u.F);
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", e10);
            return 0;
        } catch (Exception e11) {
            if (e11 instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            q1(zzie.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, u.F);
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClientTesting", "An error occurred while retrieving billing override.", e11);
            return 0;
        }
    }

    private final synchronized ScheduledExecutorService H1() {
        try {
            if (this.O == null) {
                this.O = Executors.newSingleThreadScheduledExecutor();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.O;
    }

    private final synchronized void l1() {
        r1(27);
        try {
            if (this.N != null && this.M != null) {
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClientTesting", "Unbinding from Billing Override Service.");
                this.K.unbindService(this.N);
                this.N = new r(this, null);
            }
            this.M = null;
            if (this.O != null) {
                this.O.shutdownNow();
                this.O = null;
            }
        } catch (RuntimeException e10) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClientTesting", "There was an exception while ending Billing Override Service connection!", e10);
        }
        this.L = 3;
    }

    private final synchronized void m1() {
        if (B1()) {
            com.google.android.gms.internal.play_billing.zzc.zzm("BillingClientTesting", "Billing Override Service connection is valid. No need to re-initialize.");
            r1(26);
        } else if (this.L == 1) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClientTesting", "Client is already in the process of connecting to Billing Override Service.");
        } else if (this.L == 3) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClientTesting", "Billing Override Service Client was already closed and can't be reused. Please create another instance.");
            q1(zzie.BILLING_CLIENT_CLOSED, 26, u.a(-1, "Billing Override Service connection is disconnected."));
        } else {
            this.L = 1;
            com.google.android.gms.internal.play_billing.zzc.zzm("BillingClientTesting", "Starting Billing Override Service setup.");
            this.N = new r(this, null);
            Intent intent = new Intent("com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND");
            intent.setPackage("com.google.android.apps.play.billingtestcompanion");
            Context context = this.K;
            List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
            zzie zzieVar = zzie.REASON_UNSPECIFIED;
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                if (serviceInfo != null) {
                    String str = serviceInfo.packageName;
                    String str2 = serviceInfo.name;
                    if (Objects.equals(str, "com.google.android.apps.play.billingtestcompanion") && str2 != null) {
                        ComponentName componentName = new ComponentName(str, str2);
                        Intent intent2 = new Intent(intent);
                        intent2.setComponent(componentName);
                        if (context.bindService(intent2, this.N, 1)) {
                            com.google.android.gms.internal.play_billing.zzc.zzm("BillingClientTesting", "Billing Override Service was bonded successfully.");
                            return;
                        } else {
                            zzieVar = zzie.BILLING_SERVICE_BLOCKED;
                            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClientTesting", "Connection to Billing Override Service is blocked.");
                        }
                    } else {
                        zzieVar = zzie.BILLING_SERVICE_BLOCKED;
                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClientTesting", "The device doesn't have valid Play Billing Lab.");
                    }
                }
            } else {
                zzieVar = zzie.INTENT_SERVICE_NOT_FOUND;
            }
            this.L = 0;
            com.google.android.gms.internal.play_billing.zzc.zzm("BillingClientTesting", "Billing Override Service unavailable on device.");
            q1(zzieVar, 26, u.a(2, "Billing Override Service unavailable on device."));
        }
    }

    public static final boolean n1(int i10) {
        if (i10 > 0) {
            return true;
        }
        return false;
    }

    public final BillingResult o1(int i10, int i11) {
        BillingResult a10 = u.a(i11, "Billing override value was set by a license tester.");
        q1(zzie.LICENSE_TESTER_BILLING_OVERRIDE, i10, a10);
        return a10;
    }

    private final com.google.android.gms.internal.play_billing.zzcz p1(final int i10) {
        if (!B1()) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClientTesting", "Billing Override Service is not ready.");
            q1(zzie.BILLING_OVERRIDE_SERVICE_CONNECTION_NOT_READY, 28, u.a(-1, "Billing Override Service connection is disconnected."));
            return com.google.android.gms.internal.play_billing.zzcu.zza(0);
        }
        return com.google.android.gms.internal.play_billing.zzu.zza(new zzr() { // from class: com.android.billingclient.api.zzbv
            @Override // com.google.android.gms.internal.play_billing.zzr
            public final Object zza(com.google.android.gms.internal.play_billing.zzp zzpVar) {
                return s.D1(s.this, i10, zzpVar);
            }
        });
    }

    public final void q1(zzie zzieVar, int i10, BillingResult billingResult) {
        int i11 = zzcg.zza;
        zzhx zzb = zzcg.zzb(zzieVar, i10, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED);
        Objects.requireNonNull(zzb, "ApiFailure should not be null");
        U0().h(zzb);
    }

    public final void r1(int i10) {
        int i11 = zzcg.zza;
        zzib zzc = zzcg.zzc(i10, zzil.BROADCAST_ACTION_UNSPECIFIED);
        Objects.requireNonNull(zzc, "ApiSuccess should not be null");
        U0().j(zzc);
    }

    private final void s1(int i10, Consumer consumer, Runnable runnable) {
        com.google.android.gms.internal.play_billing.zzcu.zzc(com.google.android.gms.internal.play_billing.zzcu.zzb(p1(i10), 28500L, TimeUnit.MILLISECONDS, H1()), new p(this, i10, consumer, runnable), h());
    }

    public final synchronized boolean B1() {
        if (this.L == 2 && this.M != null) {
            if (this.N != null) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.billingclient.api.b, com.android.billingclient.api.BillingClient
    public final void acknowledgePurchase(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        Objects.requireNonNull(acknowledgePurchaseResponseListener);
        s1(3, new Consumer() { // from class: com.android.billingclient.api.zzbw
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                AcknowledgePurchaseResponseListener.this.onAcknowledgePurchaseResponse((BillingResult) obj);
            }
        }, new Runnable() { // from class: com.android.billingclient.api.zzbx
            @Override // java.lang.Runnable
            public final void run() {
                super/*com.android.billingclient.api.b*/.acknowledgePurchase(acknowledgePurchaseParams, acknowledgePurchaseResponseListener);
            }
        });
    }

    @Override // com.android.billingclient.api.b, com.android.billingclient.api.BillingClient
    public final void consumeAsync(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        s1(4, new Consumer() { // from class: com.android.billingclient.api.zzbt
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                ConsumeResponseListener.this.onConsumeResponse((BillingResult) obj, consumeParams.getPurchaseToken());
            }
        }, new Runnable() { // from class: com.android.billingclient.api.zzbu
            @Override // java.lang.Runnable
            public final void run() {
                super/*com.android.billingclient.api.b*/.consumeAsync(consumeParams, consumeResponseListener);
            }
        });
    }

    @Override // com.android.billingclient.api.b, com.android.billingclient.api.BillingClient
    public final void endConnection() {
        l1();
        super.endConnection();
    }

    @Override // com.android.billingclient.api.b, com.android.billingclient.api.BillingClient
    public final BillingResult launchBillingFlow(final Activity activity, final BillingFlowParams billingFlowParams) {
        Consumer consumer = new Consumer() { // from class: com.android.billingclient.api.zzby
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                super/*com.android.billingclient.api.b*/.X0((BillingResult) obj);
            }
        };
        Callable callable = new Callable() { // from class: com.android.billingclient.api.zzbz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                BillingResult launchBillingFlow;
                launchBillingFlow = super/*com.android.billingclient.api.b*/.launchBillingFlow(activity, billingFlowParams);
                return launchBillingFlow;
            }
        };
        int G1 = G1(p1(2));
        if (n1(G1)) {
            BillingResult o12 = o1(2, G1);
            consumer.accept(o12);
            return o12;
        }
        try {
            return (BillingResult) callable.call();
        } catch (Exception e10) {
            zzie zzieVar = zzie.BILLING_OVERRIDE_SERVICE_FALLBACK_ERROR;
            BillingResult billingResult = u.f6670h;
            q1(zzieVar, 2, billingResult);
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClientTesting", "An internal error occurred.", e10);
            return billingResult;
        }
    }

    @Override // com.android.billingclient.api.b, com.android.billingclient.api.BillingClient
    public final void queryProductDetailsAsync(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        s1(7, new Consumer() { // from class: com.android.billingclient.api.zzbr
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                QueryProductDetailsResult queryProductDetailsResult = new QueryProductDetailsResult(new ArrayList(), new ArrayList());
                ProductDetailsResponseListener.this.onProductDetailsResponse((BillingResult) obj, queryProductDetailsResult);
            }
        }, new Runnable() { // from class: com.android.billingclient.api.zzbs
            @Override // java.lang.Runnable
            public final void run() {
                super/*com.android.billingclient.api.b*/.queryProductDetailsAsync(queryProductDetailsParams, productDetailsResponseListener);
            }
        });
    }

    @Override // com.android.billingclient.api.b, com.android.billingclient.api.BillingClient
    public final void startConnection(BillingClientStateListener billingClientStateListener) {
        m1();
        super.startConnection(billingClientStateListener);
    }

    @AnyThread
    public s(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzco zzcoVar, @Nullable t tVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        super(null, pendingPurchasesParams, context, null, null, null, builder);
        this.L = 0;
        this.K = context;
    }

    @AnyThread
    public s(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable zzb zzbVar, @Nullable t tVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        super((String) null, pendingPurchasesParams, context, purchasesUpdatedListener, (zzb) null, (t) null, (ExecutorService) null, builder);
        this.L = 0;
        this.K = context;
    }

    @AnyThread
    public s(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable UserChoiceBillingListener userChoiceBillingListener, @Nullable t tVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        super((String) null, pendingPurchasesParams, context, purchasesUpdatedListener, userChoiceBillingListener, (t) null, (ExecutorService) null, builder);
        this.L = 0;
        this.K = context;
    }
}
