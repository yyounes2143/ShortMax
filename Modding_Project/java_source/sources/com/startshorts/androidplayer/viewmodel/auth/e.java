package com.startshorts.androidplayer.viewmodel.auth;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PhoneAuthViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class e {

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends e {

        /* renamed from: a  reason: collision with root package name */
        private final int f48284a;

        public a() {
            this(0, 1, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && this.f48284a == ((a) obj).f48284a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48284a);
        }

        @NotNull
        public String toString() {
            return "RegionCode(def=" + this.f48284a + ')';
        }

        public a(int i10) {
            super(null);
            this.f48284a = i10;
        }

        public /* synthetic */ a(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 0 : i10);
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends e {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f48285a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48286b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull String areaCode, @NotNull String phone) {
            super(null);
            Intrinsics.checkNotNullParameter(areaCode, "areaCode");
            Intrinsics.checkNotNullParameter(phone, "phone");
            this.f48285a = areaCode;
            this.f48286b = phone;
        }

        @NotNull
        public final String a() {
            return this.f48285a;
        }

        @NotNull
        public final String b() {
            return this.f48286b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f48285a, bVar.f48285a) && Intrinsics.areEqual(this.f48286b, bVar.f48286b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f48285a.hashCode() * 31) + this.f48286b.hashCode();
        }

        @NotNull
        public String toString() {
            return "SendOtp(areaCode=" + this.f48285a + ", phone=" + this.f48286b + ')';
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends e {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f48287a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48288b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f48289c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull String otp, @NotNull String areaCode, @NotNull String phone) {
            super(null);
            Intrinsics.checkNotNullParameter(otp, "otp");
            Intrinsics.checkNotNullParameter(areaCode, "areaCode");
            Intrinsics.checkNotNullParameter(phone, "phone");
            this.f48287a = otp;
            this.f48288b = areaCode;
            this.f48289c = phone;
        }

        @NotNull
        public final String a() {
            return this.f48288b;
        }

        @NotNull
        public final String b() {
            return this.f48287a;
        }

        @NotNull
        public final String c() {
            return this.f48289c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (Intrinsics.areEqual(this.f48287a, cVar.f48287a) && Intrinsics.areEqual(this.f48288b, cVar.f48288b) && Intrinsics.areEqual(this.f48289c, cVar.f48289c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f48287a.hashCode() * 31) + this.f48288b.hashCode()) * 31) + this.f48289c.hashCode();
        }

        @NotNull
        public String toString() {
            return "VerifyOtp(otp=" + this.f48287a + ", areaCode=" + this.f48288b + ", phone=" + this.f48289c + ')';
        }
    }

    public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private e() {
    }
}
