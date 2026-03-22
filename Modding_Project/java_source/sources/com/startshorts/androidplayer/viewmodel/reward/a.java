package com.startshorts.androidplayer.viewmodel.reward;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.checkin.CheckInInfoResult;
import com.startshorts.androidplayer.bean.checkin.SignInAdInfoResult;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.reward.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0681a extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f49149a;

        @NotNull
        public final ApiErrorState a() {
            return this.f49149a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0681a) && Intrinsics.areEqual(this.f49149a, ((C0681a) obj).f49149a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49149a.hashCode();
        }

        @NotNull
        public String toString() {
            return "CheckInFailed(apiErrorState=" + this.f49149a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final CheckInInfoResult f49150a;

        public b(@Nullable CheckInInfoResult checkInInfoResult) {
            super(null);
            this.f49150a = checkInInfoResult;
        }

        @Nullable
        public final CheckInInfoResult a() {
            return this.f49150a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f49150a, ((b) obj).f49150a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            CheckInInfoResult checkInInfoResult = this.f49150a;
            if (checkInInfoResult == null) {
                return 0;
            }
            return checkInInfoResult.hashCode();
        }

        @NotNull
        public String toString() {
            return "CheckInInfoLoaded(checkInInfoResult=" + this.f49150a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f49151a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull ApiErrorState apiErrorState) {
            super(null);
            Intrinsics.checkNotNullParameter(apiErrorState, "apiErrorState");
            this.f49151a = apiErrorState;
        }

        @NotNull
        public final ApiErrorState a() {
            return this.f49151a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f49151a, ((c) obj).f49151a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49151a.hashCode();
        }

        @NotNull
        public String toString() {
            return "CheckInInfoLoadedFailed(apiErrorState=" + this.f49151a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final d f49152a = new d();

        private d() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1746283594;
        }

        @NotNull
        public String toString() {
            return "CheckInInfoLoading";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends a {

        /* renamed from: a  reason: collision with root package name */
        private final int f49153a;

        public e(int i10) {
            super(null);
            this.f49153a = i10;
        }

        public final int a() {
            return this.f49153a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof e) && this.f49153a == ((e) obj).f49153a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f49153a);
        }

        @NotNull
        public String toString() {
            return "CheckInSuccess(bonus=" + this.f49153a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final f f49154a = new f();

        private f() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof f)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -258866974;
        }

        @NotNull
        public String toString() {
            return "OnPause";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final g f49155a = new g();

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
            return 625953473;
        }

        @NotNull
        public String toString() {
            return "OnResume";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final SignInAdInfoResult f49156a;

        public h(@Nullable SignInAdInfoResult signInAdInfoResult) {
            super(null);
            this.f49156a = signInAdInfoResult;
        }

        @Nullable
        public final SignInAdInfoResult a() {
            return this.f49156a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof h) && Intrinsics.areEqual(this.f49156a, ((h) obj).f49156a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            SignInAdInfoResult signInAdInfoResult = this.f49156a;
            if (signInAdInfoResult == null) {
                return 0;
            }
            return signInAdInfoResult.hashCode();
        }

        @NotNull
        public String toString() {
            return "SignInAdInfoSuccess(signInAdInfoResult=" + this.f49156a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final i f49157a = new i();

        private i() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof i)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 281498849;
        }

        @NotNull
        public String toString() {
            return "UpdateBonus";
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
