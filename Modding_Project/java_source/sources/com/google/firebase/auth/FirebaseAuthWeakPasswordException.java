package com.google.firebase.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class FirebaseAuthWeakPasswordException extends FirebaseAuthInvalidCredentialsException {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f20440b;

    public FirebaseAuthWeakPasswordException(@NonNull String str, @NonNull String str2, @Nullable String str3) {
        super(str, str2);
        this.f20440b = str3;
    }
}
