package com.startshorts.androidplayer.viewmodel.reward;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.task.TaskModuleList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class j {

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends j {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f49194a;

        @NotNull
        public final ApiErrorState a() {
            return this.f49194a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f49194a, ((a) obj).f49194a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49194a.hashCode();
        }

        @NotNull
        public String toString() {
            return "AcceptTaskRewardFailed(apiErrorState=" + this.f49194a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends j {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f49195a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Integer f49196b;

        public b() {
            this(null, null, 3, null);
        }

        @Nullable
        public final String a() {
            return this.f49195a;
        }

        @Nullable
        public final Integer b() {
            return this.f49196b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f49195a, bVar.f49195a) && Intrinsics.areEqual(this.f49196b, bVar.f49196b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f49195a;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = hashCode * 31;
            Integer num = this.f49196b;
            if (num != null) {
                i10 = num.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "AcceptTaskRewardSuccess(taskId=" + this.f49195a + ", taskType=" + this.f49196b + ')';
        }

        public /* synthetic */ b(String str, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : num);
        }

        public b(@Nullable String str, @Nullable Integer num) {
            super(null);
            this.f49195a = str;
            this.f49196b = num;
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends j {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f49197a = new c();

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
            return -794638442;
        }

        @NotNull
        public String toString() {
            return "OnPause";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends j {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final d f49198a = new d();

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
            return 1196907149;
        }

        @NotNull
        public String toString() {
            return "OnResume";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends j {

        /* renamed from: a  reason: collision with root package name */
        private final int f49199a;

        public e(int i10) {
            super(null);
            this.f49199a = i10;
        }

        public final int a() {
            return this.f49199a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof e) && this.f49199a == ((e) obj).f49199a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f49199a);
        }

        @NotNull
        public String toString() {
            return "RefreshTask(taskType=" + this.f49199a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends j {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final TaskModuleList f49200a;

        public f(@Nullable TaskModuleList taskModuleList) {
            super(null);
            this.f49200a = taskModuleList;
        }

        @Nullable
        public final TaskModuleList a() {
            return this.f49200a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof f) && Intrinsics.areEqual(this.f49200a, ((f) obj).f49200a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            TaskModuleList taskModuleList = this.f49200a;
            if (taskModuleList == null) {
                return 0;
            }
            return taskModuleList.hashCode();
        }

        @NotNull
        public String toString() {
            return "TaskModuleListLoaded(taskModuleList=" + this.f49200a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends j {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f49201a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull ApiErrorState apiErrorState) {
            super(null);
            Intrinsics.checkNotNullParameter(apiErrorState, "apiErrorState");
            this.f49201a = apiErrorState;
        }

        @NotNull
        public final ApiErrorState a() {
            return this.f49201a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof g) && Intrinsics.areEqual(this.f49201a, ((g) obj).f49201a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49201a.hashCode();
        }

        @NotNull
        public String toString() {
            return "TaskModuleListLoadedFailed(apiErrorState=" + this.f49201a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends j {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final h f49202a = new h();

        private h() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof h)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 2100205484;
        }

        @NotNull
        public String toString() {
            return "TaskModuleListLoading";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends j {

        /* renamed from: a  reason: collision with root package name */
        private final int f49203a;

        public i(int i10) {
            super(null);
            this.f49203a = i10;
        }

        public final int a() {
            return this.f49203a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof i) && this.f49203a == ((i) obj).f49203a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f49203a);
        }

        @NotNull
        public String toString() {
            return "UpdateBindTaskRewardEnableAccept(bindType=" + this.f49203a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.reward.j$j  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0683j extends j {

        /* renamed from: a  reason: collision with root package name */
        private final int f49204a;

        public C0683j(int i10) {
            super(null);
            this.f49204a = i10;
        }

        public final int a() {
            return this.f49204a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0683j) && this.f49204a == ((C0683j) obj).f49204a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f49204a);
        }

        @NotNull
        public String toString() {
            return "UpdateFollowTaskEnableAccept(taskType=" + this.f49204a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k extends j {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final k f49205a = new k();

        private k() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof k)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1089123549;
        }

        @NotNull
        public String toString() {
            return "UpdateNotificationPermissionTaskRewardEnableAccept";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class l extends j {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final l f49206a = new l();

        private l() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof l)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -822848372;
        }

        @NotNull
        public String toString() {
            return "UpdatePipTaskRewardEnableAccept";
        }
    }

    public /* synthetic */ j(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private j() {
    }
}
