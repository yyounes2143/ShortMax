package com.startshorts.androidplayer.viewmodel.discover;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.PlayListDiscoverRanking;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.discover.RankingTabViewModel;
import com.startshorts.androidplayer.viewmodel.discover.g;
import com.startshorts.androidplayer.viewmodel.discover.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jk.o;
import jk.z;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverRankingTabViewModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverRankingTabViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingTabViewModel.kt\ncom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n360#2,7:106\n*S KotlinDebug\n*F\n+ 1 DiscoverRankingTabViewModel.kt\ncom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel\n*L\n94#1:106,7\n*E\n"})
/* loaded from: classes7.dex */
public final class RankingTabViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f48488h = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f48489e = "RankingTabViewModel";
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<h> f48490f = new MutableLiveData<>();
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private DiscoverModule f48491g;

    /* compiled from: DiscoverRankingTabViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void F(int i10) {
        BaseViewModel.j(this, "queryRankingTabData", false, new RankingTabViewModel$queryRankingTabData$1(i10, this, null), new Function1() { // from class: tk.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit G;
                G = RankingTabViewModel.G(RankingTabViewModel.this, (String) obj);
                return G;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(RankingTabViewModel rankingTabViewModel, String str) {
        o.b(rankingTabViewModel.f48490f, new h.a(rankingTabViewModel.p(z.a(new Throwable(str)))));
        return Unit.f60915a;
    }

    @Nullable
    public final List<DiscoverShorts> B(int i10) {
        PlayListDiscoverRanking playListDiscoverRanking;
        List<PlayListDiscoverRanking> rankingResponseList;
        Object obj;
        DiscoverModule discoverModule = this.f48491g;
        if (discoverModule != null && (rankingResponseList = discoverModule.getRankingResponseList()) != null) {
            Iterator<T> it = rankingResponseList.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    Integer rankingId = ((PlayListDiscoverRanking) obj).getRankingId();
                    if (rankingId != null && rankingId.intValue() == i10) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            playListDiscoverRanking = (PlayListDiscoverRanking) obj;
        } else {
            playListDiscoverRanking = null;
        }
        if (playListDiscoverRanking == null) {
            return null;
        }
        return playListDiscoverRanking.getShortPlayResponseList();
    }

    @Nullable
    public final DiscoverModule C() {
        return this.f48491g;
    }

    @NotNull
    public final MutableLiveData<h> D() {
        return this.f48490f;
    }

    public final void E(@NotNull g intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof g.a) {
            F(((g.a) intent).a());
            return;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void H(@Nullable DiscoverModule discoverModule) {
        this.f48491g = discoverModule;
    }

    public final void I(int i10, @Nullable List<DiscoverShorts> list) {
        DiscoverRanking discoverRanking;
        List<PlayListDiscoverRanking> arrayList;
        List<DiscoverRanking> rankingNameList;
        Object obj;
        DiscoverModule discoverModule = this.f48491g;
        if (discoverModule == null) {
            return;
        }
        Integer num = null;
        if (discoverModule != null && (rankingNameList = discoverModule.getRankingNameList()) != null) {
            Iterator<T> it = rankingNameList.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    Integer id2 = ((DiscoverRanking) obj).getId();
                    if (id2 != null && id2.intValue() == i10) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            discoverRanking = (DiscoverRanking) obj;
        } else {
            discoverRanking = null;
        }
        DiscoverModule discoverModule2 = this.f48491g;
        if (discoverModule2 == null || (arrayList = discoverModule2.getRankingResponseList()) == null) {
            arrayList = new ArrayList<>();
        }
        if (discoverRanking != null) {
            num = discoverRanking.getId();
        }
        PlayListDiscoverRanking playListDiscoverRanking = new PlayListDiscoverRanking(num, (discoverRanking == null || (r1 = discoverRanking.getName()) == null) ? "" : "", Boolean.valueOf(discoverModule.isShowMore()), discoverModule.getRecommendId(), discoverModule.getBannerId(), list);
        Iterator<PlayListDiscoverRanking> it2 = arrayList.iterator();
        int i11 = 0;
        while (true) {
            if (it2.hasNext()) {
                Integer rankingId = it2.next().getRankingId();
                if (rankingId != null && rankingId.intValue() == i10) {
                    break;
                }
                i11++;
            } else {
                i11 = -1;
                break;
            }
        }
        if (i11 == -1) {
            arrayList.add(playListDiscoverRanking);
        } else {
            arrayList.set(i11, playListDiscoverRanking);
        }
        DiscoverModule discoverModule3 = this.f48491g;
        if (discoverModule3 != null) {
            discoverModule3.setRankingResponseList(arrayList);
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return this.f48489e;
    }
}
