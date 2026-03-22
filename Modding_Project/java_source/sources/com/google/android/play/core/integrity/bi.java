package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.f0;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
class bi extends f0 {

    /* renamed from: a  reason: collision with root package name */
    final TaskCompletionSource f19899a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ bn f19900b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(bn bnVar, TaskCompletionSource taskCompletionSource) {
        this.f19900b = bnVar;
        this.f19899a = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.g0
    public final void b(Bundle bundle) throws RemoteException {
        this.f19900b.f19908a.v(this.f19899a);
    }

    @Override // com.google.android.play.integrity.internal.g0
    public void c(Bundle bundle) throws RemoteException {
        this.f19900b.f19908a.v(this.f19899a);
    }

    @Override // com.google.android.play.integrity.internal.g0
    public final void d(Bundle bundle) throws RemoteException {
        this.f19900b.f19908a.v(this.f19899a);
    }

    @Override // com.google.android.play.integrity.internal.g0
    public void e(Bundle bundle) throws RemoteException {
        this.f19900b.f19908a.v(this.f19899a);
    }
}
