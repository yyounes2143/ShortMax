package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.o0;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class bl extends bi {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ bn f19905c;

    /* renamed from: d  reason: collision with root package name */
    private final o0 f19906d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bl(bn bnVar, TaskCompletionSource taskCompletionSource) {
        super(bnVar, taskCompletionSource);
        this.f19905c = bnVar;
        this.f19906d = new o0("OnWarmUpIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.bi, com.google.android.play.integrity.internal.g0
    public final void e(Bundle bundle) throws RemoteException {
        k kVar;
        super.e(bundle);
        this.f19906d.d("onWarmUpExpressIntegrityToken", new Object[0]);
        kVar = this.f19905c.f19913f;
        ApiException a10 = kVar.a(bundle);
        if (a10 != null) {
            this.f19899a.trySetException(a10);
        } else {
            this.f19899a.trySetResult(Long.valueOf(bundle.getLong("warm.up.sid")));
        }
    }
}
