package com.startshorts.androidplayer.viewmodel.reward;

import com.startshorts.androidplayer.bean.ad.QueryWatchAdBonusTaskResult;
import com.startshorts.androidplayer.bean.ad.QueryWatchAdTaskComplete;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class k {

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends k {

        /* renamed from: a  reason: collision with root package name */
        private final int f49207a;

        public a(int i10) {
            super(null);
            this.f49207a = i10;
        }

        public final int a() {
            return this.f49207a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && this.f49207a == ((a) obj).f49207a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f49207a);
        }

        @NotNull
        public String toString() {
            return "ClaimCheckInMixedTaskRewardSuccess(bonus=" + this.f49207a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f49208a = new b();

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
            return -472288182;
        }

        @NotNull
        public String toString() {
            return "OnPause";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f49209a = new c();

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
            return -1695136679;
        }

        @NotNull
        public String toString() {
            return "OnResume";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends k {

        /* renamed from: a  reason: collision with root package name */
        private final int f49210a;

        public d(int i10) {
            super(null);
            this.f49210a = i10;
        }

        public final int a() {
            return this.f49210a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof d) && this.f49210a == ((d) obj).f49210a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f49210a);
        }

        @NotNull
        public String toString() {
            return "ReceiveWatchDramaTimeBonus(bonus=" + this.f49210a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends k {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49211a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final QueryWatchAdBonusTaskResult f49212b;

        public e(boolean z10, @Nullable QueryWatchAdBonusTaskResult queryWatchAdBonusTaskResult) {
            super(null);
            this.f49211a = z10;
            this.f49212b = queryWatchAdBonusTaskResult;
        }

        public final boolean a() {
            return this.f49211a;
        }

        @Nullable
        public final QueryWatchAdBonusTaskResult b() {
            return this.f49212b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f49211a == eVar.f49211a && Intrinsics.areEqual(this.f49212b, eVar.f49212b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Boolean.hashCode(this.f49211a) * 31;
            QueryWatchAdBonusTaskResult queryWatchAdBonusTaskResult = this.f49212b;
            if (queryWatchAdBonusTaskResult == null) {
                hashCode = 0;
            } else {
                hashCode = queryWatchAdBonusTaskResult.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "WatchAdBonusesLoaded(loading=" + this.f49211a + ", queryWatchAdBonusResult=" + this.f49212b + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f49213a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull ApiErrorState apiErrorState) {
            super(null);
            Intrinsics.checkNotNullParameter(apiErrorState, "apiErrorState");
            this.f49213a = apiErrorState;
        }

        @NotNull
        public final ApiErrorState a() {
            return this.f49213a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof f) && Intrinsics.areEqual(this.f49213a, ((f) obj).f49213a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49213a.hashCode();
        }

        @NotNull
        public String toString() {
            return "WatchAdBonusesLoadedFailed(apiErrorState=" + this.f49213a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final g f49214a = new g();

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
            return 228736276;
        }

        @NotNull
        public String toString() {
            return "WatchAdBonusesLoading";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends k {

        /* renamed from: a  reason: collision with root package name */
        private final int f49215a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f49216b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(int i10, @NotNull String errorMsg) {
            super(null);
            Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
            this.f49215a = i10;
            this.f49216b = errorMsg;
        }

        public final int a() {
            return this.f49215a;
        }

        @NotNull
        public final String b() {
            return this.f49216b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            if (this.f49215a == hVar.f49215a && Intrinsics.areEqual(this.f49216b, hVar.f49216b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f49215a) * 31) + this.f49216b.hashCode();
        }

        @NotNull
        public String toString() {
            return "WatchAdForBonusFailed(adId=" + this.f49215a + ", errorMsg=" + this.f49216b + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends k {

        /* renamed from: a  reason: collision with root package name */
        private final int f49217a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final QueryWatchAdTaskComplete f49218b;

        public i(int i10, @Nullable QueryWatchAdTaskComplete queryWatchAdTaskComplete) {
            super(null);
            this.f49217a = i10;
            this.f49218b = queryWatchAdTaskComplete;
        }

        public final int a() {
            return this.f49217a;
        }

        @Nullable
        public final QueryWatchAdTaskComplete b() {
            return this.f49218b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            if (this.f49217a == iVar.f49217a && Intrinsics.areEqual(this.f49218b, iVar.f49218b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Integer.hashCode(this.f49217a) * 31;
            QueryWatchAdTaskComplete queryWatchAdTaskComplete = this.f49218b;
            if (queryWatchAdTaskComplete == null) {
                hashCode = 0;
            } else {
                hashCode = queryWatchAdTaskComplete.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "WatchAdForBonusSuccess(adId=" + this.f49217a + ", taskComplete=" + this.f49218b + ')';
        }
    }

    public /* synthetic */ k(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private k() {
    }
}
