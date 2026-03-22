package com.startshorts.androidplayer.ui.activity.search;

import android.graphics.Rect;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.search.SearchModuleAdapter;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.eventbus.RefreshCollectListEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.search.EpisodeSearchResult;
import com.startshorts.androidplayer.bean.search.RedeemCode;
import com.startshorts.androidplayer.bean.search.SearchKey;
import com.startshorts.androidplayer.bean.search.SearchModule;
import com.startshorts.androidplayer.bean.search.SearchRankingResultV2;
import com.startshorts.androidplayer.bean.search.SearchResult;
import com.startshorts.androidplayer.bean.search.YouMightLikeKey;
import com.startshorts.androidplayer.bean.tip.Builder;
import com.startshorts.androidplayer.databinding.ActivitySearchBinding;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.redpoint.RedPointManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.base.RefreshActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.activity.search.SearchActivity;
import com.startshorts.androidplayer.ui.view.base.BaseEditText;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.search.SearchHistoryViewModel;
import com.startshorts.androidplayer.viewmodel.search.SearchViewModel;
import com.startshorts.androidplayer.viewmodel.search.a;
import com.startshorts.androidplayer.viewmodel.search.b;
import com.startshorts.androidplayer.viewmodel.search.c;
import com.startshorts.androidplayer.viewmodel.search.d;
import fk.z;
import gt.q0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import jk.b0;
import jk.g;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import ms.f;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.h;
/* compiled from: SearchActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSearchActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchActivity.kt\ncom/startshorts/androidplayer/ui/activity/search/SearchActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,883:1\n1872#2,3:884\n1863#2,2:888\n1863#2,2:890\n1755#2,3:892\n1557#2:895\n1628#2,3:896\n1#3:887\n*S KotlinDebug\n*F\n+ 1 SearchActivity.kt\ncom/startshorts/androidplayer/ui/activity/search/SearchActivity\n*L\n507#1:884,3\n581#1:888,2\n606#1:890,2\n798#1:892,3\n294#1:895\n294#1:896,3\n*E\n"})
/* loaded from: classes7.dex */
public final class SearchActivity extends RefreshActivity<SearchModule, ActivitySearchBinding> {
    @NotNull
    public static final a V = new a(null);
    @NotNull
    private static final i<Integer> W = kotlin.c.b(new Function0() { // from class: bi.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int a12;
            a12 = SearchActivity.a1();
            return Integer.valueOf(a12);
        }
    });
    @NotNull
    private static final i<Integer> X = kotlin.c.b(new Function0() { // from class: bi.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int b12;
            b12 = SearchActivity.b1();
            return Integer.valueOf(b12);
        }
    });
    @Nullable
    private SearchKey I;
    @NotNull
    private final SearchModule.SearchHistoryModule J;
    @NotNull
    private final i K;
    @NotNull
    private final i L;
    @NotNull
    private final i M;
    @NotNull
    private final i N;
    private boolean O;
    @NotNull
    private final i P;
    @Nullable
    private ViewTreeObserver.OnGlobalLayoutListener Q;
    private boolean R;
    @NotNull
    private String S;
    @Nullable
    private String T;
    @Nullable
    private hi.b U;

    /* compiled from: SearchActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int b() {
            return ((Number) SearchActivity.W.getValue()).intValue();
        }

        private a() {
        }
    }

    /* compiled from: SearchActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements SearchModuleAdapter.d {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f45478b;

        b(SearchModuleAdapter searchModuleAdapter) {
            this.f45478b = searchModuleAdapter;
        }
    }

    /* compiled from: SearchActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements BaseAdapter.b<SearchModule> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f45480b;

        c(SearchModuleAdapter searchModuleAdapter) {
            this.f45480b = searchModuleAdapter;
        }

        public final void b(EpisodeSearchResult info) {
            Intrinsics.checkNotNullParameter(info, "info");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(info.getUpack())) {
                bundle.putString("upack", info.getUpack());
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "search_all_click", bundle, 0L, 4, null);
            SearchActivity.O1(SearchActivity.this, info, "all_search", null, 4, null);
            if (SearchActivity.this.l1().C().getValue() instanceof d.b) {
                Bundle bundle2 = new Bundle();
                SearchModuleAdapter searchModuleAdapter = this.f45480b;
                bundle2.putString("type", "no_result");
                bundle2.putString("reel_id", info.getShortPlayCode());
                if (!TextUtils.isEmpty(searchModuleAdapter.X())) {
                    bundle2.putString("query", searchModuleAdapter.X());
                }
                if (!TextUtils.isEmpty(info.getUpack())) {
                    bundle2.putString("upack", info.getUpack());
                }
                EventManager.s0(eventManager, "search_result_click", bundle2, 0L, 4, null);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: c */
        public void a(View v10, SearchModule d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            if (d10 instanceof SearchModule.PopularEpisodeModule) {
                b(((SearchModule.PopularEpisodeModule) d10).getInfo());
            } else if (d10 instanceof SearchModule.PopularTitleModule) {
                b(((SearchModule.PopularTitleModule) d10).getInfo());
            } else if (d10 instanceof SearchModule.ExactlyEpisodeModule) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                SearchModuleAdapter searchModuleAdapter = this.f45480b;
                bundle.putString("type", "have_result");
                SearchModule.ExactlyEpisodeModule exactlyEpisodeModule = (SearchModule.ExactlyEpisodeModule) d10;
                bundle.putString("reel_id", exactlyEpisodeModule.getInfo().getShortPlayCode());
                if (!TextUtils.isEmpty(searchModuleAdapter.X())) {
                    bundle.putString("query", searchModuleAdapter.X());
                }
                if (!TextUtils.isEmpty(exactlyEpisodeModule.getInfo().getUpack())) {
                    bundle.putString("upack", exactlyEpisodeModule.getInfo().getUpack());
                }
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "search_result_click", bundle, 0L, 4, null);
                SearchActivity.O1(SearchActivity.this, exactlyEpisodeModule.getInfo(), "search_result", null, 4, null);
            } else if (d10 instanceof SearchModule.FuzzyEpisodeModule) {
                EventManager eventManager2 = EventManager.f42463a;
                EventManager.s0(eventManager2, "fuzzy_search_click", null, 0L, 6, null);
                Bundle bundle2 = new Bundle();
                bundle2.putString("type", "input");
                SearchModule.FuzzyEpisodeModule fuzzyEpisodeModule = (SearchModule.FuzzyEpisodeModule) d10;
                bundle2.putString("content", fuzzyEpisodeModule.getInfo().getShortPlayName());
                if (!TextUtils.isEmpty(fuzzyEpisodeModule.getInfo().getUpack())) {
                    bundle2.putString("upack", fuzzyEpisodeModule.getInfo().getUpack());
                }
                Unit unit2 = Unit.f60915a;
                EventManager.s0(eventManager2, "search_page_click", bundle2, 0L, 4, null);
                SearchActivity.O1(SearchActivity.this, fuzzyEpisodeModule.getInfo(), "realtime_search", null, 4, null);
            } else if (d10 instanceof SearchModule.NetworkErrorModule) {
                SearchActivity.this.I1(false);
            }
        }
    }

    /* compiled from: SearchActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SearchActivity.this.k1().B(a.b.f49309a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45482a;

        e(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45482a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final f<?> getFunctionDelegate() {
            return this.f45482a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45482a.invoke(obj);
        }
    }

    public SearchActivity() {
        SearchModule.SearchHistoryModule searchHistoryModule = SearchModule.SearchHistoryModule.INSTANCE;
        searchHistoryModule.setTopMargin(z.f51786a.g());
        this.J = searchHistoryModule;
        this.K = kotlin.c.b(new Function0() { // from class: bi.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ViewModelProvider H1;
                H1 = SearchActivity.H1(SearchActivity.this);
                return H1;
            }
        });
        this.L = kotlin.c.b(new Function0() { // from class: bi.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SearchHistoryViewModel F1;
                F1 = SearchActivity.F1(SearchActivity.this);
                return F1;
            }
        });
        this.M = kotlin.c.b(new Function0() { // from class: bi.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SearchViewModel G1;
                G1 = SearchActivity.G1(SearchActivity.this);
                return G1;
            }
        });
        this.N = kotlin.c.b(new Function0() { // from class: bi.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                InputMethodManager D1;
                D1 = SearchActivity.D1(SearchActivity.this);
                return D1;
            }
        });
        this.P = kotlin.c.b(new Function0() { // from class: bi.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                vf.a E1;
                E1 = SearchActivity.E1();
                return E1;
            }
        });
        this.S = "";
        this.T = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A1(SearchActivity searchActivity, View view) {
        searchActivity.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B1(SearchActivity searchActivity, View view) {
        J1(searchActivity, false, 1, null);
    }

    private final void C1() {
        SearchKey searchKey;
        this.T = getIntent().getStringExtra("from");
        String stringExtra = getIntent().getStringExtra("recommended_search_param");
        if (stringExtra != null) {
            searchKey = (SearchKey) l.b(stringExtra, SearchKey.class);
        } else {
            searchKey = null;
        }
        this.I = searchKey;
        s("loadParams -> mRecommendedSearchInfo = " + this.I);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InputMethodManager D1(SearchActivity searchActivity) {
        Object systemService = searchActivity.getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        return (InputMethodManager) systemService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vf.a E1() {
        return new vf.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchHistoryViewModel F1(SearchActivity searchActivity) {
        return (SearchHistoryViewModel) searchActivity.m1().get(SearchHistoryViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchViewModel G1(SearchActivity searchActivity) {
        return (SearchViewModel) searchActivity.m1().get(SearchViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider H1(SearchActivity searchActivity) {
        return new ViewModelProvider(searchActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I1(boolean z10) {
        boolean z11;
        String str;
        String valueOf = String.valueOf(((ActivitySearchBinding) E()).f38459g.getText());
        this.S = StringsKt.v1(valueOf).toString();
        RecyclerView.Adapter<?> d02 = d0();
        Intrinsics.checkNotNull(d02, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.search.SearchModuleAdapter");
        ((SearchModuleAdapter) d02).c0(this.S);
        if (valueOf.length() > 0 && this.S.length() == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        SearchKey searchKey = this.I;
        if (this.S.length() == 0) {
            if (!z11 && searchKey != null) {
                n1();
                String key = searchKey.getKey();
                if (key == null) {
                    key = "";
                }
                L1(key);
                str = "recommend";
            } else {
                x(R$string.search_activity_input_keyword_hint);
                str = DevicePublicKeyStringDef.NONE;
            }
        } else {
            String str2 = this.S;
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            String lowerCase = str2.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (StringsKt.V(lowerCase, "tv", false, 2, null)) {
                L1(valueOf);
                str = "redeem";
            } else {
                L1(valueOf);
                str = "input";
            }
        }
        if (z10) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("type", str);
            if (this.S.length() == 0) {
                if (!z11 && searchKey != null) {
                    bundle.putString("content", searchKey.getKey());
                }
            } else {
                bundle.putString("content", this.S);
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "search_page_click", bundle, 0L, 4, null);
        }
    }

    static /* synthetic */ void J1(SearchActivity searchActivity, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        searchActivity.I1(z10);
    }

    private final void K1() {
        ViewTreeObserver viewTreeObserver = getWindow().getDecorView().getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeOnGlobalLayoutListener(this.Q);
        }
    }

    private final void L1(String str) {
        Long l10;
        n1();
        this.S = str;
        RecyclerView.Adapter<?> d02 = d0();
        Intrinsics.checkNotNull(d02, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.search.SearchModuleAdapter");
        ((SearchModuleAdapter) d02).c0(this.S);
        if (!j1().b(str)) {
            return;
        }
        com.startshorts.androidplayer.viewmodel.search.d value = l1().C().getValue();
        if ((value instanceof d.b) && ((d.b) value).c()) {
            l10 = 1000L;
        } else {
            l10 = null;
        }
        s("searchExactly -> keyword = " + str);
        l1().E(new c.b(str, l10));
        String obj = StringsKt.v1(str).toString();
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String lowerCase = obj.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        int i10 = 0;
        if (!StringsKt.V(lowerCase, "tv", false, 2, null)) {
            k1().B(new a.C0685a(str));
        }
        BaseEditText baseEditText = ((ActivitySearchBinding) E()).f38459g;
        baseEditText.setText(str);
        Editable text = baseEditText.getText();
        if (text != null) {
            i10 = text.length();
        }
        baseEditText.setSelection(i10);
    }

    private final void M1(RedeemCode redeemCode, boolean z10) {
        au.c.d().l(new RefreshCollectListEvent());
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("redeem");
        immersionParams.setType(3);
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(redeemCode.getShortPlayId());
        immersionShortsInfo.setShortPlayCode(redeemCode.getShortPlayCode());
        immersionShortsInfo.setUpack(redeemCode.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        if (z10) {
            immersionParams.setRedeemCode(redeemCode);
        }
        Unit unit = Unit.f60915a;
        aVar.a(this, immersionParams);
    }

    private final void N1(EpisodeSearchResult episodeSearchResult, String str, ModuleInfo moduleInfo) {
        if (Intrinsics.areEqual(str, "directly_search")) {
            SearchHistoryViewModel k12 = k1();
            String shortPlayName = episodeSearchResult.getShortPlayName();
            if (shortPlayName == null) {
                shortPlayName = "";
            }
            k12.B(new a.C0685a(shortPlayName));
        }
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom(str);
        immersionParams.setType(3);
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(episodeSearchResult.getShortPlayId());
        immersionShortsInfo.setShortPlayCode(episodeSearchResult.getShortPlayCode());
        immersionShortsInfo.setShortsName(episodeSearchResult.getShortPlayName());
        immersionShortsInfo.setCover(episodeSearchResult.getCoverId());
        immersionShortsInfo.setUpack(episodeSearchResult.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        immersionParams.setSearchString(String.valueOf(((ActivitySearchBinding) E()).f38459g.getText()));
        immersionParams.setModuleInfo(moduleInfo);
        Unit unit = Unit.f60915a;
        aVar.a(this, immersionParams);
    }

    static /* synthetic */ void O1(SearchActivity searchActivity, EpisodeSearchResult episodeSearchResult, String str, ModuleInfo moduleInfo, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            moduleInfo = null;
        }
        searchActivity.N1(episodeSearchResult, str, moduleInfo);
    }

    private final void P1() {
        o1();
        hi.b bVar = new hi.b(this);
        bVar.setCancelable(false);
        bVar.show();
        this.U = bVar;
    }

    private final void Q1(List<SearchModule> list) {
        RecyclerView e02;
        l0(list);
        if (!h0() && (e02 = e0()) != null) {
            e02.scrollToPosition(0);
        }
    }

    private final void R1(boolean z10, boolean z11, boolean z12, SearchRankingResultV2 searchRankingResultV2, SearchResult searchResult, List<EpisodeSearchResult> list, String str, boolean z13, boolean z14, int i10, String str2) {
        List<YouMightLikeKey> hotResponseList;
        List<EpisodeSearchResult> shortPlays;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("updateModules searchHistory=");
        sb2.append(z10);
        sb2.append(" noResult=");
        sb2.append(z11);
        sb2.append(" popularAndRanking=");
        sb2.append(searchRankingResultV2 != null ? l.d(searchRankingResultV2) : null);
        sb2.append(" exactly=");
        sb2.append((searchResult == null || (shortPlays = searchResult.getShortPlays()) == null) ? null : Integer.valueOf(shortPlays.size()));
        sb2.append(" code=");
        sb2.append((searchResult != null ? searchResult.getCodeInfo() : null) != null);
        sb2.append(" vip=");
        sb2.append((searchResult != null ? searchResult.getMemberInfo() : null) != null);
        sb2.append(" fuzzy=");
        sb2.append(list != null ? Integer.valueOf(list.size()) : null);
        s(sb2.toString());
        ArrayList arrayList = new ArrayList();
        if (z10) {
            k1().B(a.c.f49310a);
            arrayList.add(this.J);
        }
        if (z14 && searchRankingResultV2 != null && (hotResponseList = searchRankingResultV2.getHotResponseList()) != null && !hotResponseList.isEmpty()) {
            SearchModule.YouMightLikeModule youMightLikeModule = new SearchModule.YouMightLikeModule(hotResponseList);
            youMightLikeModule.setTopMargin(z.f51786a.d());
            arrayList.add(youMightLikeModule);
        }
        if (z13) {
            SearchModule.ActBannerModule actBannerModule = SearchModule.ActBannerModule.INSTANCE;
            actBannerModule.setTopMargin(z.f51786a.d());
            arrayList.add(actBannerModule);
        }
        if (z11) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("type", "no_result");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "search_result_show", bundle, 0L, 4, null);
            SearchModule.NoResultModule noResultModule = SearchModule.NoResultModule.INSTANCE;
            noResultModule.setTopMargin(z.f51786a.e());
            arrayList.add(noResultModule);
        }
        if (z12) {
            EventManager eventManager2 = EventManager.f42463a;
            Bundle bundle2 = new Bundle();
            bundle2.putString("type", "no_result");
            Unit unit2 = Unit.f60915a;
            EventManager.s0(eventManager2, "search_result_show", bundle2, 0L, 4, null);
            SearchModule.NetworkErrorModule networkErrorModule = SearchModule.NetworkErrorModule.INSTANCE;
            networkErrorModule.setTopMargin(V.b());
            arrayList.add(networkErrorModule);
        }
        List<EpisodeSearchResult> topResponseList = searchRankingResultV2 != null ? searchRankingResultV2.getTopResponseList() : null;
        if (topResponseList != null && (!topResponseList.isEmpty())) {
            EventManager.s0(EventManager.f42463a, "search_all_show", null, 0L, 6, null);
            int i11 = 0;
            for (Object obj : topResponseList) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.y();
                }
                EpisodeSearchResult episodeSearchResult = (EpisodeSearchResult) obj;
                if (i11 == 0) {
                    arrayList.add(new SearchModule.PopularTitleModule(episodeSearchResult));
                } else {
                    arrayList.add(new SearchModule.PopularEpisodeModule(episodeSearchResult));
                }
                i11 = i12;
            }
        }
        if (searchResult != null && (!searchResult.getShortPlays().isEmpty() || searchResult.getCodeInfo() != null || searchResult.getMemberInfo() != null)) {
            EventManager eventManager3 = EventManager.f42463a;
            Bundle bundle3 = new Bundle();
            bundle3.putString("type", "have_result");
            Unit unit3 = Unit.f60915a;
            EventManager.s0(eventManager3, "search_result_show", bundle3, 0L, 4, null);
            if (searchResult.getMemberInfo() != null) {
                String msg = searchResult.getMemberInfo().getMsg();
                if (msg != null) {
                    if (msg.length() <= 0) {
                        msg = null;
                    }
                    if (msg != null) {
                        y(msg);
                    }
                }
                AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
            } else if (searchResult.getCodeInfo() != null) {
                if (searchResult.getCodeInfo().getCollectShort()) {
                    RedPointManager.f42937a.b(searchResult.getCodeInfo().getShortPlayId());
                }
                switch (searchResult.getCodeInfo().getStatus()) {
                    case 0:
                    case 5:
                        M1(searchResult.getCodeInfo(), !searchResult.getCodeInfo().getEquity().isEmpty());
                        break;
                    case 1:
                        x(R$string.search_activity_redeem_code_disabled);
                        break;
                    case 2:
                        x(R$string.search_activity_redeem_code_use_up);
                        M1(searchResult.getCodeInfo(), false);
                        break;
                    case 3:
                        x(R$string.search_activity_redeem_code_overdue);
                        M1(searchResult.getCodeInfo(), false);
                        break;
                    case 4:
                        x(R$string.search_activity_redeem_code_delisted);
                        break;
                    case 6:
                        x(R$string.search_activity_redeem_code_unsupported);
                        M1(searchResult.getCodeInfo(), false);
                        break;
                }
                Bundle bundle4 = new Bundle();
                RedeemCode.Companion companion = RedeemCode.Companion;
                bundle4.putString("type", companion.getEquityListStr(searchResult.getCodeInfo().getEquity()));
                bundle4.putString("valid", companion.getStatusStr(searchResult.getCodeInfo().getStatus()));
                EventManager.s0(eventManager3, "rights_popup_display", bundle4, 0L, 4, null);
            } else {
                int g10 = z.f51786a.g();
                for (EpisodeSearchResult episodeSearchResult2 : searchResult.getShortPlays()) {
                    SearchModule.ExactlyEpisodeModule exactlyEpisodeModule = new SearchModule.ExactlyEpisodeModule(episodeSearchResult2);
                    exactlyEpisodeModule.setTopMargin(g10);
                    exactlyEpisodeModule.setBottomMargin(z.f51786a.b());
                    arrayList.add(exactlyEpisodeModule);
                    g10 = 0;
                }
                if (searchResult.getShortPlays().size() < 20) {
                    K0(false);
                    arrayList.add(SearchModule.NoMoreResultModule.INSTANCE);
                } else {
                    K0(true);
                }
            }
        }
        if (list != null) {
            if (!this.O) {
                EventManager.s0(EventManager.f42463a, "fuzzy_search_display", null, 0L, 6, null);
            }
            this.O = true;
            for (EpisodeSearchResult episodeSearchResult3 : list) {
                arrayList.add(new SearchModule.FuzzyEpisodeModule(episodeSearchResult3));
            }
        } else {
            this.O = false;
        }
        if (searchResult == null) {
            arrayList.add(SearchModule.BottomPaddingModule.INSTANCE);
        }
        Q1(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void S1(SearchActivity searchActivity, boolean z10, boolean z11, boolean z12, SearchRankingResultV2 searchRankingResultV2, SearchResult searchResult, List list, String str, boolean z13, boolean z14, int i10, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        if ((i11 & 4) != 0) {
            z12 = false;
        }
        if ((i11 & 8) != 0) {
            searchRankingResultV2 = null;
        }
        if ((i11 & 16) != 0) {
            searchResult = null;
        }
        if ((i11 & 32) != 0) {
            list = null;
        }
        if ((i11 & 64) != 0) {
            str = "";
        }
        if ((i11 & 128) != 0) {
            z13 = false;
        }
        if ((i11 & 256) != 0) {
            z14 = false;
        }
        if ((i11 & 512) != 0) {
            i10 = 0;
        }
        if ((i11 & 1024) != 0) {
            str2 = "";
        }
        searchActivity.R1(z10, z11, z12, searchRankingResultV2, searchResult, list, str, z13, z14, i10, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int a1() {
        return g.a(109.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int b1() {
        return g.a(25.0f);
    }

    public static final /* synthetic */ ActivitySearchBinding d1(SearchActivity searchActivity) {
        return (ActivitySearchBinding) searchActivity.E();
    }

    private final boolean h1() {
        List<SearchModule> c02 = c0();
        if (c02 == null) {
            return false;
        }
        List<SearchModule> list = c02;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (SearchModule searchModule : list) {
            if (searchModule instanceof SearchModule.SearchHistoryModule) {
                return true;
            }
        }
        return false;
    }

    private final InputMethodManager i1() {
        return (InputMethodManager) this.N.getValue();
    }

    private final vf.a j1() {
        return (vf.a) this.P.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SearchHistoryViewModel k1() {
        return (SearchHistoryViewModel) this.L.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SearchViewModel l1() {
        return (SearchViewModel) this.M.getValue();
    }

    private final ViewModelProvider m1() {
        return (ViewModelProvider) this.K.getValue();
    }

    private final void n1() {
        try {
            BaseEditText baseEditText = ((ActivitySearchBinding) E()).f38459g;
            if (i1().isActive(baseEditText)) {
                s("hideSoftInputFromWindow");
                i1().hideSoftInputFromWindow(baseEditText.getWindowToken(), 0);
            }
            Intrinsics.checkNotNull(baseEditText);
        } catch (Exception e10) {
            s("hideSoftInputFromWindow exception -> " + e10.getMessage());
        }
    }

    private final void o1() {
        hi.b bVar = this.U;
        if (bVar != null) {
            bVar.cancel();
        }
        this.U = null;
    }

    private final void p1() {
        j1().d();
    }

    private final void q1() {
        final View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        this.Q = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: bi.f
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                SearchActivity.r1(decorView, this);
            }
        };
        decorView.getViewTreeObserver().addOnGlobalLayoutListener(this.Q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r1(View view, SearchActivity searchActivity) {
        int height = view.getRootView().getHeight();
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        if (height - rect.bottom <= height * 0.15d) {
            if (searchActivity.R) {
                searchActivity.s("keyboard close");
                searchActivity.R = false;
                ((ActivitySearchBinding) searchActivity.E()).f38459g.clearFocus();
            }
        } else if (!searchActivity.R) {
            searchActivity.R = true;
            searchActivity.s("keyboard show");
        }
    }

    private final void s1() {
        k1().A().observe(this, new e(new Function1() { // from class: bi.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit t12;
                t12 = SearchActivity.t1(SearchActivity.this, (com.startshorts.androidplayer.viewmodel.search.b) obj);
                return t12;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t1(SearchActivity searchActivity, com.startshorts.androidplayer.viewmodel.search.b bVar) {
        searchActivity.s("mSearchHistoryViewModel.mState.observe -> SearchHistoryState=" + bVar);
        if (bVar instanceof b.a) {
            Builder builder = new Builder();
            builder.setContent(searchActivity.getString(R$string.search_activity_clear_history_hint));
            builder.setPositiveButtonText(searchActivity.getString(R$string.common_confirm));
            builder.setPositiveButtonClickListener(new d());
            builder.setNegativeButtonText(searchActivity.getString(R$string.common_cancel));
            new li.c(searchActivity, builder).show();
        } else if (bVar instanceof b.C0686b) {
            b.C0686b c0686b = (b.C0686b) bVar;
            if (c0686b.a().isEmpty()) {
                searchActivity.Y(searchActivity.J);
            }
            if (!c0686b.a().isEmpty() && (searchActivity.l1().C().getValue() instanceof d.a) && !searchActivity.h1()) {
                searchActivity.l1().E(c.a.f49316a);
            }
        } else if (bVar instanceof b.d) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            b.d dVar = (b.d) bVar;
            bundle.putString("content", dVar.a());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "search_history_click", bundle, 0L, 4, null);
            searchActivity.L1(dVar.a());
        } else if (bVar instanceof b.c) {
            EventManager eventManager2 = EventManager.f42463a;
            Bundle bundle2 = new Bundle();
            b.c cVar = (b.c) bVar;
            bundle2.putString("content", cVar.a());
            Unit unit2 = Unit.f60915a;
            EventManager.s0(eventManager2, "search_hot_click", bundle2, 0L, 4, null);
            searchActivity.L1(cVar.a());
        }
        return Unit.f60915a;
    }

    private final void u1() {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        BaseEditText baseEditText = ((ActivitySearchBinding) E()).f38459g;
        baseEditText.setImeOptions(3);
        baseEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: bi.e
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                boolean v12;
                v12 = SearchActivity.v1(SearchActivity.this, textView, i10, keyEvent);
                return v12;
            }
        });
        baseEditText.addTextChangedListener(new h() { // from class: com.startshorts.androidplayer.ui.activity.search.SearchActivity$initSearchLabelEdt$1$2
            /* JADX WARN: Type inference failed for: r10v1, types: [T, kotlinx.coroutines.r] */
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s10) {
                int i10;
                ?? d10;
                Intrinsics.checkNotNullParameter(s10, "s");
                r rVar = objectRef.element;
                if (rVar != null) {
                    r.a.b(rVar, null, 1, null);
                }
                String obj = s10.toString();
                ImageView imageView = SearchActivity.d1(this).f38455c;
                if (obj.length() > 0) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
                imageView.setVisibility(i10);
                if (this.l1().C().getValue() instanceof d.f) {
                    this.s("afterTextChanged -> SearchState.SearchExactlyStart ");
                    return;
                }
                byte[] bytes = StringsKt.v1(obj).toString().getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                int length = bytes.length;
                if (obj.length() == 0) {
                    if (!(this.l1().C().getValue() instanceof d.a)) {
                        this.s("afterTextChanged -> SearchIntent.Init");
                        this.l1().E(c.a.f49316a);
                        return;
                    }
                    return;
                }
                if (length == 1) {
                    this.l1().E(new c.d(""));
                }
                this.s("afterTextChanged -> SearchIntent.SearchFuzzy");
                Ref.ObjectRef<r> objectRef2 = objectRef;
                d10 = gt.g.d(kotlinx.coroutines.i.a(q0.c()), null, null, new SearchActivity$initSearchLabelEdt$1$2$afterTextChanged$1(this, s10, null), 3, null);
                objectRef2.element = d10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean v1(SearchActivity searchActivity, TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 3) {
            return false;
        }
        J1(searchActivity, false, 1, null);
        return true;
    }

    private final void w1() {
        l1().C().observe(this, new e(new Function1() { // from class: bi.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit x12;
                x12 = SearchActivity.x1(SearchActivity.this, (com.startshorts.androidplayer.viewmodel.search.d) obj);
                return x12;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x1(SearchActivity searchActivity, com.startshorts.androidplayer.viewmodel.search.d dVar) {
        SearchRankingResultV2 d10;
        searchActivity.s("mSearchViewModel.mState.observe -> SearchState=" + dVar);
        if (dVar instanceof d.a) {
            searchActivity.o1();
            d.a aVar = (d.a) dVar;
            S1(searchActivity, aVar.b(), false, false, aVar.a(), null, null, null, !ActResourceManager.f41582a.A().isEmpty(), true, 0, null, 1654, null);
            searchActivity.K0(false);
        } else if (dVar instanceof d.i) {
            searchActivity.K0(false);
        } else if (dVar instanceof d.j) {
            S1(searchActivity, false, false, false, null, null, ((d.j) dVar).a(), null, false, false, 0, null, 2015, null);
        } else if (dVar instanceof d.h) {
            searchActivity.o1();
        } else if (dVar instanceof d.f) {
            searchActivity.P1();
        } else if (dVar instanceof d.g) {
            searchActivity.o1();
            d.g gVar = (d.g) dVar;
            S1(searchActivity, false, false, false, null, gVar.a(), null, gVar.b(), false, false, 0, null, 1967, null);
        } else if (dVar instanceof d.b) {
            searchActivity.o1();
            d.b bVar = (d.b) dVar;
            boolean z10 = !bVar.c();
            boolean c10 = bVar.c();
            if (bVar.c()) {
                d10 = null;
            } else {
                d10 = bVar.d();
            }
            SearchRankingResultV2 searchRankingResultV2 = d10;
            String b10 = bVar.b();
            if (b10 == null) {
                b10 = "";
            }
            S1(searchActivity, false, z10, c10, searchRankingResultV2, null, null, null, false, false, bVar.e(), b10, TTVideoEngineInterface.PLAYER_OPTION_SET_FIRST_FRAME_MILLISECOND, null);
            searchActivity.K0(false);
        } else if (!(dVar instanceof d.C0688d)) {
            if (dVar instanceof d.e) {
                List<EpisodeSearchResult> shortPlays = ((d.e) dVar).a().getShortPlays();
                List arrayList = new ArrayList(CollectionsKt.z(shortPlays, 10));
                for (EpisodeSearchResult episodeSearchResult : shortPlays) {
                    SearchModule.ExactlyEpisodeModule exactlyEpisodeModule = new SearchModule.ExactlyEpisodeModule(episodeSearchResult);
                    exactlyEpisodeModule.setBottomMargin(z.f51786a.b());
                    arrayList.add(exactlyEpisodeModule);
                }
                if (arrayList.size() < 20) {
                    searchActivity.K0(false);
                    arrayList = CollectionsKt.L0(arrayList, SearchModule.NoMoreResultModule.INSTANCE);
                } else {
                    searchActivity.K0(true);
                }
                RefreshActivity.H0(searchActivity, CollectionsKt.g1(arrayList), false, null, 6, null);
            } else if (dVar instanceof d.c) {
                RefreshActivity.H0(searchActivity, null, false, null, 4, null);
                searchActivity.y(((d.c) dVar).b());
            }
        }
        return Unit.f60915a;
    }

    private final void y1() {
        ((ActivitySearchBinding) E()).f38455c.setOnClickListener(new View.OnClickListener() { // from class: bi.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchActivity.z1(SearchActivity.this, view);
            }
        });
        ((ActivitySearchBinding) E()).f38453a.setOnClickListener(new View.OnClickListener() { // from class: bi.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchActivity.A1(SearchActivity.this, view);
            }
        });
        ((ActivitySearchBinding) E()).f38458f.setOnClickListener(new View.OnClickListener() { // from class: bi.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchActivity.B1(SearchActivity.this, view);
            }
        });
        u1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z1(SearchActivity searchActivity, View view) {
        ((ActivitySearchBinding) searchActivity.E()).f38459g.setText("");
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RefreshActivity
    public boolean F0() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RefreshActivity
    public void I0(int i10, int i11) {
        String str;
        s("loadMore -> start " + i10 + ' ' + i11);
        super.I0(i10, i11);
        com.startshorts.androidplayer.viewmodel.search.d value = l1().C().getValue();
        if (value instanceof d.g) {
            str = ((d.g) value).b();
        } else {
            str = "";
        }
        if (value instanceof d.e) {
            str = ((d.e) value).b();
        }
        if (value instanceof d.c) {
            str = ((d.c) value).a();
        }
        if (str.length() > 0) {
            l1().E(new c.C0687c(str, i10, i11));
            return;
        }
        s("loadMore -> keyword is empty " + value);
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity
    public boolean a0() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RefreshActivity, com.startshorts.androidplayer.ui.activity.base.ListActivity, com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity
    public void g0() {
        j0(20);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        k0(linearLayoutManager);
        SearchModuleAdapter searchModuleAdapter = new SearchModuleAdapter(new WeakReference(this));
        searchModuleAdapter.a0(getLifecycle());
        searchModuleAdapter.Z(linearLayoutManager);
        searchModuleAdapter.b0(new b(searchModuleAdapter));
        searchModuleAdapter.B(new c(searchModuleAdapter));
        i0(searchModuleAdapter);
        super.g0();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RefreshActivity, com.startshorts.androidplayer.ui.activity.base.ListActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_search;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1();
        SearchKey searchKey = this.I;
        String str = (searchKey == null || (str = searchKey.getKey()) == null) ? "" : "";
        s("onAttachedToWindow -> recommendedName=" + str);
        BaseEditText baseEditText = ((ActivitySearchBinding) E()).f38459g;
        baseEditText.requestFocus();
        if (str.length() > 0) {
            baseEditText.setHint(str);
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", this.T);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "search_page_show", bundle, 0L, 4, null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        CharSequence text = ((ActivitySearchBinding) E()).f38459g.getText();
        if (text == null) {
            text = "";
        }
        if (text.length() > 0 && !(l1().C().getValue() instanceof d.a)) {
            s("onBackPressed -> SearchIntent.Init");
            l1().E(c.a.f49316a);
            return;
        }
        super.onBackPressed();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RefreshActivity, com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ed.a.f51339a.b(this, true);
        View toolbarView = ((ActivitySearchBinding) E()).f38460h;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
        y1();
        q1();
        s1();
        w1();
        p1();
        l1().E(c.a.f49316a);
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (l1().C().getValue() instanceof d.a) {
            k1().B(a.c.f49310a);
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.ListActivity
    public int q0() {
        return 20;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RefreshActivity, com.startshorts.androidplayer.ui.activity.base.ListActivity, com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity, com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "SearchActivity";
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.ListActivity
    public void u0() {
        super.u0();
        n1();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.ListActivity, com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity, com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public void v() {
        super.v();
        o1();
        K1();
    }
}
