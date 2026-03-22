package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: GetIdListener.java */
/* loaded from: classes5.dex */
class e implements g {

    /* renamed from: a  reason: collision with root package name */
    final TaskCompletionSource<String> f21038a;

    public e(TaskCompletionSource<String> taskCompletionSource) {
        this.f21038a = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.g
    public boolean a(Exception exc) {
        return false;
    }

    @Override // com.google.firebase.installations.g
    public boolean b(com.google.firebase.installations.local.b bVar) {
        if (!bVar.l() && !bVar.k() && !bVar.i()) {
            return false;
        }
        this.f21038a.trySetResult(bVar.d());
        return true;
    }
}
