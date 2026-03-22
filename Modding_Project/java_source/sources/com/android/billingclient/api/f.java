package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzbi;
import com.google.android.gms.internal.play_billing.zzbl;
import com.google.android.gms.internal.play_billing.zzhv;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhz;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzic;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzig;
import com.google.android.gms.internal.play_billing.zzij;
import com.google.android.gms.internal.play_billing.zzjm;
import com.google.android.gms.internal.play_billing.zzjo;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjt;
import com.google.android.gms.internal.play_billing.zzjv;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class f implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final BillingClientStateListener f6626a;

    /* renamed from: b  reason: collision with root package name */
    private final zzbi f6627b;

    /* renamed from: c  reason: collision with root package name */
    private final zzbi f6628c;

    /* renamed from: d  reason: collision with root package name */
    private final int f6629d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ b f6630e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ f(b bVar, BillingClientStateListener billingClientStateListener, int i10, zzbp zzbpVar) {
        zzbl zzblVar;
        zzbl zzblVar2;
        Objects.requireNonNull(bVar);
        this.f6630e = bVar;
        zzblVar = bVar.J;
        this.f6627b = zzbi.zzc(zzblVar);
        zzblVar2 = bVar.J;
        this.f6628c = zzbi.zzc(zzblVar2);
        this.f6626a = billingClientStateListener;
        this.f6629d = i10;
    }

    public static /* synthetic */ Object a(f fVar) {
        Object obj;
        int i10;
        int i11;
        boolean z10;
        Bundle bundle;
        Object obj2;
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        Context context;
        zzie zzieVar;
        String str;
        boolean z11;
        boolean z12;
        int i12;
        int i13;
        t tVar;
        boolean z13;
        int zzc;
        int i14;
        String str2;
        String str3;
        Long l10;
        b bVar = fVar.f6630e;
        obj = bVar.f6593a;
        synchronized (obj) {
            try {
                i10 = bVar.f6594b;
                if (i10 != 3) {
                    i11 = bVar.f6594b;
                    if (i11 == 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!TextUtils.isEmpty(null)) {
                        bundle = new Bundle();
                        bundle.putString("accountName", null);
                        str2 = bVar.f6595c;
                        str3 = bVar.f6596d;
                        l10 = bVar.I;
                        com.google.android.gms.internal.play_billing.zzc.zzc(bundle, str2, str3, l10.longValue());
                    } else {
                        bundle = null;
                    }
                    zzie zzieVar2 = zzie.REASON_UNSPECIFIED;
                    obj2 = bVar.f6593a;
                    synchronized (obj2) {
                        zzamVar = bVar.f6601i;
                    }
                    if (zzamVar == null) {
                        b bVar2 = fVar.f6630e;
                        bVar2.V(0);
                        int i15 = fVar.f6629d;
                        zzie zzieVar3 = zzie.SERVICE_RESET_TO_NULL;
                        BillingResult billingResult = u.f6672j;
                        bVar2.U(zzieVar3, billingResult, i15);
                        fVar.g(billingResult);
                    } else {
                        b bVar3 = fVar.f6630e;
                        context = bVar3.f6599g;
                        String packageName = context.getPackageName();
                        int i16 = 25;
                        int i17 = 3;
                        int i18 = 25;
                        while (true) {
                            if (i18 >= 3) {
                                if (bundle == null) {
                                    try {
                                        i17 = zzamVar.zzw(i18, packageName, "subs");
                                    } catch (Exception e10) {
                                        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception while checking if billing is supported; try to reconnect", e10);
                                        if (e10 instanceof DeadObjectException) {
                                            zzieVar = zzie.IS_BILLING_SUPPORTED_DEAD_OBJECT_EXCEPTION;
                                        } else if (e10 instanceof RemoteException) {
                                            zzieVar = zzie.IS_BILLING_SUPPORTED_REMOTE_EXCEPTION;
                                        } else if (e10 instanceof SecurityException) {
                                            zzieVar = zzie.IS_BILLING_SUPPORTED_SECURITY_EXCEPTION;
                                        } else {
                                            zzieVar = zzie.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION;
                                        }
                                        if (zzieVar.equals(zzie.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION)) {
                                            str = zzcg.zza(e10);
                                        } else {
                                            str = null;
                                        }
                                        fVar.f6630e.V(0);
                                        fVar.f(b.W0(e10), zzieVar, str, z10);
                                        fVar.g(b.W0(e10));
                                    }
                                } else {
                                    i17 = zzamVar.zzc(i18, packageName, "subs", bundle);
                                }
                                if (i17 == 0) {
                                    com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "highestLevelSupportedForSubs: " + i18);
                                    break;
                                }
                                i18--;
                            } else {
                                i18 = 0;
                                break;
                            }
                        }
                        if (i18 >= 5) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        bVar3.f6604l = z11;
                        if (i18 >= 3) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        bVar3.f6603k = z12;
                        if (i18 < 3) {
                            zzieVar2 = zzie.SUBSCRIPTIONS_NOT_SUPPORTED;
                            com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "In-app billing API does not support subscription on this device.");
                        }
                        while (true) {
                            if (i16 < 3) {
                                break;
                            }
                            if (bundle == null) {
                                zzc = zzamVar.zzw(i16, packageName, "inapp");
                            } else {
                                zzc = zzamVar.zzc(i16, packageName, "inapp", bundle);
                            }
                            i17 = zzc;
                            if (i17 == 0) {
                                bVar3.f6605m = i16;
                                i14 = bVar3.f6605m;
                                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "mHighestLevelSupportedForInApp: " + i14);
                                break;
                            }
                            i16--;
                        }
                        i12 = bVar3.f6605m;
                        b.f0(bVar3, i12);
                        i13 = bVar3.f6605m;
                        if (i13 < 3) {
                            zzieVar2 = zzie.ONE_TIME_PRODUCT_NOT_SUPPORTED;
                            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "In-app billing API version 3 is not supported on this device.");
                        }
                        b.h0(bVar3, i17);
                        if (i17 != 0) {
                            BillingResult billingResult2 = u.f6664b;
                            fVar.f(billingResult2, zzieVar2, null, z10);
                            fVar.g(billingResult2);
                        } else {
                            try {
                                Long e11 = fVar.e(z10);
                                if (z10) {
                                    zzhz zzc2 = zzib.zzc();
                                    zzc2.zzo(6);
                                    zzjt zzc3 = zzjv.zzc();
                                    int i19 = fVar.f6629d;
                                    if (i19 > 0) {
                                        z13 = true;
                                    } else {
                                        z13 = false;
                                    }
                                    zzc3.zza(z13);
                                    zzc3.zzl(i19);
                                    if (e11 != null) {
                                        zzc3.zzm(e11.longValue());
                                    }
                                    b bVar4 = fVar.f6630e;
                                    zzc2.zzn(zzc3);
                                    bVar4.T((zzib) zzc2.zze());
                                } else {
                                    zzjm zzc4 = zzjo.zzc();
                                    zzic zzc5 = zzig.zzc();
                                    zzc5.zzo(0);
                                    zzc4.zza(zzc5);
                                    if (e11 != null) {
                                        zzc4.zzl(e11.longValue());
                                    }
                                    tVar = fVar.f6630e.f6600h;
                                    tVar.e((zzjo) zzc4.zze());
                                }
                            } catch (Throwable th2) {
                                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
                            }
                            fVar.g(u.f6671i);
                        }
                    }
                }
            } finally {
            }
        }
        return null;
    }

    public static /* synthetic */ void b(f fVar) {
        b bVar = fVar.f6630e;
        bVar.V(0);
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = u.f6673k;
        bVar.U(zzieVar, billingResult, fVar.f6629d);
        fVar.g(billingResult);
    }

    @Nullable
    private final Long e(boolean z10) {
        if (z10) {
            zzbi zzbiVar = this.f6627b;
            if (zzbiVar.zzg()) {
                zzbiVar.zzf();
                return Long.valueOf(zzbiVar.zza(TimeUnit.MILLISECONDS));
            }
            return null;
        }
        zzbi zzbiVar2 = this.f6628c;
        if (zzbiVar2.zzg()) {
            zzbiVar2.zzf();
            return Long.valueOf(zzbiVar2.zza(TimeUnit.MILLISECONDS));
        }
        return null;
    }

    private final void f(BillingResult billingResult, zzie zzieVar, @Nullable String str, boolean z10) {
        t tVar;
        boolean z11;
        try {
            zzic zzc = zzig.zzc();
            zzc.zzo(billingResult.getResponseCode());
            zzc.zzl(billingResult.getDebugMessage());
            zzc.zzn(zzieVar);
            if (str != null) {
                zzc.zza(str);
            }
            Long e10 = e(z10);
            if (z10) {
                zzjt zzc2 = zzjv.zzc();
                int i10 = this.f6629d;
                if (i10 > 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                zzc2.zza(z11);
                zzc2.zzl(i10);
                if (e10 != null) {
                    zzc2.zzm(e10.longValue());
                }
                b bVar = this.f6630e;
                zzhv zzc3 = zzhx.zzc();
                zzc3.zzl(zzc);
                zzc3.zzp(6);
                zzc3.zzo(zzc2);
                bVar.R((zzhx) zzc3.zze());
                return;
            }
            zzjm zzc4 = zzjo.zzc();
            zzc4.zza(zzc);
            if (e10 != null) {
                zzc4.zzl(e10.longValue());
            }
            tVar = this.f6630e.f6600h;
            tVar.e((zzjo) zzc4.zze());
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    private final void g(BillingResult billingResult) {
        Object obj;
        int i10;
        b bVar = this.f6630e;
        obj = bVar.f6593a;
        synchronized (obj) {
            try {
                i10 = bVar.f6594b;
                if (i10 == 3) {
                    return;
                }
                try {
                    this.f6626a.onBillingSetupFinished(billingResult);
                } catch (Throwable th2) {
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception while calling onBillingSetupFinished.", th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void c() {
        zzbi zzbiVar = this.f6627b;
        zzbiVar.zzd();
        zzbiVar.zze();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d() {
        if (this.f6629d > 0) {
            return true;
        }
        return false;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        Object obj;
        int i10;
        int i11;
        t tVar;
        t tVar2;
        boolean z10;
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing service died.");
        try {
            b bVar = this.f6630e;
            if (b.l0(bVar)) {
                tVar2 = bVar.f6600h;
                zzhv zzc = zzhx.zzc();
                zzc.zzp(6);
                zzic zzc2 = zzig.zzc();
                zzc2.zzn(zzie.BINDING_DIED);
                zzc.zzl(zzc2);
                zzjt zzc3 = zzjv.zzc();
                int i12 = this.f6629d;
                if (i12 > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                zzc3.zza(z10);
                zzc3.zzl(i12);
                zzc.zzo(zzc3);
                tVar2.h((zzhx) zzc.zze());
            } else {
                tVar = bVar.f6600h;
                tVar.c(zzij.zzd());
            }
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
        b bVar2 = this.f6630e;
        obj = bVar2.f6593a;
        synchronized (obj) {
            i10 = bVar2.f6594b;
            if (i10 != 3) {
                i11 = bVar2.f6594b;
                if (i11 != 0) {
                    bVar2.V(0);
                    bVar2.Y();
                    try {
                        this.f6626a.onBillingServiceDisconnected();
                    } catch (Throwable th3) {
                        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception while calling onBillingServiceDisconnected.", th3);
                    }
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        int i10;
        Handler q02;
        BillingResult t02;
        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Billing service connected.");
        b bVar = this.f6630e;
        obj = bVar.f6593a;
        synchronized (obj) {
            try {
                i10 = bVar.f6594b;
                if (i10 != 3) {
                    bVar.f6601i = com.google.android.gms.internal.play_billing.zzal.zzs(iBinder);
                    Callable callable = new Callable() { // from class: com.android.billingclient.api.zzbd
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            f.a(f.this);
                            return null;
                        }
                    };
                    Runnable runnable = new Runnable() { // from class: com.android.billingclient.api.zzbe
                        @Override // java.lang.Runnable
                        public final void run() {
                            f.b(f.this);
                        }
                    };
                    q02 = bVar.q0();
                    if (b.i(callable, 30000L, runnable, q02, bVar.h()) == null) {
                        int i11 = this.f6629d;
                        t02 = bVar.t0();
                        bVar.U(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, t02, i11);
                        g(t02);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        int i10;
        t tVar;
        t tVar2;
        boolean z10;
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing service disconnected.");
        try {
            b bVar = this.f6630e;
            if (b.l0(bVar)) {
                tVar2 = bVar.f6600h;
                zzhv zzc = zzhx.zzc();
                zzc.zzp(6);
                zzic zzc2 = zzig.zzc();
                zzc2.zzn(zzie.SERVICE_DISCONNECTED);
                zzc.zzl(zzc2);
                zzjt zzc3 = zzjv.zzc();
                int i11 = this.f6629d;
                if (i11 > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                zzc3.zza(z10);
                zzc3.zzl(i11);
                zzc.zzo(zzc3);
                tVar2.h((zzhx) zzc.zze());
            } else {
                tVar = bVar.f6600h;
                tVar.f(zzjs.zzd());
            }
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
        zzbi zzbiVar = this.f6628c;
        zzbiVar.zzd();
        zzbiVar.zze();
        b bVar2 = this.f6630e;
        obj = bVar2.f6593a;
        synchronized (obj) {
            try {
                i10 = bVar2.f6594b;
                if (i10 != 3) {
                    bVar2.V(0);
                    try {
                        this.f6626a.onBillingServiceDisconnected();
                    } catch (Throwable th3) {
                        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception while calling onBillingServiceDisconnected.", th3);
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }
}
