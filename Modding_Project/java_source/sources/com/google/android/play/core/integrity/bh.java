package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.e0;
import com.google.android.play.integrity.internal.o0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class bh extends bm {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f19894a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Activity f19895b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f19896c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ int f19897d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ bn f19898e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bh(bn bnVar, TaskCompletionSource taskCompletionSource, Bundle bundle, Activity activity, TaskCompletionSource taskCompletionSource2, int i10) {
        super(bnVar, taskCompletionSource);
        this.f19894a = bundle;
        this.f19895b = activity;
        this.f19896c = taskCompletionSource2;
        this.f19897d = i10;
        this.f19898e = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.p0
    protected final void b() {
        o0 o0Var;
        at atVar;
        if (bn.l(this.f19898e)) {
            super.a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            bn bnVar = this.f19898e;
            com.google.android.play.integrity.internal.f fVar = bnVar.f19908a;
            Bundle bundle = this.f19894a;
            atVar = bnVar.f19912e;
            ((e0) fVar.e()).b(bundle, atVar.a(this.f19895b, this.f19896c, fVar));
        } catch (RemoteException e10) {
            bn bnVar2 = this.f19898e;
            int i10 = this.f19897d;
            o0Var = bnVar2.f19909b;
            o0Var.c(e10, "requestAndShowDialog(%s)", Integer.valueOf(i10));
            this.f19896c.trySetException(new StandardIntegrityException(-100, e10));
        }
    }
}
