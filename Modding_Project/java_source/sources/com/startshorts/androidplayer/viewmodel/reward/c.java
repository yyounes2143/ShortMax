package com.startshorts.androidplayer.viewmodel.reward;

import android.content.Context;
import com.startshorts.androidplayer.bean.ad.WatchAdBonusTask;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.checkin.SignInAdInfoResult;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class c {

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f49159a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f49160b;

        /* renamed from: c  reason: collision with root package name */
        private final int f49161c;

        /* renamed from: d  reason: collision with root package name */
        private final int f49162d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final String f49163e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull Context context, @NotNull String taskId, int i10, int i11, @Nullable String str) {
            super(null);
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(taskId, "taskId");
            this.f49159a = context;
            this.f49160b = taskId;
            this.f49161c = i10;
            this.f49162d = i11;
            this.f49163e = str;
        }

        public final int a() {
            return this.f49162d;
        }

        @NotNull
        public final Context b() {
            return this.f49159a;
        }

        @Nullable
        public final String c() {
            return this.f49163e;
        }

        @NotNull
        public final String d() {
            return this.f49160b;
        }

        public final int e() {
            return this.f49161c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f49159a, aVar.f49159a) && Intrinsics.areEqual(this.f49160b, aVar.f49160b) && this.f49161c == aVar.f49161c && this.f49162d == aVar.f49162d && Intrinsics.areEqual(this.f49163e, aVar.f49163e)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = ((((((this.f49159a.hashCode() * 31) + this.f49160b.hashCode()) * 31) + Integer.hashCode(this.f49161c)) * 31) + Integer.hashCode(this.f49162d)) * 31;
            String str = this.f49163e;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "AcceptTaskReward(context=" + this.f49159a + ", taskId=" + this.f49160b + ", taskType=" + this.f49161c + ", bonus=" + this.f49162d + ", from=" + this.f49163e + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f49164a;

        /* renamed from: b  reason: collision with root package name */
        private final int f49165b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f49166c;

        /* renamed from: d  reason: collision with root package name */
        private final int f49167d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final String f49168e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f49169f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@Nullable Context context, int i10, @NotNull String date, int i11, @Nullable String str, boolean z10) {
            super(null);
            Intrinsics.checkNotNullParameter(date, "date");
            this.f49164a = context;
            this.f49165b = i10;
            this.f49166c = date;
            this.f49167d = i11;
            this.f49168e = str;
            this.f49169f = z10;
        }

        public final boolean a() {
            return this.f49169f;
        }

        public final int b() {
            return this.f49167d;
        }

        @Nullable
        public final Context c() {
            return this.f49164a;
        }

        @NotNull
        public final String d() {
            return this.f49166c;
        }

        @Nullable
        public final String e() {
            return this.f49168e;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f49164a, bVar.f49164a) && this.f49165b == bVar.f49165b && Intrinsics.areEqual(this.f49166c, bVar.f49166c) && this.f49167d == bVar.f49167d && Intrinsics.areEqual(this.f49168e, bVar.f49168e) && this.f49169f == bVar.f49169f) {
                return true;
            }
            return false;
        }

        public final int f() {
            return this.f49165b;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f49164a;
            int i10 = 0;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            int hashCode2 = ((((((hashCode * 31) + Integer.hashCode(this.f49165b)) * 31) + this.f49166c.hashCode()) * 31) + Integer.hashCode(this.f49167d)) * 31;
            String str = this.f49168e;
            if (str != null) {
                i10 = str.hashCode();
            }
            return ((hashCode2 + i10) * 31) + Boolean.hashCode(this.f49169f);
        }

        @NotNull
        public String toString() {
            return "CheckIn(context=" + this.f49164a + ", index=" + this.f49165b + ", date=" + this.f49166c + ", bonus=" + this.f49167d + ", from=" + this.f49168e + ", auto=" + this.f49169f + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.reward.c$c  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0682c extends c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f49170a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final SignInAdInfoResult f49171b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f49172c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0682c(@Nullable Context context, @NotNull SignInAdInfoResult task, @NotNull String placement) {
            super(null);
            Intrinsics.checkNotNullParameter(task, "task");
            Intrinsics.checkNotNullParameter(placement, "placement");
            this.f49170a = context;
            this.f49171b = task;
            this.f49172c = placement;
        }

        @Nullable
        public final Context a() {
            return this.f49170a;
        }

        @NotNull
        public final String b() {
            return this.f49172c;
        }

        @NotNull
        public final SignInAdInfoResult c() {
            return this.f49171b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0682c)) {
                return false;
            }
            C0682c c0682c = (C0682c) obj;
            if (Intrinsics.areEqual(this.f49170a, c0682c.f49170a) && Intrinsics.areEqual(this.f49171b, c0682c.f49171b) && Intrinsics.areEqual(this.f49172c, c0682c.f49172c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f49170a;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (((hashCode * 31) + this.f49171b.hashCode()) * 31) + this.f49172c.hashCode();
        }

        @NotNull
        public String toString() {
            return "ClaimCheckInMixedTaskReward(context=" + this.f49170a + ", task=" + this.f49171b + ", placement=" + this.f49172c + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<NewbieWatchBonus> f49173a;

        /* renamed from: b  reason: collision with root package name */
        private final int f49174b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f49175c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull List<NewbieWatchBonus> tasks, int i10, @NotNull String scene) {
            super(null);
            Intrinsics.checkNotNullParameter(tasks, "tasks");
            Intrinsics.checkNotNullParameter(scene, "scene");
            this.f49173a = tasks;
            this.f49174b = i10;
            this.f49175c = scene;
        }

        public final int a() {
            return this.f49174b;
        }

        @NotNull
        public final String b() {
            return this.f49175c;
        }

        @NotNull
        public final List<NewbieWatchBonus> c() {
            return this.f49173a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (Intrinsics.areEqual(this.f49173a, dVar.f49173a) && this.f49174b == dVar.f49174b && Intrinsics.areEqual(this.f49175c, dVar.f49175c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f49173a.hashCode() * 31) + Integer.hashCode(this.f49174b)) * 31) + this.f49175c.hashCode();
        }

        @NotNull
        public String toString() {
            return "DailyWatchTimeTaskReward(tasks=" + this.f49173a + ", lastPayTimePosition=" + this.f49174b + ", scene=" + this.f49175c + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final WatchAdBonusTask f49176a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f49177b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Integer f49178c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull WatchAdBonusTask task, @Nullable String str, @Nullable Integer num) {
            super(null);
            Intrinsics.checkNotNullParameter(task, "task");
            this.f49176a = task;
            this.f49177b = str;
            this.f49178c = num;
        }

        @Nullable
        public final String a() {
            return this.f49177b;
        }

        @Nullable
        public final Integer b() {
            return this.f49178c;
        }

        @NotNull
        public final WatchAdBonusTask c() {
            return this.f49176a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (Intrinsics.areEqual(this.f49176a, eVar.f49176a) && Intrinsics.areEqual(this.f49177b, eVar.f49177b) && Intrinsics.areEqual(this.f49178c, eVar.f49178c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f49176a.hashCode() * 31;
            String str = this.f49177b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode2 + hashCode) * 31;
            Integer num = this.f49178c;
            if (num != null) {
                i10 = num.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "ExchangeWatchAdBonus(task=" + this.f49176a + ", from=" + this.f49177b + ", receiveId=" + this.f49178c + ')';
        }

        public /* synthetic */ e(WatchAdBonusTask watchAdBonusTask, String str, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(watchAdBonusTask, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : num);
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49179a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull String caseId) {
            super(null);
            Intrinsics.checkNotNullParameter(caseId, "caseId");
            this.f49179a = caseId;
        }

        @NotNull
        public final String a() {
            return this.f49179a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof f) && Intrinsics.areEqual(this.f49179a, ((f) obj).f49179a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49179a.hashCode();
        }

        @NotNull
        public String toString() {
            return "QueryCheckInInfo(caseId=" + this.f49179a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final g f49180a = new g();

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
            return -1000951712;
        }

        @NotNull
        public String toString() {
            return "QueryDailyWatchTask";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f49181a;

        public h(@Nullable Context context) {
            super(null);
            this.f49181a = context;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof h) && Intrinsics.areEqual(this.f49181a, ((h) obj).f49181a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            Context context = this.f49181a;
            if (context == null) {
                return 0;
            }
            return context.hashCode();
        }

        @NotNull
        public String toString() {
            return "QuerySignInAdInfo(context=" + this.f49181a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final i f49182a = new i();

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
            return -4089836;
        }

        @NotNull
        public String toString() {
            return "QueryTaskModuleList";
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends c {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49183a;

        public j() {
            this(false, 1, null);
        }

        public final boolean a() {
            return this.f49183a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof j) && this.f49183a == ((j) obj).f49183a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Boolean.hashCode(this.f49183a);
        }

        @NotNull
        public String toString() {
            return "QueryWatchAdBonuses(loading=" + this.f49183a + ')';
        }

        public j(boolean z10) {
            super(null);
            this.f49183a = z10;
        }

        public /* synthetic */ j(boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? true : z10);
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f49184a;

        public k(int i10) {
            super(null);
            this.f49184a = i10;
        }

        public final int a() {
            return this.f49184a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof k) && this.f49184a == ((k) obj).f49184a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f49184a);
        }

        @NotNull
        public String toString() {
            return "RefreshTask(taskType=" + this.f49184a + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class l extends c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f49185a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final SignInAdInfoResult f49186b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(@Nullable Context context, @NotNull SignInAdInfoResult task) {
            super(null);
            Intrinsics.checkNotNullParameter(task, "task");
            this.f49185a = context;
            this.f49186b = task;
        }

        @Nullable
        public final Context a() {
            return this.f49185a;
        }

        @NotNull
        public final SignInAdInfoResult b() {
            return this.f49186b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            if (Intrinsics.areEqual(this.f49185a, lVar.f49185a) && Intrinsics.areEqual(this.f49186b, lVar.f49186b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f49185a;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (hashCode * 31) + this.f49186b.hashCode();
        }

        @NotNull
        public String toString() {
            return "StartCheckInTask(context=" + this.f49185a + ", task=" + this.f49186b + ')';
        }
    }

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class m extends c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f49187a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final WatchAdBonusTask f49188b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(@Nullable Context context, @NotNull WatchAdBonusTask task) {
            super(null);
            Intrinsics.checkNotNullParameter(task, "task");
            this.f49187a = context;
            this.f49188b = task;
        }

        @Nullable
        public final Context a() {
            return this.f49187a;
        }

        @NotNull
        public final WatchAdBonusTask b() {
            return this.f49188b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof m)) {
                return false;
            }
            m mVar = (m) obj;
            if (Intrinsics.areEqual(this.f49187a, mVar.f49187a) && Intrinsics.areEqual(this.f49188b, mVar.f49188b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f49187a;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (hashCode * 31) + this.f49188b.hashCode();
        }

        @NotNull
        public String toString() {
            return "StartTask(context=" + this.f49187a + ", task=" + this.f49188b + ')';
        }
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private c() {
    }
}
