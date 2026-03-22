package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.o0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class bk extends bi {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ bn f19902c;

    /* renamed from: d  reason: collision with root package name */
    private final o0 f19903d;

    /* renamed from: e  reason: collision with root package name */
    private final long f19904e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bk(bn bnVar, TaskCompletionSource taskCompletionSource, long j10) {
        super(bnVar, taskCompletionSource);
        this.f19902c = bnVar;
        this.f19903d = new o0("OnRequestIntegrityTokenCallback");
        this.f19904e = j10;
    }

    @Override // com.google.android.play.core.integrity.bi, com.google.android.play.integrity.internal.g0
    public final void c(Bundle bundle) throws RemoteException {
        k kVar;
        String str;
        super.c(bundle);
        this.f19903d.d("onRequestExpressIntegrityToken", new Object[0]);
        kVar = this.f19902c.f19913f;
        ApiException a10 = kVar.a(bundle);
        if (a10 != null) {
            this.f19899a.trySetException(a10);
            return;
        }
        long j10 = bundle.getLong("request.token.sid");
        str = this.f19902c.f19910c;
        bj bjVar = new bj(this, str, j10);
        TaskCompletionSource taskCompletionSource = this.f19899a;
        b bVar = new b();
        bVar.b(bundle.getString(BidResponsed.KEY_TOKEN));
        bVar.a(bjVar);
        taskCompletionSource.trySetResult(bVar.c());
    }
}
