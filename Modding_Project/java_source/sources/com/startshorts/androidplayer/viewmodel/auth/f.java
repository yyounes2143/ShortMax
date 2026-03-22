package com.startshorts.androidplayer.viewmodel.auth;

import com.hades.aar.auth.base.AuthType;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.bean.region.Region;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PhoneAuthViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class f {

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends f {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f48290a = new a();

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
            return -256863620;
        }

        @NotNull
        public String toString() {
            return "HideWaitingDialog";
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends f {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f48291a = new b();

        private b() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 2043530891;
        }

        @NotNull
        public String toString() {
            return "Idle";
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends f {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Region f48292a;

        public c(@Nullable Region region) {
            super(null);
            this.f48292a = region;
        }

        @Nullable
        public final Region a() {
            return this.f48292a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f48292a, ((c) obj).f48292a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            Region region = this.f48292a;
            if (region == null) {
                return 0;
            }
            return region.hashCode();
        }

        @NotNull
        public String toString() {
            return "RegionCode(region=" + this.f48292a + ')';
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends f {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f48293a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f48294b;

        public d(boolean z10, @Nullable String str) {
            super(null);
            this.f48293a = z10;
            this.f48294b = str;
        }

        @Nullable
        public final String a() {
            return this.f48294b;
        }

        public final boolean b() {
            return this.f48293a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f48293a == dVar.f48293a && Intrinsics.areEqual(this.f48294b, dVar.f48294b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Boolean.hashCode(this.f48293a) * 31;
            String str = this.f48294b;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "RegionCodeError(isNetworkError=" + this.f48293a + ", error=" + this.f48294b + ')';
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends f {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final AuthType f48295a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f48296b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f48297c;

        public e(@Nullable AuthType authType, @Nullable String str, boolean z10) {
            super(null);
            this.f48295a = authType;
            this.f48296b = str;
            this.f48297c = z10;
        }

        @Nullable
        public final AuthType a() {
            return this.f48295a;
        }

        public final boolean b() {
            return this.f48297c;
        }

        @Nullable
        public final String c() {
            return this.f48296b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f48295a == eVar.f48295a && Intrinsics.areEqual(this.f48296b, eVar.f48296b) && this.f48297c == eVar.f48297c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            AuthType authType = this.f48295a;
            int i10 = 0;
            if (authType == null) {
                hashCode = 0;
            } else {
                hashCode = authType.hashCode();
            }
            int i11 = hashCode * 31;
            String str = this.f48296b;
            if (str != null) {
                i10 = str.hashCode();
            }
            return ((i11 + i10) * 31) + Boolean.hashCode(this.f48297c);
        }

        @NotNull
        public String toString() {
            return "SendFailed(authType=" + this.f48295a + ", message=" + this.f48296b + ", invalidateGetCode=" + this.f48297c + ')';
        }

        public /* synthetic */ e(AuthType authType, String str, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(authType, str, (i10 & 4) != 0 ? true : z10);
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.auth.f$f  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0652f extends f {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final AuthType f48298a;

        public C0652f(@Nullable AuthType authType) {
            super(null);
            this.f48298a = authType;
        }

        @Nullable
        public final AuthType a() {
            return this.f48298a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0652f) && this.f48298a == ((C0652f) obj).f48298a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            AuthType authType = this.f48298a;
            if (authType == null) {
                return 0;
            }
            return authType.hashCode();
        }

        @NotNull
        public String toString() {
            return "SendSucceed(authType=" + this.f48298a + ')';
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends f {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final g f48299a = new g();

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
            return -1675137304;
        }

        @NotNull
        public String toString() {
            return "SendingOtp";
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends f {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48300a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final AuthType f48301b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final AuthReason f48302c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(@Nullable String str, @Nullable AuthType authType, @NotNull AuthReason authReason) {
            super(null);
            Intrinsics.checkNotNullParameter(authReason, "authReason");
            this.f48300a = str;
            this.f48301b = authType;
            this.f48302c = authReason;
        }

        @NotNull
        public final AuthReason a() {
            return this.f48302c;
        }

        @Nullable
        public final AuthType b() {
            return this.f48301b;
        }

        @Nullable
        public final String c() {
            return this.f48300a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            if (Intrinsics.areEqual(this.f48300a, hVar.f48300a) && this.f48301b == hVar.f48301b && this.f48302c == hVar.f48302c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f48300a;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = hashCode * 31;
            AuthType authType = this.f48301b;
            if (authType != null) {
                i10 = authType.hashCode();
            }
            return ((i11 + i10) * 31) + this.f48302c.hashCode();
        }

        @NotNull
        public String toString() {
            return "VerifyFailed(message=" + this.f48300a + ", authType=" + this.f48301b + ", authReason=" + this.f48302c + ')';
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends f {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final AuthType f48303a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final AuthReason f48304b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(@Nullable AuthType authType, @NotNull AuthReason authReason) {
            super(null);
            Intrinsics.checkNotNullParameter(authReason, "authReason");
            this.f48303a = authType;
            this.f48304b = authReason;
        }

        @NotNull
        public final AuthReason a() {
            return this.f48304b;
        }

        @Nullable
        public final AuthType b() {
            return this.f48303a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            if (this.f48303a == iVar.f48303a && this.f48304b == iVar.f48304b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            AuthType authType = this.f48303a;
            if (authType == null) {
                hashCode = 0;
            } else {
                hashCode = authType.hashCode();
            }
            return (hashCode * 31) + this.f48304b.hashCode();
        }

        @NotNull
        public String toString() {
            return "VerifySucceed(authType=" + this.f48303a + ", authReason=" + this.f48304b + ')';
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends f {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final j f48305a = new j();

        private j() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof j)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 284257625;
        }

        @NotNull
        public String toString() {
            return "VerifyingOtp";
        }
    }

    public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private f() {
    }
}
