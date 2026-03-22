package com.startshorts.androidplayer.viewmodel.shorts;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsListResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.shorts.ShortsRepo;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.shorts.ShortsViewModel;
import com.startshorts.androidplayer.viewmodel.shorts.a;
import com.startshorts.androidplayer.viewmodel.shorts.b;
import java.util.ArrayList;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsViewModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nShortsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,310:1\n1863#2,2:311\n*S KotlinDebug\n*F\n+ 1 ShortsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel\n*L\n248#1:311,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ShortsViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f49364k = new a(null);

    /* renamed from: h  reason: collision with root package name */
    private boolean f49368h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private r f49369i;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f49365e = c.b(new Function0() { // from class: hl.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData Y;
            Y = ShortsViewModel.Y();
            return Y;
        }
    });

    /* renamed from: f  reason: collision with root package name */
    private boolean f49366f = true;

    /* renamed from: g  reason: collision with root package name */
    private boolean f49367g = true;

    /* renamed from: j  reason: collision with root package name */
    private int f49370j = 1;

    /* compiled from: ShortsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void H(int i10, List<ShortsEpisode> list) {
        int i11 = 0;
        for (ShortsEpisode shortsEpisode : list) {
            if (shortsEpisode.fromRecommendPool()) {
                shortsEpisode.setRound(this.f49370j);
                shortsEpisode.setPageNumber(i10);
                shortsEpisode.setIndex(i11);
                i11++;
            }
        }
    }

    private final void I() {
        r rVar = this.f49369i;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f49369i = null;
    }

    private final void K(List<ShortsEpisode> list, boolean z10, int i10, int i11, boolean z11) {
        if (!z11) {
            M(z10, i10, i11);
            return;
        }
        List<ShortsEpisode> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            c0(list, i10);
        } else {
            M(true, i10, i11);
        }
    }

    private final void L(boolean z10, int i10, int i11) {
        f("handleRefreshShorts failed -> pageNumber(" + i10 + ") pageSize(" + i11 + ") errMsg(retry one time and still empty data)");
        e0(false, new ArrayList());
    }

    private final void M(boolean z10, int i10, int i11) {
        e0(false, null);
        f("handleMoreShorts failed -> pageNumber(" + i10 + ") pageSize(" + i11 + ") errMsg(retry one time and still empty data)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(ResponseException responseException) {
        this.f49368h = false;
        if (this.f49366f) {
            this.f49366f = false;
            ArrayList arrayList = new ArrayList();
            if (arrayList.isEmpty()) {
                x(responseException);
                return;
            } else {
                e0(false, arrayList);
                return;
            }
        }
        x(responseException);
    }

    private final void O(List<ShortsEpisode> list, boolean z10, int i10, int i11, boolean z11) {
        if (!z11) {
            L(z10, i10, i11);
            return;
        }
        List<ShortsEpisode> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            b0(list, i10, i11);
        } else {
            L(true, i10, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(Object obj, boolean z10, int i10, int i11) {
        Integer num;
        Integer num2;
        Object obj2;
        Object obj3;
        if (Result.j(obj)) {
            ShortsListResult shortsListResult = (ShortsListResult) obj;
            ShortsRepo shortsRepo = ShortsRepo.f44606a;
            List<ShortsEpisode> list = null;
            if (shortsListResult != null) {
                num = shortsListResult.getLastShortPlayId();
            } else {
                num = null;
            }
            shortsRepo.w(num);
            if (shortsListResult != null) {
                num2 = shortsListResult.getConsecutiveTimes();
            } else {
                num2 = null;
            }
            shortsRepo.v(num2);
            boolean z11 = false;
            this.f49368h = false;
            if (this.f49366f) {
                if (Result.i(obj)) {
                    obj3 = null;
                } else {
                    obj3 = obj;
                }
                ShortsListResult shortsListResult2 = (ShortsListResult) obj3;
                if (shortsListResult2 != null) {
                    list = shortsListResult2.getForYouList();
                }
                List<ShortsEpisode> list2 = list;
                if (shortsListResult != null) {
                    z11 = shortsListResult.getHasMore();
                }
                O(list2, z10, i10, i11, z11);
            } else {
                if (i10 == 1) {
                    this.f49370j++;
                    v("mRound updated -> " + this.f49370j);
                }
                if (Result.i(obj)) {
                    obj2 = null;
                } else {
                    obj2 = obj;
                }
                ShortsListResult shortsListResult3 = (ShortsListResult) obj2;
                if (shortsListResult3 != null) {
                    list = shortsListResult3.getForYouList();
                }
                List<ShortsEpisode> list3 = list;
                if (shortsListResult != null) {
                    z11 = shortsListResult.getHasMore();
                }
                K(list3, z10, i10, i11, z11);
            }
        }
        Throwable g10 = Result.g(obj);
        if (g10 != null) {
            ResponseException s10 = s(g10);
            N(s10);
            EventManager.f42463a.m0(s10, "shorts");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean Q() {
        if (!this.f49366f || !this.f49367g) {
            return false;
        }
        this.f49367g = false;
        return true;
    }

    private final void R(final int i10, final int i11, final boolean z10) {
        v("loadEpisodes -> mFirstLoad(" + this.f49366f + ") mEpisodeRequesting(" + this.f49368h + ") pageNumber(" + i10 + ") pageSize(" + i11 + ") retry(" + z10 + ')');
        if (this.f49368h) {
            return;
        }
        this.f49368h = true;
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = i10;
        ShortsRepo shortsRepo = ShortsRepo.f44606a;
        if (shortsRepo.h()) {
            shortsRepo.x(new Function1() { // from class: hl.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit U;
                    U = ShortsViewModel.U(ShortsViewModel.this, z10, i10, i11, (Result) obj);
                    return U;
                }
            });
        } else {
            BaseViewModel.j(this, "loadEpisodes", false, new ShortsViewModel$loadEpisodes$2(intRef, this, z10, i10, i11, null), new Function1() { // from class: hl.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit W;
                    W = ShortsViewModel.W(ShortsViewModel.this, (String) obj);
                    return W;
                }
            }, 2, null);
        }
    }

    private final void S(boolean z10, List<ShortsEpisode> list, int i10, int i11) {
        int i12;
        int o10;
        if (list != null) {
            i12 = list.size();
        } else {
            i12 = 0;
        }
        if (!z10) {
            ShortsRepo shortsRepo = ShortsRepo.f44606a;
            shortsRepo.t();
            o10 = shortsRepo.o();
        } else {
            o10 = ShortsRepo.f44606a.o() + 1;
        }
        int i13 = o10;
        v("loadEpisodes -> loadMore(" + z10 + ") nextPageNumber(" + i13 + ") currentPosition(" + i10 + ") itemCount(" + i12 + ')');
        T(this, i13, i11, false, 4, null);
    }

    static /* synthetic */ void T(ShortsViewModel shortsViewModel, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        shortsViewModel.R(i10, i11, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U(final ShortsViewModel shortsViewModel, boolean z10, int i10, int i11, Result result) {
        BaseViewModel.j(shortsViewModel, "handleRequestResult", false, new ShortsViewModel$loadEpisodes$1$1(shortsViewModel, result, z10, i10, i11, null), new Function1() { // from class: hl.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit V;
                V = ShortsViewModel.V(ShortsViewModel.this, (String) obj);
                return V;
            }
        }, 2, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V(ShortsViewModel shortsViewModel, String str) {
        shortsViewModel.N(shortsViewModel.r(str));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W(ShortsViewModel shortsViewModel, String str) {
        shortsViewModel.N(shortsViewModel.r(str));
        return Unit.f60915a;
    }

    private final void X(int i10, int i11) {
        int i12 = i10 + 1;
        f("handleShorts failed -> list is empty, load next page(" + i12 + ')');
        Logger logger = Logger.f41511a;
        logger.h("Feed_Check_New_Test", "loadNextPage pageNumber -> " + i12 + " lastWatchIndex -> -1 pageSize -> " + i11);
        ShortsRepo.f44606a.u(i12, -1);
        R(i12, i11, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData Y() {
        return new MutableLiveData();
    }

    private final void Z(ShortsEpisode shortsEpisode) {
        I();
        this.f49369i = BaseViewModel.i(this, "preloadNextEpisodeForImmersion", false, new ShortsViewModel$preloadNextEpisodeForImmersion$1(shortsEpisode, null), 2, null);
    }

    private final void b0(List<ShortsEpisode> list, int i10, int i11) {
        H(i10, list);
        if (!list.isEmpty()) {
            this.f49366f = false;
            e0(false, list);
            return;
        }
        X(i10, i11);
    }

    private final void c0(List<ShortsEpisode> list, int i10) {
        H(i10, list);
        e0(true, list);
    }

    private final void e0(boolean z10, List<ShortsEpisode> list) {
        o.b(J(), new b.a(list));
    }

    @NotNull
    public final MutableLiveData<b> J() {
        return (MutableLiveData) this.f49365e.getValue();
    }

    public final void a0(@NotNull com.startshorts.androidplayer.viewmodel.shorts.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.b) {
            a.b bVar = (a.b) intent;
            S(bVar.c(), bVar.b(), bVar.a(), bVar.d());
        } else if (intent instanceof a.c) {
            Z(((a.c) intent).a());
        } else if (intent instanceof a.C0691a) {
            I();
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final void d0() {
        v("resetFirstLoad");
        this.f49366f = true;
        ShortsRepo.f44606a.d();
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "ShortsViewModel";
    }
}
