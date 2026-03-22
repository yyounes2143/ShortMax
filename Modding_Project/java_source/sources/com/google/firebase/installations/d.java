package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: GetAuthTokenListener.java */
/* loaded from: classes5.dex */
class d implements g {

    /* renamed from: a  reason: collision with root package name */
    private final h f21036a;

    /* renamed from: b  reason: collision with root package name */
    private final TaskCompletionSource<f> f21037b;

    public d(h hVar, TaskCompletionSource<f> taskCompletionSource) {
        this.f21036a = hVar;
        this.f21037b = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.g
    public boolean a(Exception exc) {
        this.f21037b.trySetException(exc);
        return true;
    }

    @Override // com.google.firebase.installations.g
    public boolean b(com.google.firebase.installations.local.b bVar) {
        if (bVar.k() && !this.f21036a.f(bVar)) {
            this.f21037b.setResult(f.a().b(bVar.b()).d(bVar.c()).c(bVar.h()).a());
            return true;
        }
        return false;
    }
}
