package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.j0;
import com.google.android.play.integrity.internal.o0;
import com.google.android.play.integrity.internal.p0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class ag extends p0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f19837a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Activity f19838b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f19839c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ int f19840d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ aj f19841e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ag(aj ajVar, TaskCompletionSource taskCompletionSource, Bundle bundle, Activity activity, TaskCompletionSource taskCompletionSource2, int i10) {
        super(taskCompletionSource);
        this.f19837a = bundle;
        this.f19838b = activity;
        this.f19839c = taskCompletionSource2;
        this.f19840d = i10;
        this.f19841e = ajVar;
    }

    @Override // com.google.android.play.integrity.internal.p0
    protected final void b() {
        o0 o0Var;
        at atVar;
        try {
            Bundle bundle = this.f19837a;
            aj ajVar = this.f19841e;
            atVar = ajVar.f19850e;
            ((j0) this.f19841e.f19846a.e()).b(bundle, atVar.a(this.f19838b, this.f19839c, ajVar.f19846a));
        } catch (RemoteException e10) {
            aj ajVar2 = this.f19841e;
            int i10 = this.f19840d;
            o0Var = ajVar2.f19847b;
            o0Var.c(e10, "requestAndShowDialog(%s)", Integer.valueOf(i10));
            this.f19839c.trySetException(new IntegrityServiceException(-100, e10));
        }
    }
}
