package com.startshorts.androidplayer.viewmodel.ranking;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.ranking.RankingViewModel;
import com.startshorts.androidplayer.viewmodel.ranking.a;
import com.startshorts.androidplayer.viewmodel.ranking.b;
import fk.x;
import jk.o;
import jk.z;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RankingViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RankingViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final x f49058e = new x(20);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<b> f49059f = new MutableLiveData<>();

    private final void E(final int i10, int i11, int i12, int i13, Integer num) {
        BaseViewModel.j(this, "queryRankList", false, new RankingViewModel$queryNextPage$1(i13, num, i11, i12, this, i10, null), new Function1() { // from class: bl.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit F;
                F = RankingViewModel.F(RankingViewModel.this, i10, (String) obj);
                return F;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(RankingViewModel rankingViewModel, int i10, String str) {
        rankingViewModel.f49058e.f();
        o.b(rankingViewModel.f49059f, new b.a(i10, rankingViewModel.p(z.a(new Throwable(str)))));
        return Unit.f60915a;
    }

    @NotNull
    public final MutableLiveData<b> B() {
        return this.f49059f;
    }

    @NotNull
    public final x C() {
        return this.f49058e;
    }

    public final void D(@NotNull a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.C0677a) {
            a.C0677a c0677a = (a.C0677a) intent;
            E(c0677a.d(), c0677a.a(), this.f49058e.c(), c0677a.b(), c0677a.c());
            return;
        }
        throw new NoWhenBranchMatchedException();
    }
}
