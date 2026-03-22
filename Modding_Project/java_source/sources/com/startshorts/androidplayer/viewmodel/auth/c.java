package com.startshorts.androidplayer.viewmodel.auth;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EmailAuthViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class c {

    /* compiled from: EmailAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f48273a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull String email) {
            super(null);
            Intrinsics.checkNotNullParameter(email, "email");
            this.f48273a = email;
        }

        @NotNull
        public final String a() {
            return this.f48273a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48273a, ((a) obj).f48273a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48273a.hashCode();
        }

        @NotNull
        public String toString() {
            return "SendOtp(email=" + this.f48273a + ')';
        }
    }

    /* compiled from: EmailAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f48274a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48275b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull String email, @NotNull String otp) {
            super(null);
            Intrinsics.checkNotNullParameter(email, "email");
            Intrinsics.checkNotNullParameter(otp, "otp");
            this.f48274a = email;
            this.f48275b = otp;
        }

        @NotNull
        public final String a() {
            return this.f48274a;
        }

        @NotNull
        public final String b() {
            return this.f48275b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f48274a, bVar.f48274a) && Intrinsics.areEqual(this.f48275b, bVar.f48275b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f48274a.hashCode() * 31) + this.f48275b.hashCode();
        }

        @NotNull
        public String toString() {
            return "VerifyOtp(email=" + this.f48274a + ", otp=" + this.f48275b + ')';
        }
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private c() {
    }
}
