package com.android.billingclient.api;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.BundleCompat;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.google.android.gms.internal.play_billing.zzbi;
import com.google.android.gms.internal.play_billing.zzbl;
import com.google.android.gms.internal.play_billing.zzhv;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhz;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzic;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzig;
import com.google.android.gms.internal.play_billing.zzil;
import com.google.android.gms.internal.play_billing.zziq;
import com.google.android.gms.internal.play_billing.zzis;
import com.google.android.gms.internal.play_billing.zziw;
import com.google.android.gms.internal.play_billing.zziz;
import com.google.android.gms.internal.play_billing.zzjt;
import com.google.android.gms.internal.play_billing.zzjv;
import com.google.android.gms.internal.play_billing.zzr;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public class b extends BillingClient {
    private boolean A;
    private boolean B;
    private boolean C;
    @Nullable
    private PendingPurchasesParams D;
    private boolean E;
    private boolean F;
    @Nullable
    private volatile BillingClientStateListener G;
    private ExecutorService H;
    private final Long I;
    private zzbl J;

    /* renamed from: a  reason: collision with root package name */
    private final Object f6593a;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f6594b;

    /* renamed from: c  reason: collision with root package name */
    private final String f6595c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f6596d;

    /* renamed from: e  reason: collision with root package name */
    private final Handler f6597e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private volatile a0 f6598f;

    /* renamed from: g  reason: collision with root package name */
    private Context f6599g;

    /* renamed from: h  reason: collision with root package name */
    private t f6600h;

    /* renamed from: i  reason: collision with root package name */
    private volatile com.google.android.gms.internal.play_billing.zzam f6601i;

    /* renamed from: j  reason: collision with root package name */
    private volatile f f6602j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f6603k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f6604l;

    /* renamed from: m  reason: collision with root package name */
    private int f6605m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f6606n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f6607o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f6608p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f6609q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f6610r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f6611s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f6612t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f6613u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f6614v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f6615w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f6616x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f6617y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f6618z;

    @AnyThread
    private b(Context context, PendingPurchasesParams pendingPurchasesParams, PurchasesUpdatedListener purchasesUpdatedListener, String str, String str2, @Nullable UserChoiceBillingListener userChoiceBillingListener, @Nullable t tVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        this.f6593a = new Object();
        this.f6594b = 0;
        this.f6597e = new Handler(Looper.getMainLooper());
        this.f6605m = 0;
        this.I = Long.valueOf(new Random().nextLong());
        this.J = com.google.android.gms.internal.play_billing.zzaz.zza();
        this.f6595c = str;
        this.f6596d = z0();
        a(context, purchasesUpdatedListener, pendingPurchasesParams, userChoiceBillingListener, str, null, builder);
    }

    private final /* synthetic */ Void A0(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            if (!a0(30000L)) {
                K(alternativeBillingOnlyReportingDetailsListener, u.f6672j, zzie.SERVICE_CONNECTION_NOT_READY, null);
            } else if (!this.f6617y) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support alternative billing only.");
                K(alternativeBillingOnlyReportingDetailsListener, u.D, zzie.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED, null);
            } else {
                synchronized (this.f6593a) {
                    zzamVar = this.f6601i;
                }
                if (zzamVar == null) {
                    K(alternativeBillingOnlyReportingDetailsListener, u.f6672j, zzie.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzamVar.zzk(21, this.f6599g.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzg(this.f6595c, this.f6596d, this.I.longValue()), new g(alternativeBillingOnlyReportingDetailsListener, this.f6600h, this.f6605m, null));
                }
            }
        } catch (DeadObjectException e10) {
            K(alternativeBillingOnlyReportingDetailsListener, u.f6672j, zzie.CREATE_ALTERNATIVE_BILLING_ONLY_TOKEN_SERVICE_CALL_EXCEPTION, e10);
        } catch (Exception e11) {
            K(alternativeBillingOnlyReportingDetailsListener, u.f6670h, zzie.CREATE_ALTERNATIVE_BILLING_ONLY_TOKEN_SERVICE_CALL_EXCEPTION, e11);
        }
        return null;
    }

    private final /* synthetic */ Void B0(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, String str) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            if (!a0(30000L)) {
                L(externalOfferReportingDetailsListener, u.f6672j, zzie.SERVICE_CONNECTION_NOT_READY, null);
            } else if (!this.f6618z) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support external offer.");
                L(externalOfferReportingDetailsListener, u.f6682t, zzie.EXTERNAL_OFFER_NOT_SUPPORTED, null);
            } else {
                synchronized (this.f6593a) {
                    zzamVar = this.f6601i;
                }
                if (zzamVar == null) {
                    L(externalOfferReportingDetailsListener, u.f6672j, zzie.SERVICE_RESET_TO_NULL, null);
                } else {
                    String packageName = this.f6599g.getPackageName();
                    long j10 = this.f6599g.getPackageManager().getPackageInfo(this.f6599g.getPackageName(), 0).firstInstallTime;
                    String str2 = this.f6595c;
                    String str3 = this.f6596d;
                    long longValue = this.I.longValue();
                    int i10 = com.google.android.gms.internal.play_billing.zzc.zza;
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, str2, str3, longValue);
                    bundle.putLong("appInstallTimeMillis", j10);
                    zzamVar.zzl(22, packageName, bundle, new h(externalOfferReportingDetailsListener, this.f6600h, this.f6605m, null));
                }
            }
        } catch (DeadObjectException e10) {
            L(externalOfferReportingDetailsListener, u.f6672j, zzie.CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS_SERVICE_CALL_EXCEPTION, e10);
        } catch (Exception e11) {
            L(externalOfferReportingDetailsListener, u.f6670h, zzie.CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS_SERVICE_CALL_EXCEPTION, e11);
        }
        return null;
    }

    private final /* synthetic */ Void C0(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            if (!a0(30000L)) {
                I(alternativeBillingOnlyAvailabilityListener, u.f6672j, zzie.SERVICE_CONNECTION_NOT_READY, null);
            } else if (!this.f6617y) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support alternative billing only.");
                I(alternativeBillingOnlyAvailabilityListener, u.D, zzie.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED, null);
            } else {
                synchronized (this.f6593a) {
                    zzamVar = this.f6601i;
                }
                if (zzamVar == null) {
                    I(alternativeBillingOnlyAvailabilityListener, u.f6672j, zzie.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzamVar.zzp(21, this.f6599g.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzg(this.f6595c, this.f6596d, this.I.longValue()), new l(alternativeBillingOnlyAvailabilityListener, this.f6600h, this.f6605m, null));
                }
            }
        } catch (DeadObjectException e10) {
            I(alternativeBillingOnlyAvailabilityListener, u.f6672j, zzie.IS_ALTERNATIVE_BILLING_ONLY_AVAILABLE_SERVICE_CALL_EXCEPTION, e10);
        } catch (Exception e11) {
            I(alternativeBillingOnlyAvailabilityListener, u.f6670h, zzie.IS_ALTERNATIVE_BILLING_ONLY_AVAILABLE_SERVICE_CALL_EXCEPTION, e11);
        }
        return null;
    }

    private final /* synthetic */ Void D(ExternalOfferAvailabilityListener externalOfferAvailabilityListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            if (!a0(30000L)) {
                M(externalOfferAvailabilityListener, u.f6672j, zzie.SERVICE_CONNECTION_NOT_READY, null);
            } else if (!this.B) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support launching external offer flow.");
                M(externalOfferAvailabilityListener, u.A, zzie.LAUNCH_EXTERNAL_OFFER_FLOW_NOT_SUPPORTED, null);
            } else {
                synchronized (this.f6593a) {
                    zzamVar = this.f6601i;
                }
                if (zzamVar == null) {
                    M(externalOfferAvailabilityListener, u.f6672j, zzie.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzamVar.zzq(24, this.f6599g.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzg(this.f6595c, this.f6596d, this.I.longValue()), new m(externalOfferAvailabilityListener, this.f6600h, this.f6605m, null));
                }
            }
        } catch (DeadObjectException e10) {
            M(externalOfferAvailabilityListener, u.f6672j, zzie.IS_EXTERNAL_PAYMENT_AVAILABLE_SERVICE_CALL_EXCEPTION, e10);
        } catch (Exception e11) {
            M(externalOfferAvailabilityListener, u.f6670h, zzie.IS_EXTERNAL_PAYMENT_AVAILABLE_SERVICE_CALL_EXCEPTION, e11);
        }
        return null;
    }

    private final /* synthetic */ Void E(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.f6593a) {
                zzamVar = this.f6601i;
            }
            if (zzamVar == null) {
                P(alternativeBillingOnlyInformationDialogListener, u.f6672j, zzie.SERVICE_RESET_TO_NULL, null);
            } else {
                zzamVar.zzm(21, this.f6599g.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzg(this.f6595c, this.f6596d, this.I.longValue()), new i(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e10) {
            P(alternativeBillingOnlyInformationDialogListener, u.f6672j, zzie.SHOW_ALTERNATIVE_BILLING_ONLY_DIALOG_SERVICE_CALL_EXCEPTION, e10);
        } catch (Exception e11) {
            P(alternativeBillingOnlyInformationDialogListener, u.f6670h, zzie.SHOW_ALTERNATIVE_BILLING_ONLY_DIALOG_SERVICE_CALL_EXCEPTION, e11);
        }
        return null;
    }

    private final zzcw E0(int i10, BillingResult billingResult, zzie zzieVar, String str, @Nullable Exception exc) {
        J0(zzieVar, 9, billingResult, zzcg.zza(exc));
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", str, exc);
        return new zzcw(billingResult, null);
    }

    private final /* synthetic */ Void F(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.f6593a) {
                zzamVar = this.f6601i;
            }
            if (zzamVar == null) {
                N(externalOfferInformationDialogListener, u.f6672j, zzie.SERVICE_RESET_TO_NULL, null);
            } else {
                zzamVar.zzo(22, this.f6599g.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzg(this.f6595c, this.f6596d, this.I.longValue()), new k(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e10) {
            N(externalOfferInformationDialogListener, u.f6672j, zzie.SHOW_EXTERNAL_PAYMENT_DIALOG_SERVICE_CALL_EXCEPTION, e10);
        } catch (Exception e11) {
            N(externalOfferInformationDialogListener, u.f6670h, zzie.SHOW_EXTERNAL_PAYMENT_DIALOG_SERVICE_CALL_EXCEPTION, e11);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:64:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x016d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.billingclient.api.zzcw F0(java.lang.String r17, boolean r18, int r19) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.b.F0(java.lang.String, boolean, int):com.android.billingclient.api.zzcw");
    }

    private final void G(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        int zza;
        String str;
        String purchaseToken = consumeParams.getPurchaseToken();
        try {
            com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Consuming purchase with token: " + purchaseToken);
            synchronized (this.f6593a) {
                zzamVar = this.f6601i;
            }
            if (zzamVar == null) {
                J(consumeResponseListener, purchaseToken, u.f6672j, zzie.SERVICE_RESET_TO_NULL, "Service has been reset to null.", null);
                return;
            }
            if (this.f6608p) {
                String packageName = this.f6599g.getPackageName();
                boolean z10 = this.f6608p;
                String str2 = this.f6595c;
                String str3 = this.f6596d;
                long longValue = this.I.longValue();
                Bundle bundle = new Bundle();
                if (z10) {
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, str2, str3, longValue);
                }
                Bundle zze = zzamVar.zze(9, packageName, purchaseToken, bundle);
                zza = zze.getInt("RESPONSE_CODE");
                str = com.google.android.gms.internal.play_billing.zzc.zzj(zze, "BillingClient");
            } else {
                zza = zzamVar.zza(3, this.f6599g.getPackageName(), purchaseToken);
                str = "";
            }
            BillingResult a10 = u.a(zza, str);
            if (zza == 0) {
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Successfully consumed purchase.");
                consumeResponseListener.onConsumeResponse(a10, purchaseToken);
                return;
            }
            zzie zzieVar = zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            J(consumeResponseListener, purchaseToken, a10, zzieVar, "Error consuming purchase with token. Response code: " + zza, null);
        } catch (DeadObjectException e10) {
            J(consumeResponseListener, purchaseToken, u.f6672j, zzie.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", e10);
        } catch (Exception e11) {
            J(consumeResponseListener, purchaseToken, u.f6670h, zzie.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", e11);
        }
    }

    private final void G0(BillingResult billingResult, zzie zzieVar, int i10) {
        zzib zzibVar = null;
        zzhx zzhxVar = null;
        if (billingResult.getResponseCode() != 0) {
            int i11 = zzcg.zza;
            try {
                zzhv zzc = zzhx.zzc();
                zzic zzc2 = zzig.zzc();
                zzc2.zzo(billingResult.getResponseCode());
                zzc2.zzl(billingResult.getDebugMessage());
                zzc2.zzn(zzieVar);
                zzc.zzl(zzc2);
                zzc.zzp(5);
                zziw zzc3 = zziz.zzc();
                zzc3.zza(i10);
                zzc.zzm((zziz) zzc3.zze());
                zzhxVar = (zzhx) zzc.zze();
            } catch (Exception e10) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to create logging payload", e10);
            }
            R(zzhxVar);
            return;
        }
        int i12 = zzcg.zza;
        try {
            zzhz zzc4 = zzib.zzc();
            zzc4.zzo(5);
            zziw zzc5 = zziz.zzc();
            zzc5.zza(i10);
            zzc4.zzl((zziz) zzc5.zze());
            zzibVar = (zzib) zzc4.zze();
        } catch (Exception e11) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to create logging payload", e11);
        }
        T(zzibVar);
    }

    private final void H(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, BillingResult billingResult, zzie zzieVar, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error in acknowledge purchase!", exc);
        J0(zzieVar, 3, billingResult, zzcg.zza(exc));
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H0(zzie zzieVar, int i10, BillingResult billingResult) {
        try {
            int i11 = zzcg.zza;
            R(zzcg.zzb(zzieVar, i10, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener, BillingResult billingResult, zzie zzieVar, @Nullable Exception exc) {
        J0(zzieVar, 14, billingResult, zzcg.zza(exc));
        alternativeBillingOnlyAvailabilityListener.onAlternativeBillingOnlyAvailabilityResponse(billingResult);
    }

    private final void I0(zzie zzieVar, int i10, BillingResult billingResult, long j10) {
        try {
            int i11 = zzcg.zza;
            this.f6600h.b(zzcg.zzb(zzieVar, 2, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6605m, j10);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    private final void J(ConsumeResponseListener consumeResponseListener, String str, BillingResult billingResult, zzie zzieVar, String str2, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", str2, exc);
        J0(zzieVar, 4, billingResult, zzcg.zza(exc));
        consumeResponseListener.onConsumeResponse(billingResult, str);
    }

    private final void J0(zzie zzieVar, int i10, BillingResult billingResult, @Nullable String str) {
        try {
            int i11 = zzcg.zza;
            R(zzcg.zzb(zzieVar, i10, billingResult, str, zzil.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener, BillingResult billingResult, zzie zzieVar, @Nullable Exception exc) {
        J0(zzieVar, 15, billingResult, zzcg.zza(exc));
        alternativeBillingOnlyReportingDetailsListener.onAlternativeBillingOnlyTokenResponse(billingResult, null);
    }

    private final void K0(zzie zzieVar, int i10, BillingResult billingResult, long j10, boolean z10) {
        try {
            int i11 = zzcg.zza;
            S(zzcg.zzb(zzieVar, 2, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED), j10, z10);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, BillingResult billingResult, zzie zzieVar, @Nullable Exception exc) {
        J0(zzieVar, 24, billingResult, zzcg.zza(exc));
        externalOfferReportingDetailsListener.onExternalOfferReportingDetailsResponse(billingResult, null);
    }

    private final void L0(zzie zzieVar, int i10, BillingResult billingResult, @Nullable String str, long j10, boolean z10) {
        try {
            int i11 = zzcg.zza;
            S(zzcg.zzb(zzieVar, 2, billingResult, str, zzil.BROADCAST_ACTION_UNSPECIFIED), j10, z10);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(ExternalOfferAvailabilityListener externalOfferAvailabilityListener, BillingResult billingResult, zzie zzieVar, @Nullable Exception exc) {
        J0(zzieVar, 23, billingResult, zzcg.zza(exc));
        externalOfferAvailabilityListener.onExternalOfferAvailabilityResponse(billingResult);
    }

    private void M0(int i10) {
        try {
            int i11 = zzcg.zza;
            T(zzcg.zzc(i10, zzil.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, BillingResult billingResult, zzie zzieVar, @Nullable Exception exc) {
        J0(zzieVar, 25, billingResult, zzcg.zza(exc));
        externalOfferInformationDialogListener.onExternalOfferInformationDialogResponse(billingResult);
    }

    private final void O(BillingConfigResponseListener billingConfigResponseListener, BillingResult billingResult, zzie zzieVar, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "getBillingConfig got an exception.", exc);
        J0(zzieVar, 13, billingResult, zzcg.zza(exc));
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, BillingResult billingResult, zzie zzieVar, @Nullable Exception exc) {
        J0(zzieVar, 16, billingResult, zzcg.zza(exc));
        alternativeBillingOnlyInformationDialogListener.onAlternativeBillingOnlyInformationDialogResponse(billingResult);
    }

    private final void Q(int i10, zzie zzieVar, @Nullable Exception exc) {
        zzhx zzhxVar;
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "showInAppMessages error.", exc);
        t tVar = this.f6600h;
        String zza = zzcg.zza(exc);
        try {
            zzic zzc = zzig.zzc();
            zzc.zzo(i10);
            if (zzieVar != null) {
                zzc.zzn(zzieVar);
            }
            if (zza != null) {
                zzc.zza(zza);
            }
            zzhv zzc2 = zzhx.zzc();
            zzc2.zzl(zzc);
            zzc2.zzp(30);
            zzhxVar = (zzhx) zzc2.zze();
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to create logging payload", th2);
            zzhxVar = null;
        }
        tVar.h(zzhxVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R(zzhx zzhxVar) {
        try {
            this.f6600h.k(zzhxVar, this.f6605m);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    private final void S(zzhx zzhxVar, long j10, boolean z10) {
        try {
            this.f6600h.g(zzhxVar, this.f6605m, j10, z10);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(zzib zzibVar) {
        try {
            this.f6600h.d(zzibVar, this.f6605m);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(zzie zzieVar, BillingResult billingResult, int i10) {
        boolean z10;
        try {
            int i11 = zzcg.zza;
            zzhv zzhvVar = (zzhv) zzcg.zzb(zzieVar, 6, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED).zzm();
            zzjt zzc = zzjv.zzc();
            if (i10 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            zzc.zza(z10);
            zzc.zzl(i10);
            zzhvVar.zzo(zzc);
            R((zzhx) zzhvVar.zze());
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V(int i10) {
        synchronized (this.f6593a) {
            try {
                if (this.f6594b == 3) {
                    return;
                }
                String c02 = c0(this.f6594b);
                String c03 = c0(i10);
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Setting clientState from " + c02 + " to " + c03);
                this.f6594b = i10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final synchronized void W() {
        ExecutorService executorService = this.H;
        if (executorService != null) {
            executorService.shutdownNow();
            this.H = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ BillingResult W0(Exception exc) {
        if (exc instanceof DeadObjectException) {
            return u.f6672j;
        }
        return u.f6670h;
    }

    private final void X(BillingClientStateListener billingClientStateListener, int i10) {
        zzie zzieVar;
        BillingResult billingResult;
        boolean bindService;
        BillingResult billingResult2;
        synchronized (this.f6593a) {
            try {
                if (b0()) {
                    billingResult = s0(i10);
                } else {
                    if (this.f6594b == 1) {
                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Client is already in the process of connecting to billing service.");
                        zzie zzieVar2 = zzie.BILLING_CLIENT_CONNECTING;
                        billingResult2 = u.f6666d;
                        U(zzieVar2, billingResult2, i10);
                    } else if (this.f6594b == 3) {
                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                        zzie zzieVar3 = zzie.BILLING_CLIENT_CLOSED;
                        billingResult2 = u.f6672j;
                        U(zzieVar3, billingResult2, i10);
                    } else {
                        V(1);
                        if (i10 == 0) {
                            this.G = billingClientStateListener;
                            i10 = 0;
                        }
                        Y();
                        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Starting in-app billing setup.");
                        this.f6602j = new f(this, billingClientStateListener, i10, null);
                        this.f6602j.c();
                        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                        intent.setPackage("com.android.vending");
                        List<ResolveInfo> queryIntentServices = this.f6599g.getPackageManager().queryIntentServices(intent, 0);
                        if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                            if (serviceInfo != null) {
                                String str = serviceInfo.packageName;
                                String str2 = serviceInfo.name;
                                if (Objects.equals(str, "com.android.vending") && str2 != null) {
                                    ComponentName componentName = new ComponentName(str, str2);
                                    Intent intent2 = new Intent(intent);
                                    intent2.setComponent(componentName);
                                    intent2.putExtra("playBillingLibraryVersion", this.f6595c);
                                    synchronized (this.f6593a) {
                                        try {
                                            if (this.f6594b == 2) {
                                                billingResult = s0(i10);
                                            } else if (this.f6594b != 1) {
                                                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                                zzie zzieVar4 = zzie.BILLING_CLIENT_TRANSITIONED_OUT_OF_CONNECTING;
                                                billingResult2 = u.f6672j;
                                                U(zzieVar4, billingResult2, i10);
                                            } else {
                                                f fVar = this.f6602j;
                                                if (i10 > 0 && Build.VERSION.SDK_INT >= 29) {
                                                    bindService = this.f6599g.bindService(intent2, 1, h(), fVar);
                                                } else {
                                                    bindService = this.f6599g.bindService(intent2, fVar, 1);
                                                }
                                                if (bindService) {
                                                    com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Service was bonded successfully.");
                                                    billingResult = null;
                                                } else {
                                                    zzieVar = zzie.BILLING_SERVICE_BLOCKED;
                                                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Connection to Billing service is blocked.");
                                                }
                                            }
                                        } finally {
                                        }
                                    }
                                } else {
                                    zzieVar = zzie.INVALID_PHONESKY_PACKAGE;
                                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "The device doesn't have valid Play Store.");
                                }
                            } else {
                                zzieVar = zzie.INVALID_PHONESKY_PACKAGE;
                                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "The device doesn't have valid Play Store.");
                            }
                        } else {
                            zzieVar = zzie.INTENT_SERVICE_NOT_FOUND;
                        }
                        V(0);
                        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Billing service unavailable on device.");
                        BillingResult billingResult3 = u.f6664b;
                        U(zzieVar, billingResult3, i10);
                        billingResult = billingResult3;
                    }
                    billingResult = billingResult2;
                }
            } finally {
            }
        }
        if (billingResult != null) {
            billingClientStateListener.onBillingSetupFinished(billingResult);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y() {
        synchronized (this.f6593a) {
            if (this.f6602j != null) {
                this.f6599g.unbindService(this.f6602j);
                this.f6601i = null;
                this.f6602j = null;
            }
        }
    }

    private final boolean Z(long j10) {
        long j11;
        try {
            if (Build.VERSION.SDK_INT < 29) {
                j11 = 0;
            } else {
                j11 = 3000;
            }
            BillingResult billingResult = (BillingResult) u0(1).get(j11, TimeUnit.MILLISECONDS);
            if (billingResult.getResponseCode() == 0) {
                int responseCode = billingResult.getResponseCode();
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Reconnection succeeded with result: " + responseCode);
            } else {
                int responseCode2 = billingResult.getResponseCode();
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Reconnection failed with result: " + responseCode2);
            }
        } catch (Exception e10) {
            if (e10 instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error during reconnection attempt: ", e10);
        }
        return b0();
    }

    private void a(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, @Nullable UserChoiceBillingListener userChoiceBillingListener, String str, @Nullable t tVar, BillingClient.Builder builder) {
        this.f6599g = context.getApplicationContext();
        zziq zzc = zzis.zzc();
        zzc.zzs(str);
        String str2 = this.f6596d;
        if (str2 != null) {
            zzc.zzt(str2);
        }
        zzc.zzq(this.f6599g.getPackageName());
        zzc.zzn(this.I.longValue());
        zzc.zzr(builder.f6455g);
        zzc.zza(Build.VERSION.SDK_INT);
        zzc.zzp(772604006L);
        boolean z10 = false;
        try {
            zzc.zzl(this.f6599g.getPackageManager().getPackageInfo(this.f6599g.getPackageName(), 0).versionCode);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error getting app version code.", th2);
        }
        if (tVar != null) {
            this.f6600h = tVar;
        } else {
            this.f6600h = new v(this.f6599g, (zzis) zzc.zze());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f6598f = new a0(this.f6599g, purchasesUpdatedListener, null, null, userChoiceBillingListener, this.f6600h);
        this.D = pendingPurchasesParams;
        if (userChoiceBillingListener != null) {
            z10 = true;
        }
        this.F = z10;
        this.E = builder.f6455g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a0(long j10) {
        long max;
        zzbi zzb = zzbi.zzb(this.J);
        long j11 = 30000;
        for (int i10 = 1; i10 <= 3; i10++) {
            try {
                max = Math.max(0L, j11);
            } catch (Exception e10) {
                if (e10 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error during reconnection attempt: ", e10);
            }
            if (max <= 0) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "No time remaining for reconnection attempt.");
                return b0();
            }
            BillingResult billingResult = (BillingResult) u0(i10).get(max, TimeUnit.MILLISECONDS);
            if (billingResult.getResponseCode() == 0) {
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Reconnection succeeded with result: " + billingResult.getResponseCode());
                return b0();
            }
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Reconnection failed with result: " + billingResult.getResponseCode());
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            j11 = 30000 - zzb.zza(timeUnit);
            long pow = ((long) Math.pow(2.0d, i10 - 1)) * 1000;
            if (j11 < pow) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Reconnection failed due to timeout limit reached.");
                return b0();
            }
            if (i10 < 3 && pow > 0) {
                try {
                    Thread.sleep(pow);
                    j11 = 30000 - zzb.zza(timeUnit);
                } catch (InterruptedException e11) {
                    Thread.currentThread().interrupt();
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error sleeping during reconnection attempt: ", e11);
                }
            }
        }
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Max retries reached.");
        return b0();
    }

    private void b(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, @Nullable zzb zzbVar, String str, @Nullable t tVar, BillingClient.Builder builder) {
        this.f6599g = context.getApplicationContext();
        zziq zzc = zzis.zzc();
        zzc.zzs(str);
        String str2 = this.f6596d;
        if (str2 != null) {
            zzc.zzt(str2);
        }
        zzc.zzq(this.f6599g.getPackageName());
        zzc.zzn(this.I.longValue());
        zzc.zzr(builder.f6455g);
        zzc.zza(Build.VERSION.SDK_INT);
        zzc.zzp(772604006L);
        boolean z10 = false;
        try {
            zzc.zzl(this.f6599g.getPackageManager().getPackageInfo(this.f6599g.getPackageName(), 0).versionCode);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error getting app version code.", th2);
        }
        if (tVar != null) {
            this.f6600h = tVar;
        } else {
            this.f6600h = new v(this.f6599g, (zzis) zzc.zze());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f6598f = new a0(this.f6599g, purchasesUpdatedListener, null, zzbVar, null, this.f6600h);
        this.D = pendingPurchasesParams;
        if (zzbVar != null) {
            z10 = true;
        }
        this.F = z10;
        this.f6599g.getPackageName();
        this.E = builder.f6455g;
    }

    private final boolean b0() {
        boolean z10;
        synchronized (this.f6593a) {
            try {
                z10 = false;
                if (this.f6594b == 2 && this.f6601i != null && this.f6602j != null) {
                    z10 = true;
                }
            } finally {
            }
        }
        return z10;
    }

    public static /* synthetic */ Object b1(b bVar, int i10, com.google.android.gms.internal.play_billing.zzp zzpVar) {
        bVar.X(new e(bVar, zzpVar), i10);
        return "reconnectIfNeeded";
    }

    public static /* synthetic */ Void c(b bVar, ExternalOfferAvailabilityListener externalOfferAvailabilityListener) {
        bVar.D(externalOfferAvailabilityListener);
        return null;
    }

    private static final String c0(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return "CLOSED";
                }
                return "CONNECTED";
            }
            return "CONNECTING";
        }
        return "DISCONNECTED";
    }

    public static /* synthetic */ Object c1(b bVar, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        if (!bVar.a0(30000L)) {
            zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = u.f6672j;
            bVar.H0(zzieVar, 4, billingResult);
            consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
            return null;
        }
        bVar.G(consumeParams, consumeResponseListener);
        return null;
    }

    public static /* synthetic */ Void d(b bVar, ExternalOfferInformationDialogListener externalOfferInformationDialogListener, Activity activity, ResultReceiver resultReceiver) {
        bVar.F(externalOfferInformationDialogListener, activity, resultReceiver);
        return null;
    }

    public static /* synthetic */ Object d1(b bVar, ProductDetailsResponseListener productDetailsResponseListener, QueryProductDetailsParams queryProductDetailsParams) {
        if (!bVar.a0(30000L)) {
            zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = u.f6672j;
            bVar.H0(zzieVar, 7, billingResult);
            productDetailsResponseListener.onProductDetailsResponse(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
            return null;
        } else if (!bVar.f6613u) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Querying product details is not supported.");
            zzie zzieVar2 = zzie.PRODUCT_DETAILS_NOT_SUPPORTED;
            BillingResult billingResult2 = u.f6680r;
            bVar.H0(zzieVar2, 7, billingResult2);
            productDetailsResponseListener.onProductDetailsResponse(billingResult2, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
            return null;
        } else {
            o R0 = bVar.R0(queryProductDetailsParams);
            productDetailsResponseListener.onProductDetailsResponse(u.a(R0.a(), R0.b()), new QueryProductDetailsResult(R0.c(), R0.d()));
            return null;
        }
    }

    public static /* synthetic */ Void e(b bVar, ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, String str) {
        bVar.B0(externalOfferReportingDetailsListener, null);
        return null;
    }

    public static /* synthetic */ Object e1(b bVar, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, AcknowledgePurchaseParams acknowledgePurchaseParams) {
        bVar.v0(acknowledgePurchaseResponseListener, acknowledgePurchaseParams);
        return null;
    }

    public static /* synthetic */ Void f(b bVar, AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) {
        bVar.A0(alternativeBillingOnlyReportingDetailsListener);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void f0(b bVar, int i10) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        boolean z23;
        boolean z24;
        bVar.f6605m = i10;
        boolean z25 = false;
        if (i10 >= 26) {
            z10 = true;
        } else {
            z10 = false;
        }
        bVar.C = z10;
        if (i10 >= 24) {
            z11 = true;
        } else {
            z11 = false;
        }
        bVar.B = z11;
        if (i10 >= 23) {
            z12 = true;
        } else {
            z12 = false;
        }
        bVar.A = z12;
        if (i10 >= 22) {
            z13 = true;
        } else {
            z13 = false;
        }
        bVar.f6618z = z13;
        if (i10 >= 21) {
            z14 = true;
        } else {
            z14 = false;
        }
        bVar.f6617y = z14;
        if (i10 >= 20) {
            z15 = true;
        } else {
            z15 = false;
        }
        bVar.f6616x = z15;
        if (i10 >= 19) {
            z16 = true;
        } else {
            z16 = false;
        }
        bVar.f6615w = z16;
        if (i10 >= 18) {
            z17 = true;
        } else {
            z17 = false;
        }
        bVar.f6614v = z17;
        if (i10 >= 17) {
            z18 = true;
        } else {
            z18 = false;
        }
        bVar.f6613u = z18;
        if (i10 >= 16) {
            z19 = true;
        } else {
            z19 = false;
        }
        bVar.f6612t = z19;
        if (i10 >= 15) {
            z20 = true;
        } else {
            z20 = false;
        }
        bVar.f6611s = z20;
        if (i10 >= 14) {
            z21 = true;
        } else {
            z21 = false;
        }
        bVar.f6610r = z21;
        if (i10 >= 12) {
            z22 = true;
        } else {
            z22 = false;
        }
        bVar.f6609q = z22;
        if (i10 >= 9) {
            z23 = true;
        } else {
            z23 = false;
        }
        bVar.f6608p = z23;
        if (i10 >= 8) {
            z24 = true;
        } else {
            z24 = false;
        }
        bVar.f6607o = z24;
        if (i10 >= 6) {
            z25 = true;
        }
        bVar.f6606n = z25;
    }

    public static /* synthetic */ Object f1(b bVar, Bundle bundle, Activity activity, ResultReceiver resultReceiver) {
        bVar.x0(bundle, activity, resultReceiver);
        return null;
    }

    public static /* synthetic */ Void g(b bVar, AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        bVar.C0(alternativeBillingOnlyAvailabilityListener);
        return null;
    }

    public static /* synthetic */ Object g1(b bVar, BillingConfigResponseListener billingConfigResponseListener) {
        bVar.w0(billingConfigResponseListener);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void h0(b bVar, int i10) {
        a0 a0Var;
        if (i10 == 0) {
            synchronized (bVar.f6593a) {
                try {
                    if (bVar.f6594b == 3) {
                        return;
                    }
                    bVar.V(2);
                    if (bVar.f6598f != null) {
                        a0Var = bVar.f6598f;
                    } else {
                        a0Var = null;
                    }
                    if (a0Var != null) {
                        a0Var.g(bVar.f6617y);
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        bVar.V(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Future i(Callable callable, long j10, @Nullable final Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            final Future submit = executorService.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.zzaj
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = submit;
                    if (!future.isDone() && !future.isCancelled()) {
                        Runnable runnable2 = runnable;
                        future.cancel(true);
                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Async task is taking too long, cancel it!");
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                }
            }, (long) (j10 * 0.95d));
            return submit;
        } catch (Exception e10) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Async task throws exception!", e10);
            return null;
        }
    }

    public static /* synthetic */ void j(b bVar, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = u.f6673k;
        bVar.H0(zzieVar, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
    }

    public static /* synthetic */ void k(b bVar, PurchasesResponseListener purchasesResponseListener) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = u.f6673k;
        bVar.H0(zzieVar, 9, billingResult);
        purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzbt.zzk());
    }

    public static /* synthetic */ Void k1(b bVar, AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, Activity activity, ResultReceiver resultReceiver) {
        bVar.E(alternativeBillingOnlyInformationDialogListener, activity, resultReceiver);
        return null;
    }

    public static /* synthetic */ void l(b bVar, BillingConfigResponseListener billingConfigResponseListener) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = u.f6673k;
        bVar.H0(zzieVar, 13, billingResult);
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean l0(b bVar) {
        boolean z10;
        synchronized (bVar.f6593a) {
            z10 = true;
            if (bVar.f6594b != 1) {
                z10 = false;
            }
        }
        return z10;
    }

    public static /* synthetic */ void n(b bVar, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = u.f6673k;
        bVar.H0(zzieVar, 3, billingResult);
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final /* synthetic */ Bundle o0(int i10, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.f6593a) {
                zzamVar = this.f6601i;
            }
            if (zzamVar == null) {
                return com.google.android.gms.internal.play_billing.zzc.zzd(u.f6672j, zzie.SERVICE_RESET_TO_NULL);
            }
            return zzamVar.zzg(i10, this.f6599g.getPackageName(), str, str2, null, bundle);
        } catch (DeadObjectException e10) {
            return com.google.android.gms.internal.play_billing.zzc.zze(u.f6672j, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e10));
        } catch (Exception e11) {
            return com.google.android.gms.internal.play_billing.zzc.zze(u.f6670h, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e11));
        }
    }

    public static /* synthetic */ void p(b bVar, ProductDetailsResponseListener productDetailsResponseListener) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = u.f6673k;
        bVar.H0(zzieVar, 7, billingResult);
        productDetailsResponseListener.onProductDetailsResponse(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final /* synthetic */ Bundle p0(String str, String str2) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.f6593a) {
                zzamVar = this.f6601i;
            }
            if (zzamVar == null) {
                return com.google.android.gms.internal.play_billing.zzc.zzd(u.f6672j, zzie.SERVICE_RESET_TO_NULL);
            }
            return zzamVar.zzf(3, this.f6599g.getPackageName(), str, str2, null);
        } catch (DeadObjectException e10) {
            return com.google.android.gms.internal.play_billing.zzc.zze(u.f6672j, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e10));
        } catch (Exception e11) {
            return com.google.android.gms.internal.play_billing.zzc.zze(u.f6670h, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler q0() {
        if (Looper.myLooper() == null) {
            return this.f6597e;
        }
        return new Handler(Looper.myLooper());
    }

    public static /* synthetic */ void r(b bVar, BillingResult billingResult) {
        if (bVar.f6598f.d() != null) {
            bVar.f6598f.d().onPurchasesUpdated(billingResult, null);
        } else {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    private final o r0(BillingResult billingResult, zzie zzieVar, String str, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", str, exc);
        J0(zzieVar, 7, billingResult, zzcg.zza(exc));
        return new o(billingResult.getResponseCode(), billingResult.getDebugMessage(), new ArrayList(), new ArrayList());
    }

    private final BillingResult s0(int i10) {
        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Service connection is valid. No need to re-initialize.");
        zzhz zzc = zzib.zzc();
        zzc.zzo(6);
        zzjt zzc2 = zzjv.zzc();
        boolean z10 = true;
        zzc2.zzn(true);
        if (i10 <= 0) {
            z10 = false;
        }
        zzc2.zza(z10);
        zzc2.zzl(i10);
        zzc.zzn(zzc2);
        T((zzib) zzc.zze());
        return u.f6671i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingResult t0() {
        int[] iArr = {0, 3};
        synchronized (this.f6593a) {
            for (int i10 = 0; i10 < 2; i10++) {
                if (this.f6594b == iArr[i10]) {
                    return u.f6672j;
                }
            }
        }
        return u.f6670h;
    }

    private final com.google.android.gms.internal.play_billing.zzcz u0(final int i10) {
        if (this.E && !b0()) {
            return com.google.android.gms.internal.play_billing.zzu.zza(new zzr() { // from class: com.android.billingclient.api.zzu
                @Override // com.google.android.gms.internal.play_billing.zzr
                public final Object zza(com.google.android.gms.internal.play_billing.zzp zzpVar) {
                    return b.b1(b.this, i10, zzpVar);
                }
            });
        }
        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Already connected or not opted into auto reconnection.");
        return com.google.android.gms.internal.play_billing.zzcu.zza(u.f6671i);
    }

    private final /* synthetic */ Object v0(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, AcknowledgePurchaseParams acknowledgePurchaseParams) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            if (!a0(30000L)) {
                zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
                BillingResult billingResult = u.f6672j;
                H0(zzieVar, 3, billingResult);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
            } else if (TextUtils.isEmpty(acknowledgePurchaseParams.getPurchaseToken())) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Please provide a valid purchase token.");
                zzie zzieVar2 = zzie.EMPTY_PURCHASE_TOKEN;
                BillingResult billingResult2 = u.f6669g;
                H0(zzieVar2, 3, billingResult2);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult2);
            } else if (!this.f6608p) {
                zzie zzieVar3 = zzie.API_VERSION_NOT_V9;
                BillingResult billingResult3 = u.f6663a;
                H0(zzieVar3, 3, billingResult3);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult3);
            } else {
                synchronized (this.f6593a) {
                    zzamVar = this.f6601i;
                }
                if (zzamVar == null) {
                    H(acknowledgePurchaseResponseListener, u.f6672j, zzie.SERVICE_RESET_TO_NULL, null);
                } else {
                    String packageName = this.f6599g.getPackageName();
                    String purchaseToken = acknowledgePurchaseParams.getPurchaseToken();
                    String str = this.f6595c;
                    String str2 = this.f6596d;
                    long longValue = this.I.longValue();
                    int i10 = com.google.android.gms.internal.play_billing.zzc.zza;
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, str, str2, longValue);
                    Bundle zzd = zzamVar.zzd(9, packageName, purchaseToken, bundle);
                    acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(u.a(com.google.android.gms.internal.play_billing.zzc.zzb(zzd, "BillingClient"), com.google.android.gms.internal.play_billing.zzc.zzj(zzd, "BillingClient")));
                    return null;
                }
            }
            return null;
        } catch (DeadObjectException e10) {
            H(acknowledgePurchaseResponseListener, u.f6672j, zzie.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION, e10);
            return null;
        } catch (Exception e11) {
            H(acknowledgePurchaseResponseListener, u.f6670h, zzie.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION, e11);
            return null;
        }
    }

    private final /* synthetic */ Object w0(BillingConfigResponseListener billingConfigResponseListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            if (!a0(30000L)) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Service disconnected.");
                zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
                BillingResult billingResult = u.f6672j;
                H0(zzieVar, 13, billingResult);
                billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
            } else if (!this.f6614v) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support get billing config.");
                zzie zzieVar2 = zzie.GET_BILLING_CONFIG_NOT_SUPPORTED;
                BillingResult billingResult2 = u.f6687y;
                H0(zzieVar2, 13, billingResult2);
                billingConfigResponseListener.onBillingConfigResponse(billingResult2, null);
            } else {
                synchronized (this.f6593a) {
                    zzamVar = this.f6601i;
                }
                if (zzamVar == null) {
                    O(billingConfigResponseListener, u.f6672j, zzie.SERVICE_RESET_TO_NULL, null);
                } else {
                    String packageName = this.f6599g.getPackageName();
                    String str = this.f6595c;
                    String str2 = this.f6596d;
                    long longValue = this.I.longValue();
                    int i10 = com.google.android.gms.internal.play_billing.zzc.zza;
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, str, str2, longValue);
                    zzamVar.zzn(18, packageName, bundle, new j(billingConfigResponseListener, this.f6600h, this.f6605m, null));
                }
            }
        } catch (DeadObjectException e10) {
            O(billingConfigResponseListener, u.f6672j, zzie.GET_BILLING_CONFIG_SERVICE_CALL_EXCEPTION, e10);
        } catch (Exception e11) {
            O(billingConfigResponseListener, u.f6670h, zzie.GET_BILLING_CONFIG_SERVICE_CALL_EXCEPTION, e11);
        }
        return null;
    }

    private final /* synthetic */ Object x0(Bundle bundle, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.f6593a) {
                zzamVar = this.f6601i;
            }
            if (zzamVar == null) {
                Q(-1, zzie.SERVICE_RESET_TO_NULL, null);
            } else {
                zzamVar.zzr(12, this.f6599g.getPackageName(), bundle, new n(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e10) {
            Q(-1, zzie.SERVICE_CALL_EXCEPTION, e10);
        } catch (Exception e11) {
            Q(6, zzie.SERVICE_CALL_EXCEPTION, e11);
        }
        return null;
    }

    private final String y0(QueryProductDetailsParams queryProductDetailsParams) {
        if (!TextUtils.isEmpty(null)) {
            return null;
        }
        return this.f6599g.getPackageName();
    }

    @Nullable
    @SuppressLint({"PrivateApi"})
    private static String z0() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    @VisibleForTesting
    final o R0(QueryProductDetailsParams queryProductDetailsParams) throws JSONException {
        int i10;
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        boolean z10;
        int i11;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String zzb = queryProductDetailsParams.zzb();
        com.google.android.gms.internal.play_billing.zzbt zza = queryProductDetailsParams.zza();
        int size = zza.size();
        int i12 = 0;
        while (i12 < size) {
            int i13 = i12 + 20;
            if (i13 > size) {
                i10 = size;
            } else {
                i10 = i13;
            }
            ArrayList<QueryProductDetailsParams.Product> arrayList3 = new ArrayList(zza.subList(i12, i10));
            ArrayList<String> arrayList4 = new ArrayList<>();
            int size2 = arrayList3.size();
            for (int i14 = 0; i14 < size2; i14++) {
                arrayList4.add(((QueryProductDetailsParams.Product) arrayList3.get(i14)).zza());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList4);
            String str = this.f6595c;
            bundle.putString("playBillingLibraryVersion", str);
            try {
                synchronized (this.f6593a) {
                    zzamVar = this.f6601i;
                }
                if (zzamVar == null) {
                    return r0(u.f6672j, zzie.SERVICE_RESET_TO_NULL, "Service has been reset to null.", null);
                }
                if (this.f6615w && this.D.b()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                y0(queryProductDetailsParams);
                y0(queryProductDetailsParams);
                y0(queryProductDetailsParams);
                y0(queryProductDetailsParams);
                com.google.android.gms.internal.play_billing.zza zza2 = com.google.android.gms.internal.play_billing.zza.zza(z10, true, false, true, false, true);
                if (true != this.f6616x) {
                    i11 = 17;
                } else {
                    i11 = 20;
                }
                Bundle zzj = zzamVar.zzj(i11, this.f6599g.getPackageName(), zzb, bundle, com.google.android.gms.internal.play_billing.zzc.zzf(str, this.f6596d, arrayList3, null, null, zza2, this.I.longValue()));
                if (zzj == null) {
                    return r0(u.B, zzie.NULL_BUNDLE_FROM_GET_SKU_DETAILS_SERVICE_CALL, "queryProductDetailsAsync got empty product details response.", null);
                }
                if (!zzj.containsKey("DETAILS_LIST")) {
                    int zzb2 = com.google.android.gms.internal.play_billing.zzc.zzb(zzj, "BillingClient");
                    String zzj2 = com.google.android.gms.internal.play_billing.zzc.zzj(zzj, "BillingClient");
                    if (zzb2 != 0) {
                        return r0(u.a(zzb2, zzj2), zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY, "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + zzb2, null);
                    }
                    return r0(u.a(6, zzj2), zzie.MISSING_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.", null);
                }
                ArrayList<String> stringArrayList = zzj.getStringArrayList("DETAILS_LIST");
                if (stringArrayList == null) {
                    return r0(u.B, zzie.NULL_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "queryProductDetailsAsync got null response list", null);
                }
                ArrayList arrayList5 = new ArrayList();
                int size3 = stringArrayList.size();
                for (int i15 = 0; i15 < size3; i15++) {
                    try {
                        ProductDetails productDetails = new ProductDetails(stringArrayList.get(i15));
                        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Got product details: ".concat(productDetails.toString()));
                        arrayList5.add(productDetails);
                    } catch (JSONException e10) {
                        return r0(u.a(6, "Error trying to decode SkuDetails."), zzie.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e10);
                    }
                }
                ArrayList<String> stringArrayList2 = zzj.getStringArrayList("UNFETCHED_PRODUCT_LIST");
                new ArrayList();
                try {
                    ArrayList arrayList6 = new ArrayList();
                    if (stringArrayList2 != null) {
                        for (String str2 : stringArrayList2) {
                            UnfetchedProduct unfetchedProduct = new UnfetchedProduct(str2);
                            com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Got unfetchedProduct: ".concat(unfetchedProduct.toString()));
                            arrayList6.add(unfetchedProduct);
                        }
                    } else {
                        for (QueryProductDetailsParams.Product product : arrayList3) {
                            Iterator it = arrayList5.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    ProductDetails productDetails2 = (ProductDetails) it.next();
                                    if (!product.zza().equals(productDetails2.getProductId()) || !product.zzb().equals(productDetails2.getProductType())) {
                                    }
                                } else {
                                    arrayList6.add(new UnfetchedProduct(new JSONObject().put(InAppPurchaseMetaData.KEY_PRODUCT_ID, product.zza()).put("type", product.zzb()).put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, 0).toString()));
                                    break;
                                }
                            }
                        }
                    }
                    arrayList.addAll(arrayList5);
                    arrayList2.addAll(arrayList6);
                    i12 = i13;
                } catch (JSONException e11) {
                    return r0(u.a(6, "Error trying to decode SkuDetails."), zzie.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: ", e11);
                }
            } catch (DeadObjectException e12) {
                return r0(u.f6672j, zzie.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e12);
            } catch (Exception e13) {
                return r0(u.f6670h, zzie.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e13);
            }
        }
        return new o(0, "", arrayList, arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final t U0() {
        return this.f6600h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final BillingResult X0(final BillingResult billingResult) {
        if (Thread.interrupted()) {
            return billingResult;
        }
        this.f6597e.post(new Runnable() { // from class: com.android.billingclient.api.zzac
            @Override // java.lang.Runnable
            public final void run() {
                b.r(b.this, billingResult);
            }
        });
        return billingResult;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void acknowledgePurchase(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        if (i(new Callable() { // from class: com.android.billingclient.api.zzaa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                b.e1(b.this, acknowledgePurchaseResponseListener, acknowledgePurchaseParams);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzab
            @Override // java.lang.Runnable
            public final void run() {
                b.n(b.this, acknowledgePurchaseResponseListener);
            }
        }, q0(), h()) == null) {
            BillingResult t02 = t0();
            H0(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 3, t02);
            acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(t02);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void consumeAsync(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        if (i(new Callable() { // from class: com.android.billingclient.api.zzak
            @Override // java.util.concurrent.Callable
            public final Object call() {
                b.c1(b.this, consumeResponseListener, consumeParams);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzam
            @Override // java.lang.Runnable
            public final void run() {
                b.j(b.this, consumeResponseListener, consumeParams);
            }
        }, q0(), h()) == null) {
            BillingResult t02 = t0();
            H0(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 4, t02);
            consumeResponseListener.onConsumeResponse(t02, consumeParams.getPurchaseToken());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzf
    public void createAlternativeBillingOnlyReportingDetailsAsync(final AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) {
        if (i(new Callable() { // from class: com.android.billingclient.api.zzaf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                b.f(b.this, alternativeBillingOnlyReportingDetailsListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzag
            @Override // java.lang.Runnable
            public final void run() {
                b.this.K(alternativeBillingOnlyReportingDetailsListener, u.f6673k, zzie.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, q0(), h()) == null) {
            K(alternativeBillingOnlyReportingDetailsListener, t0(), zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzh
    public void createExternalOfferReportingDetailsAsync(final ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) {
        if (i(new Callable(externalOfferReportingDetailsListener, null) { // from class: com.android.billingclient.api.zzaq
            public final /* synthetic */ ExternalOfferReportingDetailsListener zzb;

            @Override // java.util.concurrent.Callable
            public final Object call() {
                b.e(b.this, this.zzb, null);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzar
            @Override // java.lang.Runnable
            public final void run() {
                b.this.L(externalOfferReportingDetailsListener, u.f6673k, zzie.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, q0(), h()) == null) {
            L(externalOfferReportingDetailsListener, t0(), zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void endConnection() {
        M0(12);
        synchronized (this.f6593a) {
            try {
                if (this.f6598f != null) {
                    this.f6598f.f();
                }
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Unbinding from service.");
                Y();
                W();
                V(3);
                this.G = null;
            }
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzi
    public void getBillingConfigAsync(GetBillingConfigParams getBillingConfigParams, final BillingConfigResponseListener billingConfigResponseListener) {
        if (i(new Callable() { // from class: com.android.billingclient.api.zzad
            @Override // java.util.concurrent.Callable
            public final Object call() {
                b.g1(b.this, billingConfigResponseListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzae
            @Override // java.lang.Runnable
            public final void run() {
                b.l(b.this, billingConfigResponseListener);
            }
        }, q0(), h()) == null) {
            BillingResult t02 = t0();
            H0(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 13, t02);
            billingConfigResponseListener.onBillingConfigResponse(t02, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final int getConnectionState() {
        int i10;
        synchronized (this.f6593a) {
            i10 = this.f6594b;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized ExecutorService h() {
        try {
            if (this.H == null) {
                this.H = Executors.newFixedThreadPool(com.google.android.gms.internal.play_billing.zzc.zza, new c(this));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.H;
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzf
    public void isAlternativeBillingOnlyAvailableAsync(final AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        if (i(new Callable() { // from class: com.android.billingclient.api.zzah
            @Override // java.util.concurrent.Callable
            public final Object call() {
                b.g(b.this, alternativeBillingOnlyAvailabilityListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzai
            @Override // java.lang.Runnable
            public final void run() {
                b.this.I(alternativeBillingOnlyAvailabilityListener, u.f6673k, zzie.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, q0(), h()) == null) {
            I(alternativeBillingOnlyAvailabilityListener, t0(), zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzh
    public void isExternalOfferAvailableAsync(final ExternalOfferAvailabilityListener externalOfferAvailabilityListener) {
        if (i(new Callable() { // from class: com.android.billingclient.api.zzau
            @Override // java.util.concurrent.Callable
            public final Object call() {
                b.c(b.this, externalOfferAvailabilityListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzv
            @Override // java.lang.Runnable
            public final void run() {
                b.this.M(externalOfferAvailabilityListener, u.f6673k, zzie.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, q0(), h()) == null) {
            M(externalOfferAvailabilityListener, t0(), zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.android.billingclient.api.BillingClient
    public final BillingResult isFeatureSupported(String str) {
        char c10;
        BillingResult billingResult;
        BillingResult billingResult2;
        BillingResult billingResult3;
        BillingResult billingResult4;
        BillingResult billingResult5;
        BillingResult billingResult6;
        BillingResult billingResult7;
        BillingResult billingResult8;
        BillingResult billingResult9;
        BillingResult billingResult10;
        BillingResult billingResult11;
        BillingResult billingResult12;
        BillingResult billingResult13;
        BillingResult billingResult14;
        BillingResult billingResult15;
        BillingResult billingResult16;
        BillingResult billingResult17;
        if (!Z(3000L)) {
            BillingResult billingResult18 = u.f6672j;
            zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
            if (billingResult18.getResponseCode() != 0) {
                H0(zzieVar, 5, billingResult18);
            } else {
                M0(5);
            }
            return billingResult18;
        }
        BillingResult billingResult19 = u.f6663a;
        switch (str.hashCode()) {
            case -422092961:
                if (str.equals(BillingClient.FeatureType.SUBSCRIPTIONS_UPDATE)) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 96321:
                if (str.equals("aaa")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 97314:
                if (str.equals(BillingClient.FeatureType.IN_APP_MESSAGING)) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 98307:
                if (str.equals("ccc")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case 99300:
                if (str.equals("ddd")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 100293:
                if (str.equals("eee")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case 101286:
                if (str.equals(BillingClient.FeatureType.PRODUCT_DETAILS)) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case 102279:
                if (str.equals(BillingClient.FeatureType.BILLING_CONFIG)) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case 103272:
                if (str.equals("hhh")) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case 104265:
                if (str.equals("iii")) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case 105258:
                if (str.equals(BillingClient.FeatureType.ALTERNATIVE_BILLING_ONLY)) {
                    c10 = '\f';
                    break;
                }
                c10 = 65535;
                break;
            case 106251:
                if (str.equals(BillingClient.FeatureType.EXTERNAL_OFFER)) {
                    c10 = '\r';
                    break;
                }
                c10 = 65535;
                break;
            case 107244:
                if (str.equals("lll")) {
                    c10 = 14;
                    break;
                }
                c10 = 65535;
                break;
            case 108237:
                if (str.equals("mmm")) {
                    c10 = 15;
                    break;
                }
                c10 = 65535;
                break;
            case 109230:
                if (str.equals("nnn")) {
                    c10 = 16;
                    break;
                }
                c10 = 65535;
                break;
            case 207616302:
                if (str.equals(BillingClient.FeatureType.PRICE_CHANGE_CONFIRMATION)) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 1987365622:
                if (str.equals(BillingClient.FeatureType.SUBSCRIPTIONS)) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                if (this.f6603k) {
                    billingResult = u.f6671i;
                } else {
                    billingResult = u.f6674l;
                }
                G0(billingResult, zzie.SUBSCRIPTIONS_NOT_SUPPORTED, 2);
                return billingResult;
            case 1:
                if (this.f6604l) {
                    billingResult2 = u.f6671i;
                } else {
                    billingResult2 = u.f6675m;
                }
                G0(billingResult2, zzie.SUBSCRIPTIONS_UPDATE_NOT_SUPPORTED, 3);
                return billingResult2;
            case 2:
                if (this.f6607o) {
                    billingResult3 = u.f6671i;
                } else {
                    billingResult3 = u.f6676n;
                }
                G0(billingResult3, zzie.PRICE_CHANGE_CONFIRMATION_NOT_SUPPORTED, 4);
                return billingResult3;
            case 3:
                if (this.f6609q) {
                    billingResult4 = u.f6671i;
                } else {
                    billingResult4 = u.f6681s;
                }
                G0(billingResult4, zzie.IN_APP_MESSAGE_NOT_SUPPORTED, 5);
                return billingResult4;
            case 4:
                if (this.f6611s) {
                    billingResult5 = u.f6671i;
                } else {
                    billingResult5 = u.f6677o;
                }
                G0(billingResult5, zzie.CROSS_APP_NOT_SUPPORTED, 6);
                return billingResult5;
            case 5:
                if (this.f6610r) {
                    billingResult6 = u.f6671i;
                } else {
                    billingResult6 = u.f6679q;
                }
                G0(billingResult6, zzie.OFFER_ID_TOKEN_NOT_SUPPORTED, 7);
                return billingResult6;
            case 6:
                if (this.f6612t) {
                    billingResult7 = u.f6671i;
                } else {
                    billingResult7 = u.f6678p;
                }
                G0(billingResult7, zzie.MULTI_ITEM_NOT_SUPPORTED, 8);
                return billingResult7;
            case 7:
                if (this.f6612t) {
                    billingResult8 = u.f6671i;
                } else {
                    billingResult8 = u.f6678p;
                }
                G0(billingResult8, zzie.PBL_FOR_PAYMENTS_GATEWAY_BUYFLOW_NOT_SUPPORTED, 9);
                return billingResult8;
            case '\b':
                if (this.f6613u) {
                    billingResult9 = u.f6671i;
                } else {
                    billingResult9 = u.f6680r;
                }
                G0(billingResult9, zzie.PRODUCT_DETAILS_NOT_SUPPORTED, 10);
                return billingResult9;
            case '\t':
                if (this.f6614v) {
                    billingResult10 = u.f6671i;
                } else {
                    billingResult10 = u.f6687y;
                }
                G0(billingResult10, zzie.GET_BILLING_CONFIG_NOT_SUPPORTED, 11);
                return billingResult10;
            case '\n':
                if (this.f6614v) {
                    billingResult11 = u.f6671i;
                } else {
                    billingResult11 = u.f6688z;
                }
                G0(billingResult11, zzie.QUERY_PRODUCT_DETAILS_WITH_SERIALIZED_DOCID_NOT_SUPPORTED, 12);
                return billingResult11;
            case 11:
                if (this.f6616x) {
                    billingResult12 = u.f6671i;
                } else {
                    billingResult12 = u.C;
                }
                G0(billingResult12, zzie.QUERY_PRODUCT_DETAILS_WITH_DEVELOPER_SPECIFIED_ACCOUNT_NOT_SUPPORTED, 13);
                return billingResult12;
            case '\f':
                if (this.f6617y) {
                    billingResult13 = u.f6671i;
                } else {
                    billingResult13 = u.D;
                }
                G0(billingResult13, zzie.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED, 14);
                return billingResult13;
            case '\r':
                if (this.B) {
                    billingResult14 = u.f6671i;
                } else {
                    billingResult14 = u.A;
                }
                G0(billingResult14, zzie.LAUNCH_EXTERNAL_OFFER_FLOW_NOT_SUPPORTED, 18);
                return billingResult14;
            case 14:
                if (this.A) {
                    billingResult15 = u.f6671i;
                } else {
                    billingResult15 = u.f6683u;
                }
                G0(billingResult15, zzie.MULTI_ITEM_WITH_SEASON_PASS_NOT_SUPPORTED, 19);
                return billingResult15;
            case 15:
                if (this.B) {
                    billingResult16 = u.f6671i;
                } else {
                    billingResult16 = u.f6684v;
                }
                G0(billingResult16, zzie.AUTO_PAY_NOT_SUPPORTED, 20);
                return billingResult16;
            case 16:
                if (this.C) {
                    billingResult17 = u.f6671i;
                } else {
                    billingResult17 = u.f6685w;
                }
                G0(billingResult17, zzie.INCLUDE_SUSPENDED_SUBSCRIPTIONS_NOT_SUPPORTED, 21);
                return billingResult17;
            default:
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Unsupported feature: ".concat(str));
                BillingResult billingResult20 = u.f6686x;
                G0(billingResult20, zzie.UNKNOWN_FEATURE, 1);
                return billingResult20;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final boolean isReady() {
        if (this.E) {
            return true;
        }
        return b0();
    }

    public final void j0(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            this.f6597e.post(runnable);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:187:0x04af  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0511  */
    @Override // com.android.billingclient.api.BillingClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.billingclient.api.BillingResult launchBillingFlow(android.app.Activity r29, final com.android.billingclient.api.BillingFlowParams r30) {
        /*
            Method dump skipped, instructions count: 1710
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.b.launchBillingFlow(android.app.Activity, com.android.billingclient.api.BillingFlowParams):com.android.billingclient.api.BillingResult");
    }

    @Override // com.android.billingclient.api.BillingClient
    public void queryProductDetailsAsync(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        if (i(new Callable() { // from class: com.android.billingclient.api.zzal
            @Override // java.util.concurrent.Callable
            public final Object call() {
                b.d1(b.this, productDetailsResponseListener, queryProductDetailsParams);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzap
            @Override // java.lang.Runnable
            public final void run() {
                b.p(b.this, productDetailsResponseListener);
            }
        }, q0(), h()) == null) {
            BillingResult t02 = t0();
            H0(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 7, t02);
            productDetailsResponseListener.onProductDetailsResponse(t02, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, final PurchasesResponseListener purchasesResponseListener) {
        if (i(new d(this, purchasesResponseListener, queryPurchasesParams.zza(), false), 30000L, new Runnable() { // from class: com.android.billingclient.api.zzat
            @Override // java.lang.Runnable
            public final void run() {
                b.k(b.this, purchasesResponseListener);
            }
        }, q0(), h()) == null) {
            BillingResult t02 = t0();
            H0(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 9, t02);
            purchasesResponseListener.onQueryPurchasesResponse(t02, com.google.android.gms.internal.play_billing.zzbt.zzk());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzf
    public BillingResult showAlternativeBillingOnlyInformationDialog(final Activity activity, final AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener) {
        if (activity != null) {
            if (!Z(3000L)) {
                zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
                BillingResult billingResult = u.f6672j;
                H0(zzieVar, 16, billingResult);
                return billingResult;
            } else if (!this.f6617y) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current Play Store version doesn't support alternative billing only.");
                zzie zzieVar2 = zzie.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED;
                BillingResult billingResult2 = u.D;
                H0(zzieVar2, 16, billingResult2);
                return billingResult2;
            } else {
                Handler handler = this.f6597e;
                final zzay zzayVar = new zzay(this, handler, alternativeBillingOnlyInformationDialogListener);
                if (i(new Callable() { // from class: com.android.billingclient.api.zzy
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        b.k1(b.this, alternativeBillingOnlyInformationDialogListener, activity, zzayVar);
                        return null;
                    }
                }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzz
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.this.P(alternativeBillingOnlyInformationDialogListener, u.f6673k, zzie.EXECUTE_ASYNC_TIMEOUT, null);
                    }
                }, handler, h()) == null) {
                    BillingResult t02 = t0();
                    H0(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 16, t02);
                    return t02;
                }
                return u.f6671i;
            }
        }
        throw new IllegalArgumentException("Please provide a valid activity.");
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzh
    public BillingResult showExternalOfferInformationDialog(final Activity activity, final ExternalOfferInformationDialogListener externalOfferInformationDialogListener) {
        if (activity != null) {
            if (!Z(3000L)) {
                zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
                BillingResult billingResult = u.f6672j;
                H0(zzieVar, 25, billingResult);
                return billingResult;
            } else if (!this.f6618z) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current Play Store version doesn't support external offer.");
                zzie zzieVar2 = zzie.EXTERNAL_OFFER_NOT_SUPPORTED;
                BillingResult billingResult2 = u.f6682t;
                H0(zzieVar2, 25, billingResult2);
                return billingResult2;
            } else {
                Handler handler = this.f6597e;
                final zzaz zzazVar = new zzaz(this, handler, externalOfferInformationDialogListener);
                if (i(new Callable() { // from class: com.android.billingclient.api.zzan
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        b.d(b.this, externalOfferInformationDialogListener, activity, zzazVar);
                        return null;
                    }
                }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzao
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.this.N(externalOfferInformationDialogListener, u.f6673k, zzie.EXECUTE_ASYNC_TIMEOUT, null);
                    }
                }, handler, h()) == null) {
                    BillingResult t02 = t0();
                    H0(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 25, t02);
                    return t02;
                }
                return u.f6671i;
            }
        }
        throw new IllegalArgumentException("Please provide a valid activity.");
    }

    @Override // com.android.billingclient.api.BillingClient
    public final BillingResult showInAppMessages(final Activity activity, InAppMessageParams inAppMessageParams, InAppMessageResponseListener inAppMessageResponseListener) {
        if (!Z(3000L)) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Service disconnected.");
            return u.f6672j;
        } else if (!this.f6609q) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support showing in-app messages.");
            return u.f6681s;
        } else {
            View findViewById = activity.findViewById(16908290);
            IBinder windowToken = findViewById.getWindowToken();
            Rect rect = new Rect();
            findViewById.getGlobalVisibleRect(rect);
            final Bundle bundle = new Bundle();
            BundleCompat.putBinder(bundle, "KEY_WINDOW_TOKEN", windowToken);
            bundle.putInt("KEY_DIMEN_LEFT", rect.left);
            bundle.putInt("KEY_DIMEN_TOP", rect.top);
            bundle.putInt("KEY_DIMEN_RIGHT", rect.right);
            bundle.putInt("KEY_DIMEN_BOTTOM", rect.bottom);
            bundle.putString("playBillingLibraryVersion", this.f6595c);
            String str = this.f6596d;
            if (str != null) {
                bundle.putString("playBillingLibraryWrapperVersion", str);
            }
            bundle.putIntegerArrayList("KEY_CATEGORY_IDS", inAppMessageParams.a());
            Handler handler = this.f6597e;
            final zzax zzaxVar = new zzax(this, handler, inAppMessageResponseListener);
            i(new Callable() { // from class: com.android.billingclient.api.zzas
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    b.f1(b.this, bundle, activity, zzaxVar);
                    return null;
                }
            }, 5000L, null, handler, h());
            return u.f6671i;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void startConnection(BillingClientStateListener billingClientStateListener) {
        X(billingClientStateListener, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AnyThread
    public b(@Nullable String str, Context context, @Nullable t tVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        this.f6593a = new Object();
        this.f6594b = 0;
        this.f6597e = new Handler(Looper.getMainLooper());
        this.f6605m = 0;
        Long valueOf = Long.valueOf(new Random().nextLong());
        this.I = valueOf;
        this.J = com.google.android.gms.internal.play_billing.zzaz.zza();
        this.f6595c = g1.a.f52156a;
        String z02 = z0();
        this.f6596d = z02;
        this.f6599g = context.getApplicationContext();
        zziq zzc = zzis.zzc();
        zzc.zzs(g1.a.f52156a);
        if (z02 != null) {
            zzc.zzt(z02);
        }
        zzc.zzq(this.f6599g.getPackageName());
        zzc.zzn(valueOf.longValue());
        zzc.zzr(builder.f6455g);
        zzc.zza(Build.VERSION.SDK_INT);
        zzc.zzp(772604006L);
        try {
            zzc.zzl(this.f6599g.getPackageManager().getPackageInfo(this.f6599g.getPackageName(), 0).versionCode);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error getting app version code.", th2);
        }
        this.f6600h = new v(this.f6599g, (zzis) zzc.zze());
        this.f6599g.getPackageName();
        this.E = builder.f6455g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AnyThread
    public b(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzco zzcoVar, @Nullable t tVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        this.f6593a = new Object();
        this.f6594b = 0;
        this.f6597e = new Handler(Looper.getMainLooper());
        this.f6605m = 0;
        Long valueOf = Long.valueOf(new Random().nextLong());
        this.I = valueOf;
        this.J = com.google.android.gms.internal.play_billing.zzaz.zza();
        this.f6595c = g1.a.f52156a;
        String z02 = z0();
        this.f6596d = z02;
        this.f6599g = context.getApplicationContext();
        zziq zzc = zzis.zzc();
        zzc.zzs(g1.a.f52156a);
        if (z02 != null) {
            zzc.zzt(z02);
        }
        zzc.zzq(this.f6599g.getPackageName());
        zzc.zzn(valueOf.longValue());
        zzc.zzr(builder.f6455g);
        zzc.zza(Build.VERSION.SDK_INT);
        zzc.zzp(772604006L);
        try {
            zzc.zzl(this.f6599g.getPackageManager().getPackageInfo(this.f6599g.getPackageName(), 0).versionCode);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error getting app version code.", th2);
        }
        this.f6600h = new v(this.f6599g, (zzis) zzc.zze());
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.f6598f = new a0(this.f6599g, null, null, null, null, this.f6600h);
        this.D = pendingPurchasesParams;
        this.f6599g.getPackageName();
        this.E = builder.f6455g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AnyThread
    public b(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable zzb zzbVar, @Nullable t tVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        this.f6593a = new Object();
        this.f6594b = 0;
        this.f6597e = new Handler(Looper.getMainLooper());
        this.f6605m = 0;
        this.I = Long.valueOf(new Random().nextLong());
        this.J = com.google.android.gms.internal.play_billing.zzaz.zza();
        this.f6595c = g1.a.f52156a;
        this.f6596d = z0();
        b(context, purchasesUpdatedListener, pendingPurchasesParams, null, g1.a.f52156a, null, builder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AnyThread
    public b(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable UserChoiceBillingListener userChoiceBillingListener, @Nullable t tVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        this(context, pendingPurchasesParams, purchasesUpdatedListener, g1.a.f52156a, null, userChoiceBillingListener, null, null, builder);
    }
}
