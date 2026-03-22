package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.k;
import com.google.auto.value.AutoValue;
import java.util.List;
/* compiled from: LogRequest.java */
@AutoValue
/* loaded from: classes4.dex */
public abstract class r {

    /* compiled from: LogRequest.java */
    @AutoValue.Builder
    /* loaded from: classes4.dex */
    public static abstract class a {
        @NonNull
        public abstract r a();

        @NonNull
        public abstract a b(@Nullable ClientInfo clientInfo);

        @NonNull
        public abstract a c(@Nullable List<q> list);

        @NonNull
        abstract a d(@Nullable Integer num);

        @NonNull
        abstract a e(@Nullable String str);

        @NonNull
        public abstract a f(@Nullable QosTier qosTier);

        @NonNull
        public abstract a g(long j10);

        @NonNull
        public abstract a h(long j10);

        @NonNull
        public a i(int i10) {
            return d(Integer.valueOf(i10));
        }

        @NonNull
        public a j(@NonNull String str) {
            return e(str);
        }
    }

    @NonNull
    public static a a() {
        return new k.b();
    }

    @Nullable
    public abstract ClientInfo b();

    @Nullable
    public abstract List<q> c();

    @Nullable
    public abstract Integer d();

    @Nullable
    public abstract String e();

    @Nullable
    public abstract QosTier f();

    public abstract long g();

    public abstract long h();
}
