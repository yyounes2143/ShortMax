package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.google.android.play.integrity.internal.e0;
import com.google.android.play.integrity.internal.o0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class bg extends bm {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ StandardIntegrityManager.StandardIntegrityTokenRequest f19889a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f19890b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f19891c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f19892d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ bn f19893e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bg(bn bnVar, TaskCompletionSource taskCompletionSource, int i10, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j10, long j11, TaskCompletionSource taskCompletionSource2) {
        super(bnVar, taskCompletionSource);
        this.f19889a = standardIntegrityTokenRequest;
        this.f19890b = j10;
        this.f19891c = j11;
        this.f19892d = taskCompletionSource2;
        this.f19893e = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.p0
    protected final void b() {
        o0 o0Var;
        if (bn.l(this.f19893e)) {
            super.a(new StandardIntegrityException(-2, null));
        } else if (bn.k(this.f19893e, 0)) {
            super.a(new StandardIntegrityException(-14, null));
        } else {
            try {
                bn bnVar = this.f19893e;
                ((e0) bnVar.f19908a.e()).e(bn.a(bnVar, this.f19889a, this.f19890b, this.f19891c, 0), new bk(this.f19893e, this.f19892d, this.f19890b));
            } catch (RemoteException e10) {
                bn bnVar2 = this.f19893e;
                StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest = this.f19889a;
                o0Var = bnVar2.f19909b;
                o0Var.c(e10, "requestExpressIntegrityToken(%s, %s, %s)", standardIntegrityTokenRequest.requestHash(), this.f19889a.verdictOptOut(), Long.valueOf(this.f19890b));
                this.f19892d.trySetException(new StandardIntegrityException(-100, e10));
            }
        }
    }
}
