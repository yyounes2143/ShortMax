package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.g;
import com.google.auto.value.AutoValue;
/* compiled from: ExperimentIds.java */
@AutoValue
/* loaded from: classes4.dex */
public abstract class n {

    /* compiled from: ExperimentIds.java */
    @AutoValue.Builder
    /* loaded from: classes4.dex */
    public static abstract class a {
        @NonNull
        public abstract n a();

        @NonNull
        public abstract a b(@Nullable byte[] bArr);

        @NonNull
        public abstract a c(@Nullable byte[] bArr);
    }

    @NonNull
    public static a a() {
        return new g.b();
    }

    @Nullable
    public abstract byte[] b();

    @Nullable
    public abstract byte[] c();
}
