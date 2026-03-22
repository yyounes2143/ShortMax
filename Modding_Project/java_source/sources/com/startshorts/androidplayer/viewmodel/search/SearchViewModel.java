package com.startshorts.androidplayer.viewmodel.search;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.search.SearchRankingResultV2;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.search.c;
import com.startshorts.androidplayer.viewmodel.search.d;
import java.util.ArrayList;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SearchViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f49288h = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<d> f49289e = new MutableLiveData<>(new d.a(new SearchRankingResultV2(new ArrayList(), null, null), false));
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private r f49290f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private r f49291g;

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public SearchViewModel() {
        B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        r rVar = this.f49290f;
        if (rVar != null && rVar.isActive()) {
            Logger.f41511a.h("SearchViewModel", "fetchPopularList is running, return");
        } else {
            this.f49290f = BaseViewModel.i(this, "fetchPopularList", false, new SearchViewModel$fetchPopularAndRanking$1(this, null), 2, null);
        }
    }

    private final r D() {
        return BaseViewModel.i(this, "goToInitState", false, new SearchViewModel$goToInitState$1(this, null), 2, null);
    }

    private final void F(String str, Long l10) {
        o.b(this.f49289e, new d.f(str));
        BaseViewModel.i(this, "searchExactly " + str, false, new SearchViewModel$searchExactly$1(l10, str, this, null), 2, null);
    }

    private final void G(String str, int i10, int i11) {
        o.b(this.f49289e, new d.C0688d(str));
        BaseViewModel.i(this, "searchExactlyMore keyword=" + str + ",pageNumberForRequest=" + i10, false, new SearchViewModel$searchExactlyMore$1(str, i10, i11, this, null), 2, null);
    }

    private final void H(String str) {
        r rVar = this.f49291g;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        if (StringsKt.t0(str)) {
            o.b(this.f49289e, new d.j(CollectionsKt.n()));
        } else if (!AccountRepo.f43052a.w0()) {
        } else {
            this.f49289e.setValue(new d.i(str));
            this.f49291g = BaseViewModel.i(this, "searchFuzzy " + str, false, new SearchViewModel$searchFuzzy$1(str, this, null), 2, null);
        }
    }

    @NotNull
    public final MutableLiveData<d> C() {
        return this.f49289e;
    }

    public final void E(@NotNull c intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof c.a) {
            D();
        } else if (intent instanceof c.d) {
            H(((c.d) intent).a());
        } else if (intent instanceof c.b) {
            c.b bVar = (c.b) intent;
            F(bVar.a(), bVar.b());
        } else if (intent instanceof c.C0687c) {
            c.C0687c c0687c = (c.C0687c) intent;
            G(c0687c.a(), c0687c.b(), c0687c.c());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "SearchViewModel";
    }
}
