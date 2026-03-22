package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Objects;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
final class r implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ s f6661a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ r(s sVar, zzcd zzcdVar) {
        Objects.requireNonNull(sVar);
        this.f6661a = sVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClientTesting", "Billing Override Service connected.");
        s sVar = this.f6661a;
        s.y1(sVar, com.google.android.gms.internal.play_billing.zzat.zzc(iBinder));
        s.z1(sVar, 2);
        s.F1(sVar, 26);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClientTesting", "Billing Override Service disconnected.");
        s sVar = this.f6661a;
        s.y1(sVar, null);
        s.z1(sVar, 0);
    }
}
