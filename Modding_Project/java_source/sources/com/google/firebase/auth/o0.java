package com.google.firebase.auth;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p003firebaseauthapi.zzahv;
import java.util.Objects;
import v7.w0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class o0 implements v7.o, w0 {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f20575a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(FirebaseAuth firebaseAuth) {
        Objects.requireNonNull(firebaseAuth);
        this.f20575a = firebaseAuth;
    }

    @Override // v7.w0
    public final void a(zzahv zzahvVar, FirebaseUser firebaseUser) {
        this.f20575a.A(firebaseUser, zzahvVar, true, true);
    }

    @Override // v7.o
    public final void zza(Status status) {
        int statusCode = status.getStatusCode();
        if (statusCode == 17011 || statusCode == 17021 || statusCode == 17005) {
            this.f20575a.l();
        }
    }
}
