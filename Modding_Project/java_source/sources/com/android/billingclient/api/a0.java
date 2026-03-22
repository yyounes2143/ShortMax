package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6585a;

    /* renamed from: b  reason: collision with root package name */
    private final PurchasesUpdatedListener f6586b;

    /* renamed from: c  reason: collision with root package name */
    private final zzb f6587c;

    /* renamed from: d  reason: collision with root package name */
    private final UserChoiceBillingListener f6588d;

    /* renamed from: e  reason: collision with root package name */
    private final t f6589e;

    /* renamed from: f  reason: collision with root package name */
    private final z f6590f = new z(this, true);

    /* renamed from: g  reason: collision with root package name */
    private final z f6591g = new z(this, false);

    /* renamed from: h  reason: collision with root package name */
    private boolean f6592h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzco zzcoVar, zzb zzbVar, UserChoiceBillingListener userChoiceBillingListener, t tVar) {
        this.f6585a = context;
        this.f6586b = purchasesUpdatedListener;
        this.f6587c = zzbVar;
        this.f6588d = userChoiceBillingListener;
        this.f6589e = tVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final PurchasesUpdatedListener d() {
        return this.f6586b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        z zVar = this.f6590f;
        Context context = this.f6585a;
        zVar.c(context);
        this.f6591g.c(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(boolean z10) {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        IntentFilter intentFilter2 = new IntentFilter("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intentFilter2.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.f6592h = z10;
        z zVar = this.f6591g;
        Context context = this.f6585a;
        zVar.a(context, intentFilter2);
        if (this.f6592h) {
            this.f6590f.b(context, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST");
        } else {
            this.f6590f.a(context, intentFilter);
        }
    }
}
