package com.startshorts.androidplayer.ui.view.search;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleKt;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.search.SearchLabelAdapter;
import com.startshorts.androidplayer.bean.search.EpisodeSearchResult;
import com.startshorts.androidplayer.bean.search.SearchKey;
import com.startshorts.androidplayer.bean.search.SearchRankingResultV2;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.search.SearchRepo;
import com.startshorts.androidplayer.ui.activity.search.SearchActivity;
import com.startshorts.androidplayer.ui.view.banner.BannerViewPager;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.search.SearchLabelView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.ArrayList;
import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchLabelView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSearchLabelView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchLabelView.kt\ncom/startshorts/androidplayer/ui/view/search/SearchLabelView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"})
/* loaded from: classes7.dex */
public final class SearchLabelView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f47805f = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ViewGroup f47806b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BannerViewPager<SearchKey> f47807c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Lifecycle f47808d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f47809e;

    /* compiled from: SearchLabelView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchLabelView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A() {
        final SearchLabelAdapter searchLabelAdapter = new SearchLabelAdapter();
        BannerViewPager<SearchKey> bannerViewPager = new BannerViewPager<>(getContext());
        bannerViewPager.D(searchLabelAdapter);
        bannerViewPager.E(true);
        bannerViewPager.S(false);
        bannerViewPager.G(5000);
        bannerViewPager.I(1);
        bannerViewPager.F(true);
        bannerViewPager.L(1);
        bannerViewPager.R(500);
        Lifecycle lifecycle = this.f47808d;
        if (lifecycle != null) {
            bannerViewPager.A(lifecycle);
        }
        bannerViewPager.J(new BannerViewPager.c() { // from class: vj.h
            @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.c
            public final void a(View view, int i10) {
                SearchLabelView.B(SearchLabelView.this, searchLabelAdapter, view, i10);
            }
        });
        this.f47807c = bannerViewPager;
        ViewGroup viewGroup = this.f47806b;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            viewGroup.addView(bannerViewPager);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(SearchLabelView searchLabelView, SearchLabelAdapter searchLabelAdapter, View view, int i10) {
        searchLabelView.s("onPageClick position=" + i10);
        if (searchLabelView.getContext() != null) {
            List<SearchKey> d10 = searchLabelAdapter.d();
            Intrinsics.checkNotNullExpressionValue(d10, "getData(...)");
            searchLabelView.z((SearchKey) CollectionsKt.t0(d10, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(SearchLabelView searchLabelView, View view) {
        searchLabelView.r("on view click, labels is not init");
        searchLabelView.z(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setLabels(List<SearchKey> list) {
        setOnClickListener(new View.OnClickListener() { // from class: vj.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchLabelView.setLabels$lambda$2(view);
            }
        });
        if (this.f47807c == null) {
            A();
        }
        BannerViewPager<SearchKey> bannerViewPager = this.f47807c;
        if (bannerViewPager != null) {
            if (list == null) {
                list = new ArrayList<>();
            }
            bannerViewPager.g(list);
        }
    }

    private final void z(SearchKey searchKey) {
        this.f47809e = true;
        Context context = getContext();
        if (context != null) {
            Intent intent = new Intent(context, SearchActivity.class);
            intent.putExtra("from", "discover");
            if (searchKey == null) {
                context.startActivity(intent);
                s("goSearchActivity episode == null");
            } else {
                String d10 = l.d(searchKey);
                s("goSearchActivity episode == " + d10);
                intent.putExtra("recommended_search_param", d10);
                context.startActivity(intent);
            }
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", "discover");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "search_click", bundle, 0L, 4, null);
    }

    public final void C(@NotNull Lifecycle lifecycle) {
        List<EpisodeSearchResult> topResponseList;
        List<SearchKey> arrayList;
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        this.f47808d = lifecycle;
        ViewGroup viewGroup = this.f47806b;
        if (viewGroup == null) {
            viewGroup = (ViewGroup) findViewById(R$id.view_pager_container);
        }
        this.f47806b = viewGroup;
        setOnClickListener(new View.OnClickListener() { // from class: vj.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchLabelView.D(SearchLabelView.this, view);
            }
        });
        SearchRepo searchRepo = SearchRepo.f44583a;
        SearchRankingResultV2 g10 = searchRepo.g();
        if (g10 != null && (topResponseList = g10.getTopResponseList()) != null && (!topResponseList.isEmpty())) {
            s("refreshPopularList -> use cached data at first");
            SearchRankingResultV2 g11 = searchRepo.g();
            if (g11 == null || (arrayList = g11.getKeyResponseList()) == null) {
                arrayList = new ArrayList<>();
            }
            setLabels(arrayList);
        }
        s("refreshPopularList start refresh");
        CoroutineUtil.k(CoroutineUtil.f48072a, LifecycleKt.getCoroutineScope(lifecycle), "fetchPopularList", false, new SearchLabelView$refreshPopularList$2(this, null), null, 20, null);
    }

    public final void E() {
        if (this.f47809e) {
            s("refreshWhenBackFromSearchActivity");
            this.f47809e = false;
            Lifecycle lifecycle = this.f47808d;
            if (lifecycle != null) {
                C(lifecycle);
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_discover_fragment_search_label;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "SearchLabelView";
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setLabels$lambda$2(View view) {
    }
}
