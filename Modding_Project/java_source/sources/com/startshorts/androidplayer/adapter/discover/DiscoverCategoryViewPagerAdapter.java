package com.startshorts.androidplayer.adapter.discover;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.discover.DiscoverCategory;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.VideoPreviewInfo;
import com.startshorts.androidplayer.bean.eventbus.VideoPreviewPlayEvent;
import com.startshorts.androidplayer.databinding.ItemDiscoverCategoryPageItemBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleCategoryPageBinding;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.base.TabView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverCategoryViewPagerAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverCategoryViewPagerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverCategoryViewPagerAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1863#2,2:137\n1872#2,3:139\n*S KotlinDebug\n*F\n+ 1 DiscoverCategoryViewPagerAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter\n*L\n60#1:137,2\n62#1:139,3\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverCategoryViewPagerAdapter extends BaseAdapter<DiscoverCategory> {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f37271t = new a(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final ItemDiscoverModuleCategoryPageBinding f37272o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final Lifecycle f37273p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final DiscoverModule f37274q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final DiscoverModuleAdapter.n f37275r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final ms.i f37276s;

    /* compiled from: DiscoverCategoryViewPagerAdapter.kt */
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
    /* compiled from: DiscoverCategoryViewPagerAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class b extends BaseAdapter<DiscoverCategory>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverCategoryPageItemBinding f37277g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private DiscoverCategoryViewPagerItemAdapter f37278h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverCategoryViewPagerAdapter f37279i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull DiscoverCategoryViewPagerAdapter discoverCategoryViewPagerAdapter, ItemDiscoverCategoryPageItemBinding binding) {
            super(discoverCategoryViewPagerAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37279i = discoverCategoryViewPagerAdapter;
            this.f37277g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverCategoryPageItemBinding c() {
            return this.f37277g;
        }

        @Nullable
        public final DiscoverCategoryViewPagerItemAdapter k() {
            return this.f37278h;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull DiscoverCategory item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            Lifecycle lifecycle = this.f37279i.f37273p;
            if (lifecycle != null) {
                DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter = new DiscoverCategoryViewPagerItemAdapter(i10, this.f37279i.f37274q, this.f37279i.K(), lifecycle, c());
                discoverCategoryViewPagerItemAdapter.U();
                this.f37278h = discoverCategoryViewPagerItemAdapter;
            }
        }
    }

    /* compiled from: DiscoverCategoryViewPagerAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c implements SelectableAdapter.d<SelectableItem> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ItemDiscoverModuleCategoryPageBinding f37280a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DiscoverCategoryViewPagerAdapter f37281b;

        c(ItemDiscoverModuleCategoryPageBinding itemDiscoverModuleCategoryPageBinding, DiscoverCategoryViewPagerAdapter discoverCategoryViewPagerAdapter) {
            this.f37280a = itemDiscoverModuleCategoryPageBinding;
            this.f37281b = discoverCategoryViewPagerAdapter;
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, SelectableItem d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            this.f37280a.f40112c.setSelectedIndex(i10);
            this.f37281b.f37274q.setCategoryTabSelectedPos(i10);
            this.f37280a.f40113d.setCurrentItem(i10, false);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverCategoryViewPagerAdapter(@NotNull ItemDiscoverModuleCategoryPageBinding mBinding, @Nullable Lifecycle lifecycle, @NotNull DiscoverModule module, @Nullable DiscoverModuleAdapter.n nVar) {
        super(0L, 1, null);
        Intrinsics.checkNotNullParameter(mBinding, "mBinding");
        Intrinsics.checkNotNullParameter(module, "module");
        this.f37272o = mBinding;
        this.f37273p = lifecycle;
        this.f37274q = module;
        this.f37275r = nVar;
        this.f37276s = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1 P;
                P = DiscoverCategoryViewPagerAdapter.P(DiscoverCategoryViewPagerAdapter.this);
                return P;
            }
        });
    }

    private final DiscoverCategoryViewPagerItemAdapter I() {
        RecyclerView b10 = fk.i0.f51738a.b(this.f37272o.f40113d);
        if (b10 == null) {
            return null;
        }
        return J(b10);
    }

    private final DiscoverCategoryViewPagerItemAdapter J(RecyclerView recyclerView) {
        b bVar;
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(this.f37274q.getCategoryTabSelectedPos());
        if (findViewHolderForAdapterPosition instanceof b) {
            bVar = (b) findViewHolderForAdapterPosition;
        } else {
            bVar = null;
        }
        if (bVar == null) {
            return null;
        }
        return bVar.k();
    }

    private final ViewPager2.OnPageChangeCallback L() {
        return (ViewPager2.OnPageChangeCallback) this.f37276s.getValue();
    }

    private final void N(ItemDiscoverModuleCategoryPageBinding itemDiscoverModuleCategoryPageBinding, List<SelectableItem> list) {
        boolean z10;
        if (list == null) {
            return;
        }
        List<SelectableItem> list2 = list;
        for (SelectableItem selectableItem : list2) {
            selectableItem.setClickable(true);
        }
        int i10 = 0;
        for (Object obj : list2) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            SelectableItem selectableItem2 = (SelectableItem) obj;
            if (this.f37274q.getCategoryTabSelectedPos() == i10) {
                z10 = true;
            } else {
                z10 = false;
            }
            selectableItem2.setSelected(z10);
            i10 = i11;
        }
        SelectableAdapter selectableAdapter = new SelectableAdapter(R$layout.item_discover_module_category_tab);
        selectableAdapter.J(new c(itemDiscoverModuleCategoryPageBinding, this));
        TabView tabView = itemDiscoverModuleCategoryPageBinding.f40112c;
        Context context = itemDiscoverModuleCategoryPageBinding.f40112c.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        tabView.a(list, selectableAdapter, null, new CatchExceptionLinearLayoutManager(context, 0, false));
        itemDiscoverModuleCategoryPageBinding.f40112c.setSelectedIndex(this.f37274q.getCategoryTabSelectedPos());
    }

    private final void O(ItemDiscoverModuleCategoryPageBinding itemDiscoverModuleCategoryPageBinding) {
        ViewPager2 viewPager = itemDiscoverModuleCategoryPageBinding.f40113d;
        Intrinsics.checkNotNullExpressionValue(viewPager, "viewPager");
        kd.d.a(viewPager, false);
        ViewPager2 viewPager2 = itemDiscoverModuleCategoryPageBinding.f40113d;
        Intrinsics.checkNotNullExpressionValue(viewPager2, "viewPager");
        kd.d.b(viewPager2, 2);
        itemDiscoverModuleCategoryPageBinding.f40113d.setAdapter(this);
        List<DiscoverCategory> categoryVOList = this.f37274q.getCategoryVOList();
        if (categoryVOList == null) {
            categoryVOList = new ArrayList<>();
        }
        BaseAdapter.D(this, categoryVOList, false, 2, null);
        itemDiscoverModuleCategoryPageBinding.f40113d.registerOnPageChangeCallback(L());
        itemDiscoverModuleCategoryPageBinding.f40113d.setCurrentItem(this.f37274q.getCategoryTabSelectedPos(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.startshorts.androidplayer.adapter.discover.DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1] */
    public static final DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1 P(final DiscoverCategoryViewPagerAdapter discoverCategoryViewPagerAdapter) {
        return new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.adapter.discover.DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i10) {
                ItemDiscoverModuleCategoryPageBinding itemDiscoverModuleCategoryPageBinding;
                DiscoverCategoryViewPagerAdapter discoverCategoryViewPagerAdapter2 = DiscoverCategoryViewPagerAdapter.this;
                discoverCategoryViewPagerAdapter2.r("onPageSelected -> position(" + i10 + ')');
                DiscoverCategoryViewPagerAdapter.this.f37274q.setCategoryTabSelectedPos(i10);
                itemDiscoverModuleCategoryPageBinding = DiscoverCategoryViewPagerAdapter.this.f37272o;
                itemDiscoverModuleCategoryPageBinding.f40112c.setSelectedIndex(i10);
                au.c.d().l(new VideoPreviewPlayEvent());
            }
        };
    }

    @Nullable
    public final DiscoverModuleAdapter.n K() {
        return this.f37275r;
    }

    @Nullable
    public final VideoPreviewInfo M() {
        DiscoverCategoryViewPagerItemAdapter I = I();
        if (I != null) {
            return I.Q();
        }
        return null;
    }

    public final void Q() {
        List<DiscoverCategory> categoryVOList;
        if (this.f37273p == null || (categoryVOList = this.f37274q.getCategoryVOList()) == null) {
            return;
        }
        N(this.f37272o, CollectionsKt.g1(categoryVOList));
        O(this.f37272o);
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "DiscoverCategoryViewPagerAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    /* renamed from: y */
    public BaseAdapter<DiscoverCategory>.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemDiscoverCategoryPageItemBinding) s(parent, R$layout.item_discover_category_page_item));
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public void z() {
        super.z();
        this.f37272o.f40113d.unregisterOnPageChangeCallback(L());
    }
}
