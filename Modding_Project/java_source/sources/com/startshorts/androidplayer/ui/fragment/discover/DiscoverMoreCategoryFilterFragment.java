package com.startshorts.androidplayer.ui.fragment.discover;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.google.gson.reflect.TypeToken;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.bean.discover.DiscoverCategory;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.databinding.FragmentDiscoverMoreCategoryFilterBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverMoreCategoryFilterListFragment;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverMoreCategoryFilterFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverMoreCategoryFilterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMoreCategoryFilterFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,214:1\n1872#2,3:215\n1557#2:218\n1628#2,3:219\n*S KotlinDebug\n*F\n+ 1 DiscoverMoreCategoryFilterFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment\n*L\n95#1:215,3\n133#1:218\n133#1:219,3\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverMoreCategoryFilterFragment extends ToolbarFragment<FragmentDiscoverMoreCategoryFilterBinding> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f45919p = new a(null);

    /* renamed from: j  reason: collision with root package name */
    private int f45920j;

    /* renamed from: k  reason: collision with root package name */
    private ModuleInfo f45921k;

    /* renamed from: l  reason: collision with root package name */
    private List<DiscoverCategory> f45922l;

    /* renamed from: m  reason: collision with root package name */
    private String f45923m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final List<WeakReference<Fragment>> f45924n = new ArrayList();
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final DiscoverMoreCategoryFilterFragment$mOnPageChangeCallback$1 f45925o = new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.ui.fragment.discover.DiscoverMoreCategoryFilterFragment$mOnPageChangeCallback$1
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i10) {
            DiscoverMoreCategoryFilterFragment discoverMoreCategoryFilterFragment = DiscoverMoreCategoryFilterFragment.this;
            discoverMoreCategoryFilterFragment.r("onPageSelected -> position(" + i10 + ')');
            DiscoverMoreCategoryFilterFragment.this.f45920j = i10;
            DiscoverMoreCategoryFilterFragment.G(DiscoverMoreCategoryFilterFragment.this).f39449a.setSelectedIndex(i10);
        }
    };

    /* compiled from: DiscoverMoreCategoryFilterFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Context context, @NotNull ModuleInfo moduleInfo, @NotNull List<DiscoverCategory> categoryVOList, @NotNull String from) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(moduleInfo, "moduleInfo");
            Intrinsics.checkNotNullParameter(categoryVOList, "categoryVOList");
            Intrinsics.checkNotNullParameter(from, "from");
            Logger logger = Logger.f41511a;
            logger.h("DiscoverMoreCategoryFilterFragment", "DiscoverMoreCategoryFilterFragment -> moduleInfo=" + moduleInfo);
            EventManager eventManager = EventManager.f42463a;
            Bundle B = eventManager.B(moduleInfo.getTab());
            B.putString("module_name", moduleInfo.getModuleName());
            B.putString("module_id", moduleInfo.getModuleId());
            B.putString("module_type", moduleInfo.getModuleType());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "discover_more_click", B, 0L, 4, null);
            FragmentContainer.f45006p.b(context, com.startshorts.androidplayer.ui.fragment.a.f45609a.e(), new StringBundle("module_info_param", jk.l.d(moduleInfo)), new StringBundle("category_list_param", jk.l.d(categoryVOList)), new StringBundle("from", from));
        }

        private a() {
        }
    }

    /* compiled from: DiscoverMoreCategoryFilterFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements SelectableAdapter.d<SelectableItem> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, SelectableItem d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            DiscoverMoreCategoryFilterFragment.G(DiscoverMoreCategoryFilterFragment.this).f39450b.setCurrentItem(i10, false);
        }
    }

    /* compiled from: DiscoverMoreCategoryFilterFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends TypeToken<List<DiscoverCategory>> {
        c() {
        }
    }

    public static final /* synthetic */ FragmentDiscoverMoreCategoryFilterBinding G(DiscoverMoreCategoryFilterFragment discoverMoreCategoryFilterFragment) {
        return (FragmentDiscoverMoreCategoryFilterBinding) discoverMoreCategoryFilterFragment.A();
    }

    private final FragmentStateAdapter M() {
        this.f45924n.clear();
        List<DiscoverCategory> list = this.f45922l;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCategoryVOList");
            list = null;
        }
        List<DiscoverCategory> list2 = list;
        final ArrayList arrayList = new ArrayList(CollectionsKt.z(list2, 10));
        for (DiscoverCategory discoverCategory : list2) {
            arrayList.add(Long.valueOf(discoverCategory.getId().hashCode()));
        }
        return new FragmentStateAdapter() { // from class: com.startshorts.androidplayer.ui.fragment.discover.DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(DiscoverMoreCategoryFilterFragment.this);
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public boolean containsItem(long j10) {
                return arrayList.contains(Long.valueOf(j10));
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int i10) {
                ModuleInfo moduleInfo;
                List list3;
                String str;
                List list4;
                DiscoverMoreCategoryFilterListFragment.a aVar = DiscoverMoreCategoryFilterListFragment.J;
                moduleInfo = DiscoverMoreCategoryFilterFragment.this.f45921k;
                String str2 = null;
                if (moduleInfo == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                    moduleInfo = null;
                }
                list3 = DiscoverMoreCategoryFilterFragment.this.f45922l;
                if (list3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mCategoryVOList");
                    list3 = null;
                }
                DiscoverCategory discoverCategory2 = (DiscoverCategory) list3.get(i10);
                str = DiscoverMoreCategoryFilterFragment.this.f45923m;
                if (str == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFrom");
                } else {
                    str2 = str;
                }
                DiscoverMoreCategoryFilterListFragment a10 = aVar.a(moduleInfo, discoverCategory2, str2);
                list4 = DiscoverMoreCategoryFilterFragment.this.f45924n;
                list4.add(new WeakReference(a10));
                return a10;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return arrayList.size();
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public long getItemId(int i10) {
                return arrayList.get(i10).longValue();
            }
        };
    }

    private final void N() {
        List<DiscoverCategory> list = this.f45922l;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCategoryVOList");
            list = null;
        }
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            DiscoverCategory discoverCategory = (DiscoverCategory) obj;
            discoverCategory.setClickable(true);
            if (i10 == this.f45920j) {
                discoverCategory.setSelected(true);
            }
            i10 = i11;
        }
        SelectableAdapter selectableAdapter = new SelectableAdapter(R$layout.item_discover_more_category_filter);
        selectableAdapter.J(new b());
        TabView tabView = ((FragmentDiscoverMoreCategoryFilterBinding) A()).f39449a;
        List<DiscoverCategory> list2 = this.f45922l;
        if (list2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCategoryVOList");
            list2 = null;
        }
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        tabView.a(list2, selectableAdapter, null, new CatchExceptionLinearLayoutManager(requireActivity, 0, false));
        ((FragmentDiscoverMoreCategoryFilterBinding) A()).f39449a.setSelectedIndex(this.f45920j);
    }

    private final void O() {
        ed.a aVar = ed.a.f51339a;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        aVar.b(requireActivity, true);
        ImageView imageView = new ImageView(requireActivity());
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, 0);
        layoutParams.topToTop = 0;
        imageView.setLayoutParams(layoutParams);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setBackgroundResource(R$drawable.bg_discover_2_top_mask);
        ConstraintLayout constraintLayout = (ConstraintLayout) requireActivity().findViewById(R$id.root_layout);
        if (constraintLayout != null) {
            constraintLayout.addView(imageView, 0);
        }
        View findViewById = requireActivity().findViewById(R$id.toolbar_view);
        if (findViewById != null) {
            jk.b0.i(findViewById, 0, DeviceUtil.f48146a.J(), 0, 0, 13, null);
        }
    }

    private final void P() {
        ViewPager2 viewPager2 = ((FragmentDiscoverMoreCategoryFilterBinding) A()).f39450b;
        FragmentStateAdapter M = M();
        viewPager2.setAdapter(M);
        Intrinsics.checkNotNull(viewPager2);
        kd.d.a(viewPager2, false);
        kd.d.b(viewPager2, 2);
        viewPager2.registerOnPageChangeCallback(this.f45925o);
        int i10 = this.f45920j;
        if (i10 >= 0 && i10 < M.getItemCount()) {
            ((FragmentDiscoverMoreCategoryFilterBinding) A()).f39450b.setCurrentItem(this.f45920j, false);
        }
    }

    private final boolean Q() {
        ModuleInfo moduleInfo;
        String string;
        String string2;
        Bundle arguments = getArguments();
        List<DiscoverCategory> list = null;
        if (arguments != null && (string2 = arguments.getString("module_info_param")) != null) {
            moduleInfo = (ModuleInfo) jk.l.b(string2, ModuleInfo.class);
        } else {
            moduleInfo = null;
        }
        Bundle arguments2 = getArguments();
        if (arguments2 != null && (string = arguments2.getString("category_list_param")) != null) {
            Type type = new c().getType();
            Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
            list = (List) jk.l.c(string, type);
        }
        Bundle arguments3 = getArguments();
        String str = (arguments3 == null || (str = arguments3.getString("from")) == null) ? "" : "";
        if (moduleInfo != null && list != null) {
            this.f45923m = str;
            this.f45921k = moduleInfo;
            String string3 = getString(R$string.discover_more_category_filter_fragment_all);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            list.add(0, new DiscoverCategory("-1", string3));
            this.f45922l = list;
            return true;
        }
        g("data or categoryList is null");
        h();
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_discover_more_category_filter;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!Q()) {
            return;
        }
        super.onViewCreated(view, bundle);
        O();
        ModuleInfo moduleInfo = this.f45921k;
        ModuleInfo moduleInfo2 = null;
        if (moduleInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
            moduleInfo = null;
        }
        F(moduleInfo.getModuleName());
        N();
        P();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onCreate -> ModuleInfo=");
        ModuleInfo moduleInfo3 = this.f45921k;
        if (moduleInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
        } else {
            moduleInfo2 = moduleInfo3;
        }
        sb2.append(moduleInfo2);
        r(sb2.toString());
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "DiscoverMoreCategoryFilterFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        if (B()) {
            ViewPager2 viewPager2 = ((FragmentDiscoverMoreCategoryFilterBinding) A()).f39450b;
            viewPager2.setAdapter(null);
            viewPager2.unregisterOnPageChangeCallback(this.f45925o);
        }
        this.f45924n.clear();
    }
}
