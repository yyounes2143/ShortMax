package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.e0;
import com.google.android.play.integrity.internal.o0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class bf extends bm {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f19886a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f19887b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ bn f19888c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bf(bn bnVar, TaskCompletionSource taskCompletionSource, int i10, long j10, TaskCompletionSource taskCompletionSource2) {
        super(bnVar, taskCompletionSource);
        this.f19886a = j10;
        this.f19887b = taskCompletionSource2;
        this.f19888c = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.p0
    protected final void b() {
        o0 o0Var;
        if (bn.l(this.f19888c)) {
            super.a(new StandardIntegrityException(-2, null));
        } else if (bn.k(this.f19888c, 0)) {
            super.a(new StandardIntegrityException(-14, null));
        } else {
            try {
                bn bnVar = this.f19888c;
                ((e0) bnVar.f19908a.e()).d(bn.b(bnVar, this.f19886a, 0), new bl(this.f19888c, this.f19887b));
            } catch (RemoteException e10) {
                bn bnVar2 = this.f19888c;
                long j10 = this.f19886a;
                o0Var = bnVar2.f19909b;
                o0Var.c(e10, "warmUpIntegrityToken(%s)", Long.valueOf(j10));
                this.f19887b.trySetException(new StandardIntegrityException(-100, e10));
            }
        }
    }
}
