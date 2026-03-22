package com.google.firebase.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class FirebaseAuthUserCollisionException extends FirebaseAuthException {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private AuthCredential f20438b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f20439c;

    public FirebaseAuthUserCollisionException(@NonNull String str, @NonNull String str2) {
        super(str, str2);
    }

    @NonNull
    public final FirebaseAuthUserCollisionException d(@NonNull AuthCredential authCredential) {
        this.f20438b = authCredential;
        return this;
    }

    @NonNull
    public final FirebaseAuthUserCollisionException e(@NonNull String str) {
        this.f20439c = str;
        return this;
    }
}
