package com.startshorts.androidplayer.ui.fragment.immersion;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewStubProxy;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.adapter.tab.EpisodeTabAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.EpisodePlayingEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.ShortsDetail;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.bean.tab.EpisodeTab;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionEpisodeListBinding;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.c;
import com.startshorts.androidplayer.viewmodel.immersion.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionEpisodeListDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionEpisodeListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionEpisodeListDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,365:1\n360#2,7:366\n*S KotlinDebug\n*F\n+ 1 ImmersionEpisodeListDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog\n*L\n289#1:366,7\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionEpisodeListDialog extends BottomSheetPageStateFragment<DialogFragmentImmersionEpisodeListBinding> {
    @NotNull
    public static final a A = new a(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f46142o;

    /* renamed from: p  reason: collision with root package name */
    private final int f46143p;

    /* renamed from: q  reason: collision with root package name */
    private final float f46144q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final ms.i f46145r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final ImmersionEpisodeListDialog$mOnPageChangeCallback$1 f46146s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private String f46147t;

    /* renamed from: u  reason: collision with root package name */
    private int f46148u;

    /* renamed from: v  reason: collision with root package name */
    private int f46149v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private TabView<EpisodeTab> f46150w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private ViewPager2 f46151x;

    /* renamed from: y  reason: collision with root package name */
    private int f46152y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f46153z;

    /* compiled from: ImmersionEpisodeListDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmersionEpisodeListDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46154a;

        b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46154a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return this.f46154a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46154a.invoke(obj);
        }
    }

    /* compiled from: ImmersionEpisodeListDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements SelectableAdapter.d<EpisodeTab> {
        c() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, EpisodeTab d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            ViewPager2 viewPager2 = ImmersionEpisodeListDialog.this.f46151x;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(i10, false);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.startshorts.androidplayer.ui.fragment.immersion.ImmersionEpisodeListDialog$mOnPageChangeCallback$1] */
    public ImmersionEpisodeListDialog() {
        this.f46142o = jk.g.a(64.0f);
        this.f46143p = jk.g.a(86.0f);
        this.f46144q = fk.z.f51786a.m();
        this.f46145r = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.s
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ImmersionViewModel Z;
                Z = ImmersionEpisodeListDialog.Z(ImmersionEpisodeListDialog.this);
                return Z;
            }
        });
        this.f46146s = new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.ImmersionEpisodeListDialog$mOnPageChangeCallback$1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i10) {
                TabView tabView;
                ImmersionEpisodeListDialog immersionEpisodeListDialog = ImmersionEpisodeListDialog.this;
                immersionEpisodeListDialog.q("onPageSelected -> position(" + i10 + ')');
                ImmersionEpisodeListDialog.this.f46149v = i10;
                tabView = ImmersionEpisodeListDialog.this.f46150w;
                if (tabView != null) {
                    tabView.setSelectedIndex(i10);
                }
            }
        };
        this.f46148u = -1;
    }

    private final void U(int i10) {
        int i11;
        ViewPager2 viewPager2;
        if (i10 % 25 == 0) {
            i11 = (i10 / 25) - 1;
        } else {
            i11 = i10 / 25;
        }
        if (i11 != this.f46149v && i11 < this.f46152y && (viewPager2 = this.f46151x) != null) {
            viewPager2.setCurrentItem(i11, false);
        }
    }

    private final ImmersionViewModel V() {
        return (ImmersionViewModel) this.f46145r.getValue();
    }

    private final void W(ShortsDetail shortsDetail) {
        int updateEpisode;
        int i10;
        ImmersionActivity immersionActivity;
        int i11;
        Boolean hasTrailer = shortsDetail.getHasTrailer();
        if (hasTrailer != null) {
            this.f46153z = hasTrailer.booleanValue();
        }
        c0(shortsDetail.getPicUrl());
        e0(shortsDetail.getShortPlayName());
        f0(shortsDetail.getUpdateEpisode(), shortsDetail.getTotalEpisodes());
        d0(shortsDetail.getLabelResponseList());
        if (shortsDetail.getUpdateEpisode() == 0) {
            updateEpisode = shortsDetail.getTotalEpisodes();
        } else {
            updateEpisode = shortsDetail.getUpdateEpisode();
        }
        if (updateEpisode > 0) {
            if (this.f46153z) {
                i10 = updateEpisode + 1;
            } else {
                i10 = updateEpisode;
            }
            int i12 = i10 % 25;
            int i13 = i10 / 25;
            if (i12 != 0) {
                i13++;
            }
            this.f46152y = i13;
            FragmentActivity activity = getActivity();
            if (activity instanceof ImmersionActivity) {
                immersionActivity = (ImmersionActivity) activity;
            } else {
                immersionActivity = null;
            }
            if (immersionActivity != null) {
                i11 = immersionActivity.C5();
            } else {
                i11 = -1;
            }
            if (i11 == -1) {
                i11 = shortsDetail.getEpisodeNum();
            }
            g0(updateEpisode, i11, this.f46152y);
            Y(shortsDetail.getId(), this.f46152y, this.f46153z);
        }
    }

    private final void X(FragmentStateAdapter fragmentStateAdapter) {
        int i10;
        ViewPager2 viewPager2;
        ViewPager2 viewPager22 = this.f46151x;
        if (viewPager22 == null) {
            ViewStubProxy viewPagerViewstub = ((DialogFragmentImmersionEpisodeListBinding) n()).f38870h;
            Intrinsics.checkNotNullExpressionValue(viewPagerViewstub, "viewPagerViewstub");
            View c10 = jk.e0.c(viewPagerViewstub);
            if (c10 instanceof ViewPager2) {
                viewPager2 = (ViewPager2) c10;
            } else {
                viewPager2 = null;
            }
            this.f46151x = viewPager2;
        } else if (viewPager22 != null) {
            viewPager22.setVisibility(0);
        }
        ViewPager2 viewPager23 = this.f46151x;
        if (viewPager23 != null) {
            ViewGroup.LayoutParams layoutParams = viewPager23.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            TabView<EpisodeTab> tabView = this.f46150w;
            if (tabView != null) {
                i10 = tabView.getId();
            } else {
                i10 = -1;
            }
            layoutParams2.topToBottom = i10;
            viewPager23.setLayoutParams(layoutParams2);
            viewPager23.setAdapter(fragmentStateAdapter);
            kd.d.b(viewPager23, 2);
            viewPager23.registerOnPageChangeCallback(this.f46146s);
            int i11 = this.f46149v;
            if (i11 >= 0 && i11 < fragmentStateAdapter.getItemCount()) {
                viewPager23.setCurrentItem(this.f46149v, false);
            }
        }
    }

    private final void Y(final int i10, int i11, boolean z10) {
        final ArrayList arrayList = new ArrayList();
        int i12 = 1;
        if (1 <= i11) {
            int i13 = 1;
            while (true) {
                arrayList.add(ImmersionEpisodeListFragment.class);
                if (i13 == i11) {
                    break;
                }
                i13++;
            }
        }
        final ArrayList arrayList2 = new ArrayList();
        if (1 <= i11) {
            while (true) {
                arrayList2.add(Long.valueOf(i12));
                if (i12 == i11) {
                    break;
                }
                i12++;
            }
        }
        X(new FragmentStateAdapter(this) { // from class: com.startshorts.androidplayer.ui.fragment.immersion.ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(this);
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public boolean containsItem(long j10) {
                return arrayList2.contains(Long.valueOf(j10));
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int i14) {
                Object newInstance = arrayList.get(i14).newInstance();
                Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.fragment.immersion.ImmersionEpisodeListFragment");
                ImmersionEpisodeListFragment immersionEpisodeListFragment = (ImmersionEpisodeListFragment) newInstance;
                ImmersionEpisodeListFragment.G.a(immersionEpisodeListFragment, i10, i14 + 1, 25);
                return immersionEpisodeListFragment;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return arrayList.size();
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public long getItemId(int i14) {
                return arrayList2.get(i14).longValue();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImmersionViewModel Z(final ImmersionEpisodeListDialog immersionEpisodeListDialog) {
        ImmersionViewModel immersionViewModel = (ImmersionViewModel) new ViewModelProvider(immersionEpisodeListDialog).get(ImmersionViewModel.class);
        immersionViewModel.o().observe(immersionEpisodeListDialog, new b(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit a02;
                a02 = ImmersionEpisodeListDialog.a0(ImmersionEpisodeListDialog.this, (ApiErrorState) obj);
                return a02;
            }
        }));
        immersionViewModel.Q().observe(immersionEpisodeListDialog, new b(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit b02;
                b02 = ImmersionEpisodeListDialog.b0(ImmersionEpisodeListDialog.this, (com.startshorts.androidplayer.viewmodel.immersion.d) obj);
                return b02;
            }
        }));
        return immersionViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a0(ImmersionEpisodeListDialog immersionEpisodeListDialog, ApiErrorState apiErrorState) {
        if (apiErrorState.getState() == 1) {
            immersionEpisodeListDialog.M();
            immersionEpisodeListDialog.F();
        } else {
            immersionEpisodeListDialog.N(apiErrorState.getMsg());
            immersionEpisodeListDialog.H();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b0(ImmersionEpisodeListDialog immersionEpisodeListDialog, com.startshorts.androidplayer.viewmodel.immersion.d dVar) {
        if (dVar instanceof d.h) {
            immersionEpisodeListDialog.W(((d.h) dVar).a());
            immersionEpisodeListDialog.D();
        }
        return Unit.f60915a;
    }

    private final void c0(String str) {
        kk.f fVar = kk.f.f60747a;
        CustomFrescoView customFrescoView = ((DialogFragmentImmersionEpisodeListBinding) n()).f38863a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(str);
        id.c cVar = id.c.f53397a;
        frescoConfig.setOssWidth(cVar.b());
        frescoConfig.setOssHeight(cVar.a());
        frescoConfig.setResizeWidth(this.f46142o);
        frescoConfig.setResizeHeight(this.f46143p);
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f46144q);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    private final void d0(List<ShortsLabel> list) {
        BaseTextView baseTextView;
        List<ShortsLabel> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            for (ShortsLabel shortsLabel : list) {
                sb2.append(shortsLabel.getLabelName());
                sb2.append(" · ");
            }
            ViewStubProxy viewStubProxy = ((DialogFragmentImmersionEpisodeListBinding) n()).f38864b;
            Intrinsics.checkNotNull(viewStubProxy);
            jk.e0.g(viewStubProxy);
            View root = viewStubProxy.getRoot();
            if (root != null && (baseTextView = (BaseTextView) root.findViewById(R$id.label_tv)) != null) {
                String sb3 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
                baseTextView.setText(StringsKt.B1(sb3, 3));
            }
        }
    }

    private final void e0(String str) {
        ((DialogFragmentImmersionEpisodeListBinding) n()).f38866d.setText(str);
    }

    private final void f0(int i10, int i11) {
        ((DialogFragmentImmersionEpisodeListBinding) n()).f38868f.setText(getString(R$string.episode_list_dialog_fragment_shorts_episode_status, String.valueOf(i10), String.valueOf(i11)));
    }

    private final void g0(int i10, int i11, int i12) {
        int i13;
        int i14;
        TabView<EpisodeTab> tabView;
        TabView<EpisodeTab> tabView2 = this.f46150w;
        if (tabView2 == null) {
            ViewStubProxy tabViewViewstub = ((DialogFragmentImmersionEpisodeListBinding) n()).f38869g;
            Intrinsics.checkNotNullExpressionValue(tabViewViewstub, "tabViewViewstub");
            View c10 = jk.e0.c(tabViewViewstub);
            if (c10 instanceof TabView) {
                tabView = (TabView) c10;
            } else {
                tabView = null;
            }
            this.f46150w = tabView;
        } else if (tabView2 != null) {
            tabView2.setVisibility(0);
        }
        RecyclerView.ItemDecoration itemDecoration = new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.ImmersionEpisodeListDialog$showTabView$itemDecoration$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                if (parent.getChildLayoutPosition(view) == 0) {
                    fk.z zVar = fk.z.f51786a;
                    jk.r.a(outRect, zVar.d(), 0, zVar.s(), 0);
                    return;
                }
                jk.r.a(outRect, 0, 0, fk.z.f51786a.s(), 0);
            }
        };
        ArrayList arrayList = new ArrayList();
        int i15 = 0;
        while (true) {
            boolean z10 = true;
            if (i15 >= i12) {
                break;
            }
            if (i15 == 0) {
                i13 = 1;
            } else if (this.f46153z) {
                i13 = i15 * 25;
            } else {
                i13 = (i15 * 25) + 1;
            }
            if (this.f46153z) {
                i14 = ((i15 + 1) * 25) - 1;
            } else {
                i14 = (i15 + 1) * 25;
            }
            if (i14 > i10) {
                i14 = i10;
            }
            if (i13 == i14) {
                EpisodeTab episodeTab = new EpisodeTab(String.valueOf(i13));
                if (i13 > i11 || i11 > i14) {
                    z10 = false;
                }
                episodeTab.setSelected(z10);
                arrayList.add(episodeTab);
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i13);
                sb2.append('-');
                sb2.append(i14);
                EpisodeTab episodeTab2 = new EpisodeTab(sb2.toString());
                if (i13 > i11 || i11 > i14) {
                    z10 = false;
                }
                episodeTab2.setSelected(z10);
                arrayList.add(episodeTab2);
            }
            i15++;
        }
        Iterator it = arrayList.iterator();
        int i16 = 0;
        while (true) {
            if (it.hasNext()) {
                if (((EpisodeTab) it.next()).isSelected()) {
                    break;
                }
                i16++;
            } else {
                i16 = -1;
                break;
            }
        }
        this.f46149v = i16;
        EpisodeTabAdapter episodeTabAdapter = new EpisodeTabAdapter();
        episodeTabAdapter.K(true);
        episodeTabAdapter.J(new c());
        TabView<EpisodeTab> tabView3 = this.f46150w;
        if (tabView3 != null) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            tabView3.a(arrayList, episodeTabAdapter, itemDecoration, new CatchExceptionLinearLayoutManager(requireContext, 0, false));
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment
    public void J() {
        V().e0(new c.j(this.f46148u));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public float l() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_immersion_episode_list;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46148u == -1) {
            j("dismiss for invalid arguments -> mShortsId == -1");
            dismiss();
            return;
        }
        V().e0(new c.m(this.f46147t));
        J();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "ImmersionEpisodeListDialog";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodePlayingEvent(@NotNull EpisodePlayingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receiveEpisodePlayingEvent -> " + event);
        if (this.f46148u == event.getShortsId()) {
            U(event.getEpisodeNum());
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public void s() {
        super.s();
        ViewPager2 viewPager2 = this.f46151x;
        if (viewPager2 != null) {
            viewPager2.unregisterOnPageChangeCallback(this.f46146s);
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.startshorts.androidplayer.ui.fragment.immersion.ImmersionEpisodeListDialog$mOnPageChangeCallback$1] */
    public ImmersionEpisodeListDialog(@Nullable String str, int i10, boolean z10, @NotNull BaseBottomSheetDialogFragment.b listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f46142o = jk.g.a(64.0f);
        this.f46143p = jk.g.a(86.0f);
        this.f46144q = fk.z.f51786a.m();
        this.f46145r = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.s
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ImmersionViewModel Z;
                Z = ImmersionEpisodeListDialog.Z(ImmersionEpisodeListDialog.this);
                return Z;
            }
        });
        this.f46146s = new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.ImmersionEpisodeListDialog$mOnPageChangeCallback$1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i102) {
                TabView tabView;
                ImmersionEpisodeListDialog immersionEpisodeListDialog = ImmersionEpisodeListDialog.this;
                immersionEpisodeListDialog.q("onPageSelected -> position(" + i102 + ')');
                ImmersionEpisodeListDialog.this.f46149v = i102;
                tabView = ImmersionEpisodeListDialog.this.f46150w;
                if (tabView != null) {
                    tabView.setSelectedIndex(i102);
                }
            }
        };
        this.f46147t = str;
        this.f46148u = i10;
        this.f46153z = z10;
        u(listener);
    }
}
