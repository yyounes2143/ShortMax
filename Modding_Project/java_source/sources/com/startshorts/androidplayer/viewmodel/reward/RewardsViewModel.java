package com.startshorts.androidplayer.viewmodel.reward;

import android.content.Context;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.ad.WatchAdBonusTask;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.checkin.SignInAdInfoResult;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.reward.a;
import com.startshorts.androidplayer.viewmodel.reward.c;
import com.startshorts.androidplayer.viewmodel.reward.d;
import com.startshorts.androidplayer.viewmodel.reward.j;
import com.startshorts.androidplayer.viewmodel.reward.k;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RewardsViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f49086m = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<com.startshorts.androidplayer.viewmodel.reward.a> f49087e = new MutableLiveData<>();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<k> f49088f = new MutableLiveData<>();
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final MutableLiveData<j> f49089g = new MutableLiveData<>();
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final MutableLiveData<d> f49090h = new MutableLiveData<>();
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final MutableLiveData<b> f49091i = new MutableLiveData<>();
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final MutableLiveData<i> f49092j = new MutableLiveData<>();
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final MutableLiveData<i> f49093k = new MutableLiveData<>();
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f49094l;

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final r A(Context context, String str, int i10, int i11, String str2) {
        return BaseViewModel.i(this, "acceptTaskReward", false, new RewardsViewModel$acceptTaskReward$1(context, str, this, i10, i11, str2, null), 2, null);
    }

    private final r D(Context context, int i10, String str, int i11, String str2, boolean z10) {
        return BaseViewModel.i(this, "checkIn", false, new RewardsViewModel$checkIn$1(context, str, this, i11, str2, i10, z10, null), 2, null);
    }

    private final r E(Context context, SignInAdInfoResult signInAdInfoResult, String str) {
        return BaseViewModel.i(this, "claimCheckInMixedTaskReward", false, new RewardsViewModel$claimCheckInMixedTaskReward$1(context, signInAdInfoResult, this, str, null), 2, null);
    }

    private final r F(List<NewbieWatchBonus> list, int i10, String str) {
        return BaseViewModel.i(this, "dailyWatchTimeTaskReward", false, new RewardsViewModel$dailyWatchTimeTaskReward$1(list, this, str, i10, null), 2, null);
    }

    private final r G(WatchAdBonusTask watchAdBonusTask, String str, Integer num) {
        return BaseViewModel.i(this, "exchangeWatchAdBonus", false, new RewardsViewModel$exchangeWatchAdBonusTask$1(watchAdBonusTask, num, this, str, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P() {
        bf.e eVar = bf.e.f2616a;
        eVar.j().i();
        if (eVar.j().h()) {
            o.b(this.f49090h, d.a.f49189a);
        }
    }

    private final void R(String str) {
        o.b(this.f49087e, a.d.f49152a);
        BaseViewModel.i(this, "queryCheckInInfo", false, new RewardsViewModel$queryCheckInInfo$1(str, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final r S() {
        return BaseViewModel.i(this, "queryDailyWatchTask", false, new RewardsViewModel$queryDailyWatchTask$1(this, null), 2, null);
    }

    private final void T() {
        BaseViewModel.i(this, "querySignInAdInfo", false, new RewardsViewModel$querySignInAdInfo$1(this, null), 2, null);
    }

    private final r U() {
        return BaseViewModel.i(this, "queryTaskList", false, new RewardsViewModel$queryTaskList$1(this, null), 2, null);
    }

    private final r V(boolean z10) {
        return BaseViewModel.i(this, "queryWatchAdBonusesTask", false, new RewardsViewModel$queryWatchAdBonuses$1(z10, this, null), 2, null);
    }

    private final r Y(Context context, SignInAdInfoResult signInAdInfoResult) {
        return BaseViewModel.i(this, "startCheckInTask", false, new RewardsViewModel$startCheckInTask$1(context, signInAdInfoResult, this, null), 2, null);
    }

    private final r Z(Context context, WatchAdBonusTask watchAdBonusTask) {
        return BaseViewModel.i(this, "startTask", false, new RewardsViewModel$startTask$1(context, watchAdBonusTask, this, null), 2, null);
    }

    @Nullable
    public final String H() {
        return this.f49094l;
    }

    @NotNull
    public final MutableLiveData<com.startshorts.androidplayer.viewmodel.reward.a> I() {
        return this.f49087e;
    }

    @NotNull
    public final MutableLiveData<b> J() {
        return this.f49091i;
    }

    @NotNull
    public final MutableLiveData<d> K() {
        return this.f49090h;
    }

    @NotNull
    public final MutableLiveData<i> L() {
        return this.f49093k;
    }

    @NotNull
    public final MutableLiveData<i> M() {
        return this.f49092j;
    }

    @NotNull
    public final MutableLiveData<j> N() {
        return this.f49089g;
    }

    @NotNull
    public final MutableLiveData<k> O() {
        return this.f49088f;
    }

    public final void Q(@NotNull c rewardsIntent) {
        Intrinsics.checkNotNullParameter(rewardsIntent, "rewardsIntent");
        if (rewardsIntent instanceof c.f) {
            R(((c.f) rewardsIntent).a());
            Unit unit = Unit.f60915a;
        } else if (rewardsIntent instanceof c.b) {
            c.b bVar = (c.b) rewardsIntent;
            D(bVar.c(), bVar.f(), bVar.d(), bVar.b(), bVar.e(), bVar.a());
        } else if (rewardsIntent instanceof c.h) {
            T();
            Unit unit2 = Unit.f60915a;
        } else if (rewardsIntent instanceof c.j) {
            V(((c.j) rewardsIntent).a());
        } else if (rewardsIntent instanceof c.e) {
            c.e eVar = (c.e) rewardsIntent;
            G(eVar.c(), eVar.a(), eVar.b());
        } else if (rewardsIntent instanceof c.C0682c) {
            c.C0682c c0682c = (c.C0682c) rewardsIntent;
            E(c0682c.a(), c0682c.c(), c0682c.b());
        } else if (rewardsIntent instanceof c.i) {
            U();
        } else if (rewardsIntent instanceof c.a) {
            c.a aVar = (c.a) rewardsIntent;
            A(aVar.b(), aVar.d(), aVar.e(), aVar.a(), aVar.c());
        } else if (rewardsIntent instanceof c.k) {
            o.b(this.f49089g, new j.e(((c.k) rewardsIntent).a()));
            Unit unit3 = Unit.f60915a;
        } else if (rewardsIntent instanceof c.d) {
            c.d dVar = (c.d) rewardsIntent;
            F(dVar.c(), dVar.a(), dVar.b());
        } else if (rewardsIntent instanceof c.g) {
            S();
        } else if (rewardsIntent instanceof c.m) {
            c.m mVar = (c.m) rewardsIntent;
            Z(mVar.a(), mVar.b());
        } else if (rewardsIntent instanceof c.l) {
            c.l lVar = (c.l) rewardsIntent;
            Y(lVar.a(), lVar.b());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final void W(@NotNull LifecycleOwner liveCircleOwner) {
        Intrinsics.checkNotNullParameter(liveCircleOwner, "liveCircleOwner");
        w();
        this.f49087e.removeObservers(liveCircleOwner);
        this.f49087e.setValue(a.d.f49152a);
        this.f49088f.removeObservers(liveCircleOwner);
        this.f49088f.setValue(k.g.f49214a);
        this.f49089g.removeObservers(liveCircleOwner);
        this.f49089g.setValue(j.h.f49202a);
        this.f49091i.removeObservers(liveCircleOwner);
        this.f49092j.removeObservers(liveCircleOwner);
        this.f49093k.removeObservers(liveCircleOwner);
    }

    public final void X(@Nullable String str) {
        this.f49094l = str;
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "RewardViewModel";
    }
}
