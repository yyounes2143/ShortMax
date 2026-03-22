package com.google.firebase.auth;

import com.google.firebase.auth.FirebaseAuth;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class p0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f20576a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0(FirebaseAuth firebaseAuth) {
        this.f20576a = firebaseAuth;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (FirebaseAuth.a aVar : this.f20576a.f20410c) {
            aVar.a(this.f20576a);
        }
    }
}
