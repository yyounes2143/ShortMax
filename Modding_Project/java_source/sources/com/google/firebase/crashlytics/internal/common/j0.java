package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;
/* compiled from: InstallIdProvider.java */
/* loaded from: classes5.dex */
public interface j0 {

    /* compiled from: InstallIdProvider.java */
    @AutoValue
    /* loaded from: classes5.dex */
    public static abstract class a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public static a a(String str, h0 h0Var) {
            return new c(str, h0Var.b(), h0Var.a());
        }

        public static a b(String str) {
            return new c(str, null, null);
        }

        @NonNull
        public abstract String c();

        @Nullable
        public abstract String d();

        @Nullable
        public abstract String e();
    }

    a a();
}
