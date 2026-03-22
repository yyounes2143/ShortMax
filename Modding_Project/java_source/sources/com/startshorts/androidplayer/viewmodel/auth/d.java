package com.startshorts.androidplayer.viewmodel.auth;

import com.hades.aar.auth.base.AuthType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EmailAuthViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class d {

    /* compiled from: EmailAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f48276a = new a();

        private a() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 506557497;
        }

        @NotNull
        public String toString() {
            return "Idle";
        }
    }

    /* compiled from: EmailAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48277a;

        public b(@Nullable String str) {
            super(null);
            this.f48277a = str;
        }

        @Nullable
        public final String a() {
            return this.f48277a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f48277a, ((b) obj).f48277a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f48277a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @NotNull
        public String toString() {
            return "SendFailed(message=" + this.f48277a + ')';
        }
    }

    /* compiled from: EmailAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f48278a = new c();

        private c() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 1542782357;
        }

        @NotNull
        public String toString() {
            return "SendSucceed";
        }
    }

    /* compiled from: EmailAuthViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.auth.d$d  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0651d extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0651d f48279a = new C0651d();

        private C0651d() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof C0651d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -2097702378;
        }

        @NotNull
        public String toString() {
            return "SendingOtp";
        }
    }

    /* compiled from: EmailAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends d {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48280a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final AuthType f48281b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@Nullable String str, @NotNull AuthType authType) {
            super(null);
            Intrinsics.checkNotNullParameter(authType, "authType");
            this.f48280a = str;
            this.f48281b = authType;
        }

        @Nullable
        public final String a() {
            return this.f48280a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (Intrinsics.areEqual(this.f48280a, eVar.f48280a) && this.f48281b == eVar.f48281b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f48280a;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return (hashCode * 31) + this.f48281b.hashCode();
        }

        @NotNull
        public String toString() {
            return "VerifyFailed(message=" + this.f48280a + ", authType=" + this.f48281b + ')';
        }
    }

    /* compiled from: EmailAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final AuthType f48282a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull AuthType authType) {
            super(null);
            Intrinsics.checkNotNullParameter(authType, "authType");
            this.f48282a = authType;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof f) && this.f48282a == ((f) obj).f48282a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48282a.hashCode();
        }

        @NotNull
        public String toString() {
            return "VerifySucceed(authType=" + this.f48282a + ')';
        }
    }

    /* compiled from: EmailAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final g f48283a = new g();

        private g() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof g)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -2073852665;
        }

        @NotNull
        public String toString() {
            return "VerifyingOtp";
        }
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private d() {
    }
}
