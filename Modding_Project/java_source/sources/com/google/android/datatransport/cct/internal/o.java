package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.h;
import com.google.auto.value.AutoValue;
/* compiled from: ExternalPRequestContext.java */
@AutoValue
/* loaded from: classes4.dex */
public abstract class o {

    /* compiled from: ExternalPRequestContext.java */
    @AutoValue.Builder
    /* loaded from: classes4.dex */
    public static abstract class a {
        @NonNull
        public abstract o a();

        @NonNull
        public abstract a b(@Nullable Integer num);
    }

    @NonNull
    public static a a() {
        return new h.b();
    }

    @Nullable
    public abstract Integer b();
}
