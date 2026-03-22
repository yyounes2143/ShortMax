package com.google.firebase.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public class h {
    @NonNull
    public static AuthCredential a(@Nullable String str, @Nullable String str2) {
        return new GoogleAuthCredential(str, str2);
    }
}
