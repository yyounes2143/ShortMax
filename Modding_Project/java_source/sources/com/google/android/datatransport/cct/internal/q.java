package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.j;
import com.google.auto.value.AutoValue;
/* compiled from: LogEvent.java */
@AutoValue
/* loaded from: classes4.dex */
public abstract class q {

    /* compiled from: LogEvent.java */
    @AutoValue.Builder
    /* loaded from: classes4.dex */
    public static abstract class a {
        @NonNull
        public abstract q a();

        @NonNull
        public abstract a b(@Nullable ComplianceData complianceData);

        @NonNull
        public abstract a c(@Nullable Integer num);

        @NonNull
        public abstract a d(long j10);

        @NonNull
        public abstract a e(long j10);

        @NonNull
        public abstract a f(@Nullable n nVar);

        @NonNull
        public abstract a g(@Nullable NetworkConnectionInfo networkConnectionInfo);

        @NonNull
        abstract a h(@Nullable byte[] bArr);

        @NonNull
        abstract a i(@Nullable String str);

        @NonNull
        public abstract a j(long j10);
    }

    private static a a() {
        return new j.b();
    }

    @NonNull
    public static a k(@NonNull String str) {
        return a().i(str);
    }

    @NonNull
    public static a l(@NonNull byte[] bArr) {
        return a().h(bArr);
    }

    @Nullable
    public abstract ComplianceData b();

    @Nullable
    public abstract Integer c();

    public abstract long d();

    public abstract long e();

    @Nullable
    public abstract n f();

    @Nullable
    public abstract NetworkConnectionInfo g();

    @Nullable
    public abstract byte[] h();

    @Nullable
    public abstract String i();

    public abstract long j();
}
