package com.android.billingclient.api;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
final class zzax extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ InAppMessageResponseListener f6696a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzax(b bVar, Handler handler, InAppMessageResponseListener inAppMessageResponseListener) {
        super(handler);
        this.f6696a = inAppMessageResponseListener;
        Objects.requireNonNull(bVar);
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i10, @Nullable Bundle bundle) {
        this.f6696a.onInAppMessageResponse(com.google.android.gms.internal.play_billing.zzc.zzi(bundle, "BillingClient"));
    }
}
