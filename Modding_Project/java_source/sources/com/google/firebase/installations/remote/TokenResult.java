package com.google.firebase.installations.remote;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;
import com.google.firebase.installations.remote.b;
@AutoValue
/* loaded from: classes5.dex */
public abstract class TokenResult {

    /* loaded from: classes5.dex */
    public enum ResponseCode {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    @AutoValue.Builder
    /* loaded from: classes5.dex */
    public static abstract class a {
        @NonNull
        public abstract TokenResult a();

        @NonNull
        public abstract a b(@NonNull ResponseCode responseCode);

        @NonNull
        public abstract a c(@NonNull String str);

        @NonNull
        public abstract a d(long j10);
    }

    @NonNull
    public static a a() {
        return new b.C0309b().d(0L);
    }

    @Nullable
    public abstract ResponseCode b();

    @Nullable
    public abstract String c();

    @NonNull
    public abstract long d();
}
