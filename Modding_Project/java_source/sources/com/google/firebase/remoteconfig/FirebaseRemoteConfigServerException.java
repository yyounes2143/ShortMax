package com.google.firebase.remoteconfig;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
/* loaded from: classes5.dex */
public class FirebaseRemoteConfigServerException extends FirebaseRemoteConfigException {

    /* renamed from: b  reason: collision with root package name */
    private final int f21316b;

    public FirebaseRemoteConfigServerException(int i10, @NonNull String str) {
        super(str);
        this.f21316b = i10;
    }

    public int b() {
        return this.f21316b;
    }

    public FirebaseRemoteConfigServerException(int i10, @NonNull String str, @Nullable Throwable th2) {
        super(str, th2);
        this.f21316b = i10;
    }

    public FirebaseRemoteConfigServerException(@NonNull String str, @NonNull FirebaseRemoteConfigException.Code code) {
        super(str, code);
        this.f21316b = -1;
    }

    public FirebaseRemoteConfigServerException(int i10, @NonNull String str, @NonNull FirebaseRemoteConfigException.Code code) {
        super(str, code);
        this.f21316b = i10;
    }
}
