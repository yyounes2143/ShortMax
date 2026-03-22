package com.google.firebase.auth;

import com.google.firebase.auth.FirebaseAuth;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class n0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f20573a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ b9.b f20574b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n0(FirebaseAuth firebaseAuth, b9.b bVar) {
        this.f20573a = firebaseAuth;
        this.f20574b = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (v7.a aVar : this.f20573a.f20411d) {
            aVar.a(this.f20574b);
        }
        for (FirebaseAuth.b bVar : this.f20573a.f20409b) {
            bVar.a(this.f20573a);
        }
    }
}
