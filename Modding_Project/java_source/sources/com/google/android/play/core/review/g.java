package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import f7.t;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
class g extends f7.g {

    /* renamed from: a  reason: collision with root package name */
    final f7.i f19961a;

    /* renamed from: b  reason: collision with root package name */
    final TaskCompletionSource f19962b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ i f19963c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(i iVar, f7.i iVar2, TaskCompletionSource taskCompletionSource) {
        this.f19963c = iVar;
        this.f19961a = iVar2;
        this.f19962b = taskCompletionSource;
    }

    @Override // f7.h
    public void zzb(Bundle bundle) throws RemoteException {
        t tVar = this.f19963c.f19965a;
        if (tVar != null) {
            tVar.u(this.f19962b);
        }
        this.f19961a.c("onGetLaunchReviewFlowInfo", new Object[0]);
    }
}
