package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.k0;
import com.google.android.play.integrity.internal.o0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class ai extends k0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ aj f19843a;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f19844b = new o0("OnRequestIntegrityTokenCallback");

    /* renamed from: c  reason: collision with root package name */
    private final TaskCompletionSource f19845c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(aj ajVar, TaskCompletionSource taskCompletionSource) {
        this.f19843a = ajVar;
        this.f19845c = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.l0
    public final void b(Bundle bundle) {
        k kVar;
        String str;
        this.f19843a.f19846a.v(this.f19845c);
        this.f19844b.d("onRequestIntegrityToken", new Object[0]);
        kVar = this.f19843a.f19851f;
        ApiException a10 = kVar.a(bundle);
        if (a10 != null) {
            this.f19845c.trySetException(a10);
            return;
        }
        String string = bundle.getString(BidResponsed.KEY_TOKEN);
        if (string == null) {
            this.f19845c.trySetException(new IntegrityServiceException(-100, null));
            return;
        }
        long j10 = bundle.getLong("request.token.sid");
        str = this.f19843a.f19848c;
        ah ahVar = new ah(this, str, j10);
        TaskCompletionSource taskCompletionSource = this.f19845c;
        a aVar = new a();
        aVar.b(string);
        aVar.a(ahVar);
        taskCompletionSource.trySetResult(aVar.c());
    }
}
