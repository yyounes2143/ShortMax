package com.android.billingclient.api;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class e implements BillingClientStateListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.play_billing.zzp f6624a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b f6625b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(b bVar, com.google.android.gms.internal.play_billing.zzp zzpVar) {
        this.f6624a = zzpVar;
        Objects.requireNonNull(bVar);
        this.f6625b = bVar;
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingServiceDisconnected() {
        BillingClientStateListener billingClientStateListener;
        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Reconnection attempt failed.");
        try {
            this.f6624a.zzb(u.f6672j);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception setting completer.", th2);
        }
        b bVar = this.f6625b;
        billingClientStateListener = bVar.G;
        if (billingClientStateListener != null) {
            bVar.j0(new Runnable() { // from class: com.android.billingclient.api.zzba
                @Override // java.lang.Runnable
                public final void run() {
                    BillingClientStateListener billingClientStateListener2;
                    try {
                        billingClientStateListener2 = e.this.f6625b.G;
                        billingClientStateListener2.onBillingServiceDisconnected();
                    } catch (Throwable th3) {
                        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception calling onBillingServiceDisconnected.", th3);
                    }
                }
            });
        }
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingSetupFinished(final BillingResult billingResult) {
        BillingClientStateListener billingClientStateListener;
        int responseCode = billingResult.getResponseCode();
        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Reconnection finished with result: " + responseCode);
        try {
            this.f6624a.zzb(billingResult);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception setting completer.", th2);
        }
        b bVar = this.f6625b;
        billingClientStateListener = bVar.G;
        if (billingClientStateListener != null) {
            bVar.j0(new Runnable() { // from class: com.android.billingclient.api.zzbb
                @Override // java.lang.Runnable
                public final void run() {
                    BillingClientStateListener billingClientStateListener2;
                    e eVar = e.this;
                    BillingResult billingResult2 = billingResult;
                    try {
                        billingClientStateListener2 = eVar.f6625b.G;
                        billingClientStateListener2.onBillingSetupFinished(billingResult2);
                    } catch (Throwable th3) {
                        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception calling onBillingSetupFinished.", th3);
                    }
                }
            });
        }
    }
}
