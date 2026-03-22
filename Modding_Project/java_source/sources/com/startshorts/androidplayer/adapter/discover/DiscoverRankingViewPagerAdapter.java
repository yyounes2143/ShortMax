package com.startshorts.androidplayer.adapter.discover;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleRankingPageBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverRankingPageItemBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.base.TabView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverRankingViewPagerAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverRankingViewPagerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingViewPagerAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n1863#2,2:134\n1872#2,3:136\n*S KotlinDebug\n*F\n+ 1 DiscoverRankingViewPagerAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter\n*L\n65#1:134,2\n67#1:136,3\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverRankingViewPagerAdapter extends BaseAdapter<DiscoverRanking> {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f37521t = new a(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final ItemDiscoverModuleRankingPageBinding f37522o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final Lifecycle f37523p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final DiscoverModule f37524q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final DiscoverModuleAdapter.n f37525r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final ms.i f37526s;

    /* compiled from: DiscoverRankingViewPagerAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverRankingViewPagerAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class b extends BaseAdapter<DiscoverRanking>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverRankingPageItemBinding f37527g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private DiscoverRankingViewPagerItemAdapter f37528h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverRankingViewPagerAdapter f37529i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull DiscoverRankingViewPagerAdapter discoverRankingViewPagerAdapter, ItemDiscoverRankingPageItemBinding binding) {
            super(discoverRankingViewPagerAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37529i = discoverRankingViewPagerAdapter;
            this.f37527g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverRankingPageItemBinding c() {
            return this.f37527g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverRanking item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            Lifecycle lifecycle = this.f37529i.f37523p;
            if (lifecycle != null) {
                DiscoverRankingViewPagerItemAdapter discoverRankingViewPagerItemAdapter = new DiscoverRankingViewPagerItemAdapter(c(), i10, this.f37529i.f37524q, this.f37529i.I());
                discoverRankingViewPagerItemAdapter.W(lifecycle);
                this.f37528h = discoverRankingViewPagerItemAdapter;
            }
        }
    }

    /* compiled from: DiscoverRankingViewPagerAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c implements SelectableAdapter.d<SelectableItem> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ItemDiscoverModuleRankingPageBinding f37530a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DiscoverRankingViewPagerAdapter f37531b;

        c(ItemDiscoverModuleRankingPageBinding itemDiscoverModuleRankingPageBinding, DiscoverRankingViewPagerAdapter discoverRankingViewPagerAdapter) {
            this.f37530a = itemDiscoverModuleRankingPageBinding;
            this.f37531b = discoverRankingViewPagerAdapter;
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, SelectableItem d10) {
            MainActivity mainActivity;
            DiscoverTab discoverTab;
            DiscoverTabFragment f02;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            this.f37530a.f40145c.setSelectedIndex(i10);
            boolean z10 = true;
            if (Math.abs(this.f37531b.f37524q.getCategoryTabSelectedPos() - i10) > 1) {
                z10 = false;
            }
            this.f37530a.f40146d.setCurrentItem(i10, z10);
            Context context = this.f37531b.f37522o.getRoot().getContext();
            DiscoverRanking discoverRanking = null;
            if (context instanceof MainActivity) {
                mainActivity = (MainActivity) context;
            } else {
                mainActivity = null;
            }
            if (mainActivity != null && (f02 = mainActivity.f0()) != null) {
                discoverTab = f02.H0();
            } else {
                discoverTab = null;
            }
            List<DiscoverRanking> rankingNameList = this.f37531b.f37524q.getRankingNameList();
            if (rankingNameList != null) {
                discoverRanking = rankingNameList.get(i10);
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle a10 = jk.b.a(eventManager.B(discoverTab), eventManager.A(discoverRanking));
            a10.putString("scene", "discover");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ranking_list_tag_click", a10, 0L, 4, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRankingViewPagerAdapter(@NotNull ItemDiscoverModuleRankingPageBinding mBinding, @Nullable Lifecycle lifecycle, @NotNull DiscoverModule module, @Nullable DiscoverModuleAdapter.n nVar) {
        super(0L, 1, null);
        Intrinsics.checkNotNullParameter(mBinding, "mBinding");
        Intrinsics.checkNotNullParameter(module, "module");
        this.f37522o = mBinding;
        this.f37523p = lifecycle;
        this.f37524q = module;
        this.f37525r = nVar;
        this.f37526s = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.d1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1 M;
                M = DiscoverRankingViewPagerAdapter.M(DiscoverRankingViewPagerAdapter.this);
                return M;
            }
        });
    }

    private final ViewPager2.OnPageChangeCallback J() {
        return (ViewPager2.OnPageChangeCallback) this.f37526s.getValue();
    }

    private final void K(ItemDiscoverModuleRankingPageBinding itemDiscoverModuleRankingPageBinding, List<DiscoverRanking> list) {
        boolean z10;
        if (list == null) {
            return;
        }
        List<DiscoverRanking> list2 = list;
        for (DiscoverRanking discoverRanking : list2) {
            discoverRanking.setClickable(true);
        }
        int i10 = 0;
        for (Object obj : list2) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            DiscoverRanking discoverRanking2 = (DiscoverRanking) obj;
            if (this.f37524q.getCategoryTabSelectedPos() == i10) {
                z10 = true;
            } else {
                z10 = false;
            }
            discoverRanking2.setSelected(z10);
            i10 = i11;
        }
        SelectableAdapter selectableAdapter = new SelectableAdapter(R$layout.item_discover_module_ranking_tab);
        selectableAdapter.J(new c(itemDiscoverModuleRankingPageBinding, this));
        TabView tabView = itemDiscoverModuleRankingPageBinding.f40145c;
        Context context = itemDiscoverModuleRankingPageBinding.f40145c.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        tabView.a(list, selectableAdapter, null, new CatchExceptionLinearLayoutManager(context, 0, false));
        itemDiscoverModuleRankingPageBinding.f40145c.setSelectedIndex(this.f37524q.getCategoryTabSelectedPos());
    }

    private final void L(ItemDiscoverModuleRankingPageBinding itemDiscoverModuleRankingPageBinding) {
        ViewPager2 viewPager = itemDiscoverModuleRankingPageBinding.f40146d;
        Intrinsics.checkNotNullExpressionValue(viewPager, "viewPager");
        kd.d.a(viewPager, false);
        ViewPager2 viewPager2 = itemDiscoverModuleRankingPageBinding.f40146d;
        Intrinsics.checkNotNullExpressionValue(viewPager2, "viewPager");
        kd.d.b(viewPager2, 2);
        itemDiscoverModuleRankingPageBinding.f40146d.setAdapter(this);
        List<DiscoverRanking> rankingNameList = this.f37524q.getRankingNameList();
        if (rankingNameList == null) {
            rankingNameList = new ArrayList<>();
        }
        BaseAdapter.D(this, rankingNameList, false, 2, null);
        itemDiscoverModuleRankingPageBinding.f40146d.registerOnPageChangeCallback(J());
        itemDiscoverModuleRankingPageBinding.f40146d.setCurrentItem(this.f37524q.getCategoryTabSelectedPos(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.startshorts.androidplayer.adapter.discover.DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1] */
    public static final DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1 M(final DiscoverRankingViewPagerAdapter discoverRankingViewPagerAdapter) {
        return new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.adapter.discover.DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i10) {
                MainActivity mainActivity;
                DiscoverTab discoverTab;
                DiscoverTabFragment f02;
                DiscoverRankingViewPagerAdapter.this.r("onPageSelected -> position(" + i10 + ')');
                DiscoverRankingViewPagerAdapter.this.f37524q.setCategoryTabSelectedPos(i10);
                DiscoverRankingViewPagerAdapter.this.f37522o.f40145c.setSelectedIndex(i10);
                Context context = DiscoverRankingViewPagerAdapter.this.f37522o.getRoot().getContext();
                DiscoverRanking discoverRanking = null;
                if (context instanceof MainActivity) {
                    mainActivity = (MainActivity) context;
                } else {
                    mainActivity = null;
                }
                if (mainActivity != null && (f02 = mainActivity.f0()) != null) {
                    discoverTab = f02.H0();
                } else {
                    discoverTab = null;
                }
                List<DiscoverRanking> rankingNameList = DiscoverRankingViewPagerAdapter.this.f37524q.getRankingNameList();
                if (rankingNameList != null) {
                    discoverRanking = rankingNameList.get(DiscoverRankingViewPagerAdapter.this.f37524q.getCategoryTabSelectedPos());
                }
                EventManager eventManager = EventManager.f42463a;
                Bundle a10 = jk.b.a(eventManager.B(discoverTab), eventManager.A(discoverRanking));
                a10.putString("scene", "discover");
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "ranking_list_tag_show", a10, 0L, 4, null);
            }
        };
    }

    @Nullable
    public final DiscoverModuleAdapter.n I() {
        return this.f37525r;
    }

    public final void N() {
        List<DiscoverRanking> rankingNameList;
        if (this.f37523p == null || (rankingNameList = this.f37524q.getRankingNameList()) == null) {
            return;
        }
        K(this.f37522o, CollectionsKt.g1(rankingNameList));
        L(this.f37522o);
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "DiscoverRankingViewPagerAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    /* renamed from: y */
    public BaseAdapter<DiscoverRanking>.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemDiscoverRankingPageItemBinding) s(parent, R$layout.item_discover_ranking_page_item));
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public void z() {
        super.z();
        this.f37522o.f40146d.unregisterOnPageChangeCallback(J());
    }
}
