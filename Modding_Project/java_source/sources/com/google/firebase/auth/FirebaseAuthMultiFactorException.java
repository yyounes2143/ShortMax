package com.google.firebase.auth;

import androidx.annotation.NonNull;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public class FirebaseAuthMultiFactorException extends FirebaseAuthException {

    /* renamed from: b  reason: collision with root package name */
    private MultiFactorResolver f20437b;

    public FirebaseAuthMultiFactorException(@NonNull String str, @NonNull String str2, @NonNull MultiFactorResolver multiFactorResolver) {
        super(str, str2);
        this.f20437b = multiFactorResolver;
    }
}
