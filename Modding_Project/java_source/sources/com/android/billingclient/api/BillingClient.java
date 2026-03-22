package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.ExecutorService;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public abstract class BillingClient {

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface BillingResponseCode {
        public static final int BILLING_UNAVAILABLE = 3;
        public static final int DEVELOPER_ERROR = 5;
        public static final int ERROR = 6;
        public static final int FEATURE_NOT_SUPPORTED = -2;
        public static final int ITEM_ALREADY_OWNED = 7;
        public static final int ITEM_NOT_OWNED = 8;
        public static final int ITEM_UNAVAILABLE = 4;
        public static final int NETWORK_ERROR = 12;
        public static final int OK = 0;
        public static final int SERVICE_DISCONNECTED = -1;
        @Deprecated
        public static final int SERVICE_TIMEOUT = -3;
        public static final int SERVICE_UNAVAILABLE = 2;
        public static final int USER_CANCELED = 1;
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @AnyThread
    /* loaded from: classes2.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private volatile PendingPurchasesParams f6449a;

        /* renamed from: b  reason: collision with root package name */
        private final Context f6450b;

        /* renamed from: c  reason: collision with root package name */
        private volatile PurchasesUpdatedListener f6451c;

        /* renamed from: d  reason: collision with root package name */
        private volatile UserChoiceBillingListener f6452d;

        /* renamed from: e  reason: collision with root package name */
        private volatile boolean f6453e;

        /* renamed from: f  reason: collision with root package name */
        private volatile boolean f6454f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f6455g;

        /* synthetic */ Builder(Context context, zzt zztVar) {
            this.f6450b = context;
        }

        private final boolean a() {
            try {
                Context context = this.f6450b;
                return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("com.google.android.play.billingclient.enableBillingOverridesTesting", false);
            } catch (Exception e10) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to retrieve metadata value for enableBillingOverridesTesting.", e10);
                return false;
            }
        }

        @NonNull
        public BillingClient build() {
            BillingClient bVar;
            BillingClient bVar2;
            Context context = this.f6450b;
            if (context != null) {
                if (this.f6451c == null) {
                    if (this.f6452d == null) {
                        if (!this.f6453e && !this.f6454f) {
                            throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
                        }
                        if (a()) {
                            return new s(null, context, null, null, this);
                        }
                        return new b(null, context, null, null, this);
                    }
                    throw new IllegalArgumentException("Please provide a valid listener for Google Play Billing purchases updates when enabling User Choice Billing.");
                } else if (this.f6449a != null && this.f6449a.a()) {
                    if (this.f6451c != null) {
                        if (this.f6452d == null) {
                            PendingPurchasesParams pendingPurchasesParams = this.f6449a;
                            PurchasesUpdatedListener purchasesUpdatedListener = this.f6451c;
                            if (a()) {
                                bVar2 = new s((String) null, pendingPurchasesParams, context, purchasesUpdatedListener, (zzb) null, (t) null, (ExecutorService) null, this);
                            } else {
                                bVar2 = new b((String) null, pendingPurchasesParams, context, purchasesUpdatedListener, (zzb) null, (t) null, (ExecutorService) null, this);
                            }
                        } else {
                            PendingPurchasesParams pendingPurchasesParams2 = this.f6449a;
                            PurchasesUpdatedListener purchasesUpdatedListener2 = this.f6451c;
                            UserChoiceBillingListener userChoiceBillingListener = this.f6452d;
                            if (a()) {
                                bVar2 = new s((String) null, pendingPurchasesParams2, context, purchasesUpdatedListener2, userChoiceBillingListener, (t) null, (ExecutorService) null, this);
                            } else {
                                bVar2 = new b((String) null, pendingPurchasesParams2, context, purchasesUpdatedListener2, userChoiceBillingListener, (t) null, (ExecutorService) null, this);
                            }
                        }
                        return bVar2;
                    }
                    PendingPurchasesParams pendingPurchasesParams3 = this.f6449a;
                    if (a()) {
                        bVar = new s(null, pendingPurchasesParams3, context, null, null, null, this);
                    } else {
                        bVar = new b(null, pendingPurchasesParams3, context, null, null, null, this);
                    }
                    return bVar;
                } else {
                    throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
                }
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }

        @NonNull
        @zzf
        public Builder enableAlternativeBillingOnly() {
            this.f6453e = true;
            return this;
        }

        @NonNull
        @zzg
        public Builder enableAutoServiceReconnection() {
            this.f6455g = true;
            return this;
        }

        @NonNull
        @zzh
        public Builder enableExternalOffer() {
            this.f6454f = true;
            return this;
        }

        @NonNull
        @zzn
        public Builder enablePendingPurchases(@NonNull PendingPurchasesParams pendingPurchasesParams) {
            this.f6449a = pendingPurchasesParams;
            return this;
        }

        @NonNull
        @zzp
        public Builder enableUserChoiceBilling(@NonNull UserChoiceBillingListener userChoiceBillingListener) {
            this.f6452d = userChoiceBillingListener;
            return this;
        }

        @NonNull
        public Builder setListener(@NonNull PurchasesUpdatedListener purchasesUpdatedListener) {
            this.f6451c = purchasesUpdatedListener;
            return this;
        }
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ConnectionState {
        public static final int CLOSED = 3;
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int DISCONNECTED = 0;
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface FeatureType {
        @NonNull
        @zzf
        public static final String ALTERNATIVE_BILLING_ONLY = "jjj";
        @NonNull
        @zzi
        public static final String BILLING_CONFIG = "ggg";
        @NonNull
        @zzh
        public static final String EXTERNAL_OFFER = "kkk";
        @NonNull
        public static final String IN_APP_MESSAGING = "bbb";
        @NonNull
        public static final String PRICE_CHANGE_CONFIRMATION = "priceChangeConfirmation";
        @NonNull
        public static final String PRODUCT_DETAILS = "fff";
        @NonNull
        public static final String SUBSCRIPTIONS = "subscriptions";
        @NonNull
        public static final String SUBSCRIPTIONS_UPDATE = "subscriptionsUpdate";
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @zzk
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface OnPurchasesUpdatedSubResponseCode {
        public static final int NO_APPLICABLE_SUB_RESPONSE_CODE = 0;
        public static final int PAYMENT_DECLINED_DUE_TO_INSUFFICIENT_FUNDS = 1;
        public static final int USER_INELIGIBLE = 2;
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ProductType {
        @NonNull
        public static final String INAPP = "inapp";
        @NonNull
        public static final String SUBS = "subs";
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes2.dex */
    public @interface SkuType {
        @NonNull
        public static final String INAPP = "inapp";
        @NonNull
        public static final String SUBS = "subs";
    }

    @NonNull
    @AnyThread
    public static Builder newBuilder(@NonNull Context context) {
        return new Builder(context, null);
    }

    @AnyThread
    public abstract void acknowledgePurchase(@NonNull AcknowledgePurchaseParams acknowledgePurchaseParams, @NonNull AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener);

    @AnyThread
    public abstract void consumeAsync(@NonNull ConsumeParams consumeParams, @NonNull ConsumeResponseListener consumeResponseListener);

    @AnyThread
    @zzf
    @KeepForSdk
    public abstract void createAlternativeBillingOnlyReportingDetailsAsync(@NonNull AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener);

    @AnyThread
    @zzh
    public abstract void createExternalOfferReportingDetailsAsync(@NonNull ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener);

    @AnyThread
    public abstract void endConnection();

    @AnyThread
    @zzi
    public abstract void getBillingConfigAsync(@NonNull GetBillingConfigParams getBillingConfigParams, @NonNull BillingConfigResponseListener billingConfigResponseListener);

    @AnyThread
    public abstract int getConnectionState();

    @AnyThread
    @zzf
    @KeepForSdk
    public abstract void isAlternativeBillingOnlyAvailableAsync(@NonNull AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener);

    @AnyThread
    @zzh
    public abstract void isExternalOfferAvailableAsync(@NonNull ExternalOfferAvailabilityListener externalOfferAvailabilityListener);

    @NonNull
    @AnyThread
    public abstract BillingResult isFeatureSupported(@NonNull String str);

    @AnyThread
    public abstract boolean isReady();

    @NonNull
    @UiThread
    public abstract BillingResult launchBillingFlow(@NonNull Activity activity, @NonNull BillingFlowParams billingFlowParams);

    @AnyThread
    public abstract void queryProductDetailsAsync(@NonNull QueryProductDetailsParams queryProductDetailsParams, @NonNull ProductDetailsResponseListener productDetailsResponseListener);

    @AnyThread
    public abstract void queryPurchasesAsync(@NonNull QueryPurchasesParams queryPurchasesParams, @NonNull PurchasesResponseListener purchasesResponseListener);

    @NonNull
    @zzf
    @UiThread
    public abstract BillingResult showAlternativeBillingOnlyInformationDialog(@NonNull Activity activity, @NonNull AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener);

    @NonNull
    @UiThread
    @zzh
    public abstract BillingResult showExternalOfferInformationDialog(@NonNull Activity activity, @NonNull ExternalOfferInformationDialogListener externalOfferInformationDialogListener);

    @NonNull
    @UiThread
    public abstract BillingResult showInAppMessages(@NonNull Activity activity, @NonNull InAppMessageParams inAppMessageParams, @NonNull InAppMessageResponseListener inAppMessageResponseListener);

    @AnyThread
    public abstract void startConnection(@NonNull BillingClientStateListener billingClientStateListener);
}
