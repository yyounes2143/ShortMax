package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.firebase.FirebaseException;
/* loaded from: classes5.dex */
public class FirebaseInstallationsException extends FirebaseException {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Status f21010a;

    /* loaded from: classes5.dex */
    public enum Status {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public FirebaseInstallationsException(@NonNull Status status) {
        this.f21010a = status;
    }

    public FirebaseInstallationsException(@NonNull String str, @NonNull Status status) {
        super(str);
        this.f21010a = status;
    }
}
