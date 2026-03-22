package com.startshorts.androidplayer.ui.fragment.tag;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.bean.tab.TagFilterTab;
import com.startshorts.androidplayer.databinding.FragmentTagFilterBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment;
import com.startshorts.androidplayer.ui.fragment.tag.TagFilterFragment;
import com.startshorts.androidplayer.ui.fragment.tag.TagFilterListFragment;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.tag.TagViewModel;
import com.startshorts.androidplayer.viewmodel.tag.c;
import com.startshorts.androidplayer.viewmodel.tag.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import jk.l;
import kd.d;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.f;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TagFilterFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTagFilterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagFilterFragment.kt\ncom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n1557#2:249\n1628#2,3:250\n*S KotlinDebug\n*F\n+ 1 TagFilterFragment.kt\ncom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment\n*L\n159#1:249\n159#1:250,3\n*E\n"})
/* loaded from: classes7.dex */
public final class TagFilterFragment extends ToolbarFragment<FragmentTagFilterBinding> {
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public static final a f46869v = new a(null);

    /* renamed from: j  reason: collision with root package name */
    private int f46870j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private BaseEpisode f46871k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private DiscoverShorts f46872l;

    /* renamed from: m  reason: collision with root package name */
    private ShortsLabel f46873m;

    /* renamed from: n  reason: collision with root package name */
    private String f46874n;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private View f46877q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private View f46878r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private Integer f46879s;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final List<WeakReference<Fragment>> f46875o = new ArrayList();
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final List<TagFilterTab> f46876p = new ArrayList();
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private final i f46880t = kotlin.c.b(new Function0() { // from class: yi.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            TagViewModel X;
            X = TagFilterFragment.X(TagFilterFragment.this);
            return X;
        }
    });
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final TagFilterFragment$mOnPageChangeCallback$1 f46881u = new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.ui.fragment.tag.TagFilterFragment$mOnPageChangeCallback$1
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i10) {
            TagFilterFragment tagFilterFragment = TagFilterFragment.this;
            tagFilterFragment.r("onPageSelected -> position(" + i10 + ')');
            TagFilterFragment.this.f46870j = i10;
            TagFilterFragment.J(TagFilterFragment.this).f39663a.setSelectedIndex(i10);
        }
    };

    /* compiled from: TagFilterFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Context context, @Nullable DiscoverShorts discoverShorts, @NotNull ShortsLabel shortsLabel, @NotNull String from) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(shortsLabel, "shortsLabel");
            Intrinsics.checkNotNullParameter(from, "from");
            Logger.f41511a.h("TagFilterFragment", "TagFilterFragment show");
            FragmentContainer.f45006p.b(context, com.startshorts.androidplayer.ui.fragment.a.f45609a.m(), new StringBundle("shorts_param", l.d(discoverShorts)), new StringBundle("shorts_label_param", l.d(shortsLabel)), new StringBundle("from", from));
        }

        public final void b(@NotNull Context context, @NotNull BaseEpisode baseEpisode, @NotNull ShortsLabel shortsLabel, @NotNull String from) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(baseEpisode, "baseEpisode");
            Intrinsics.checkNotNullParameter(shortsLabel, "shortsLabel");
            Intrinsics.checkNotNullParameter(from, "from");
            Logger.f41511a.h("TagFilterFragment", "TagFilterFragment show");
            FragmentContainer.f45006p.b(context, com.startshorts.androidplayer.ui.fragment.a.f45609a.m(), new StringBundle("episode_param", l.d(baseEpisode)), new StringBundle("shorts_label_param", l.d(shortsLabel)), new StringBundle("from", from));
        }

        private a() {
        }
    }

    /* compiled from: TagFilterFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements SelectableAdapter.d<TagFilterTab> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, TagFilterTab d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            TagFilterFragment.J(TagFilterFragment.this).f39663a.setSelectedIndex(i10);
            TagFilterFragment.this.f46870j = i10;
            TagFilterFragment.J(TagFilterFragment.this).f39664b.setCurrentItem(TagFilterFragment.this.f46870j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TagFilterFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46883a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46883a = function;
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
            return this.f46883a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46883a.invoke(obj);
        }
    }

    public static final /* synthetic */ FragmentTagFilterBinding J(TagFilterFragment tagFilterFragment) {
        return (FragmentTagFilterBinding) tagFilterFragment.A();
    }

    private final FragmentStateAdapter R() {
        this.f46875o.clear();
        List<TagFilterTab> list = this.f46876p;
        final ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        for (TagFilterTab tagFilterTab : list) {
            arrayList.add(Long.valueOf(Integer.hashCode(tagFilterTab.getId())));
        }
        return new FragmentStateAdapter() { // from class: com.startshorts.androidplayer.ui.fragment.tag.TagFilterFragment$createFragmentStateAdapter$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(TagFilterFragment.this);
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public boolean containsItem(long j10) {
                return arrayList.contains(Long.valueOf(j10));
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int i10) {
                BaseEpisode baseEpisode;
                DiscoverShorts discoverShorts;
                ShortsLabel shortsLabel;
                List list2;
                String str;
                List list3;
                TagFilterListFragment.a aVar = TagFilterListFragment.L;
                baseEpisode = TagFilterFragment.this.f46871k;
                discoverShorts = TagFilterFragment.this.f46872l;
                shortsLabel = TagFilterFragment.this.f46873m;
                if (shortsLabel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mShortLabel");
                    shortsLabel = null;
                }
                list2 = TagFilterFragment.this.f46876p;
                int id2 = ((TagFilterTab) list2.get(i10)).getId();
                str = TagFilterFragment.this.f46874n;
                if (str == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFrom");
                    str = null;
                }
                TagFilterListFragment a10 = aVar.a(baseEpisode, discoverShorts, shortsLabel, id2, str);
                list3 = TagFilterFragment.this.f46875o;
                list3.add(new WeakReference(a10));
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

    private final TagViewModel S() {
        return (TagViewModel) this.f46880t.getValue();
    }

    private final void T(List<TagFilterTab> list) {
        this.f46876p.clear();
        this.f46876p.addAll(list);
        SelectableAdapter selectableAdapter = new SelectableAdapter(R$layout.item_tag_filter_tab);
        selectableAdapter.I(this.f46870j);
        selectableAdapter.H(false);
        selectableAdapter.J(new b());
        TabView tabView = ((FragmentTagFilterBinding) A()).f39663a;
        List<TagFilterTab> list2 = this.f46876p;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        tabView.a(list2, selectableAdapter, null, new CatchExceptionLinearLayoutManager(requireActivity, 0, false));
        ((FragmentTagFilterBinding) A()).f39663a.setSelectedIndex(this.f46870j);
        V();
    }

    private final void U() {
        ViewGroup.LayoutParams layoutParams;
        ed.a aVar = ed.a.f51339a;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        aVar.b(requireActivity, true);
        View findViewById = requireActivity().findViewById(R$id.toolbar_view);
        this.f46877q = findViewById;
        ViewGroup.MarginLayoutParams marginLayoutParams = null;
        if (findViewById != null) {
            layoutParams = findViewById.getLayoutParams();
        } else {
            layoutParams = null;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        }
        if (marginLayoutParams != null) {
            this.f46879s = Integer.valueOf(marginLayoutParams.topMargin);
            View view = this.f46877q;
            if (view != null) {
                b0.i(view, 0, DeviceUtil.f48146a.J(), 0, 0, 13, null);
            }
        }
        ImageView imageView = new ImageView(requireActivity());
        ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(-1, DeviceUtil.f48146a.J());
        layoutParams2.topToTop = 0;
        imageView.setLayoutParams(layoutParams2);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setBackgroundResource(R$color.color_common_page_bg);
        this.f46878r = imageView;
        ViewGroup viewGroup = (ViewGroup) requireActivity().findViewById(R$id.root_layout);
        if (viewGroup != null) {
            viewGroup.addView(this.f46878r, 0);
        }
    }

    private final void V() {
        ViewPager2 viewPager2 = ((FragmentTagFilterBinding) A()).f39664b;
        FragmentStateAdapter R = R();
        viewPager2.setAdapter(R);
        Intrinsics.checkNotNull(viewPager2);
        d.a(viewPager2, false);
        d.b(viewPager2, 2);
        viewPager2.registerOnPageChangeCallback(this.f46881u);
        int i10 = this.f46870j;
        if (i10 >= 0 && i10 < R.getItemCount()) {
            ((FragmentTagFilterBinding) A()).f39664b.setCurrentItem(this.f46870j, false);
        }
    }

    private final boolean W() {
        ShortsLabel shortsLabel;
        BaseEpisode baseEpisode;
        String string;
        String string2;
        String string3;
        Bundle arguments = getArguments();
        DiscoverShorts discoverShorts = null;
        if (arguments != null && (string3 = arguments.getString("shorts_label_param")) != null) {
            shortsLabel = (ShortsLabel) l.b(string3, ShortsLabel.class);
        } else {
            shortsLabel = null;
        }
        Bundle arguments2 = getArguments();
        if (arguments2 != null && (string2 = arguments2.getString("episode_param")) != null) {
            baseEpisode = (BaseEpisode) l.b(string2, BaseEpisode.class);
        } else {
            baseEpisode = null;
        }
        this.f46871k = baseEpisode;
        Bundle arguments3 = getArguments();
        if (arguments3 != null && (string = arguments3.getString("shorts_param")) != null) {
            discoverShorts = (DiscoverShorts) l.b(string, DiscoverShorts.class);
        }
        this.f46872l = discoverShorts;
        Bundle arguments4 = getArguments();
        this.f46874n = (arguments4 == null || (r1 = arguments4.getString("from")) == null) ? "" : "";
        if (shortsLabel == null) {
            g("shortLabel is null");
            h();
            return false;
        }
        this.f46873m = shortsLabel;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TagViewModel X(final TagFilterFragment tagFilterFragment) {
        TagViewModel tagViewModel = (TagViewModel) new ViewModelProvider(tagFilterFragment).get(TagViewModel.class);
        tagViewModel.B().observe(tagFilterFragment, new c(new Function1() { // from class: yi.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Y;
                Y = TagFilterFragment.Y(TagFilterFragment.this, (com.startshorts.androidplayer.viewmodel.tag.c) obj);
                return Y;
            }
        }));
        return tagViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y(TagFilterFragment tagFilterFragment, com.startshorts.androidplayer.viewmodel.tag.c cVar) {
        if (cVar instanceof c.a) {
            tagFilterFragment.T(((c.a) cVar).a());
            return Unit.f60915a;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_tag_filter;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!W()) {
            return;
        }
        super.onViewCreated(view, bundle);
        U();
        ShortsLabel shortsLabel = this.f46873m;
        if (shortsLabel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mShortLabel");
            shortsLabel = null;
        }
        String labelName = shortsLabel.getLabelName();
        if (labelName != null) {
            F(labelName);
        }
        TagViewModel S = S();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        S.H(new d.a(requireContext, this.f46870j));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "TagFilterFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        ViewGroup viewGroup;
        super.v();
        View view = this.f46878r;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                viewGroup = (ViewGroup) parent;
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                viewGroup.removeView(view);
            }
        }
        this.f46878r = null;
        Integer num = this.f46879s;
        if (num != null) {
            int intValue = num.intValue();
            View view2 = this.f46877q;
            if (view2 != null) {
                b0.i(view2, 0, intValue, 0, 0, 13, null);
            }
        }
        this.f46877q = null;
        if (B()) {
            ViewPager2 viewPager2 = ((FragmentTagFilterBinding) A()).f39664b;
            viewPager2.setAdapter(null);
            viewPager2.unregisterOnPageChangeCallback(this.f46881u);
        }
        this.f46875o.clear();
    }
}
