package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.i;
import com.google.auto.value.AutoValue;
/* compiled from: ExternalPrivacyContext.java */
@AutoValue
/* loaded from: classes4.dex */
public abstract class p {

    /* compiled from: ExternalPrivacyContext.java */
    @AutoValue.Builder
    /* loaded from: classes4.dex */
    public static abstract class a {
        @NonNull
        public abstract p a();

        @NonNull
        public abstract a b(@Nullable o oVar);
    }

    @NonNull
    public static a a() {
        return new i.b();
    }

    @Nullable
    public abstract o b();
}
