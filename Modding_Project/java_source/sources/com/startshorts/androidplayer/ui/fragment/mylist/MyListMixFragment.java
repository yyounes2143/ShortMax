package com.startshorts.androidplayer.ui.fragment.mylist;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.State;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.act.ActBannerAdapter;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.WrapperAdapter;
import com.startshorts.androidplayer.adapter.mylist.MyCollectionHorizontalAdapter;
import com.startshorts.androidplayer.adapter.mylist.RecentlyWatchedHorizontalAdapter;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ResourceIndex;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshEpisodeNumEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.mylist.MyCollection;
import com.startshorts.androidplayer.bean.mylist.WatchHistory;
import com.startshorts.androidplayer.databinding.FragmentMylistMixBinding;
import com.startshorts.androidplayer.databinding.LayoutMylistHistoryHorizontalItemBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.redpoint.RedPointManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.history.CollectionListActivity;
import com.startshorts.androidplayer.ui.activity.history.WatchedRecentlyActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.activity.subs.SubsDetailActivity;
import com.startshorts.androidplayer.ui.fragment.base.RefreshFragment;
import com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment;
import com.startshorts.androidplayer.ui.fragment.mylist.e0;
import com.startshorts.androidplayer.ui.view.act.ActBanner;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.mylist.SubscribeEntranceView;
import com.startshorts.androidplayer.ui.view.pagestate.ImgTextBtnEmptyView;
import com.startshorts.androidplayer.ui.view.pagestate.MyListMyCollectionEmptyView;
import com.startshorts.androidplayer.ui.view.pagestate.SEmptyView;
import com.startshorts.androidplayer.ui.view.pagestate.SNetworkErrorView;
import com.startshorts.androidplayer.ui.view.pagestate.SOtherErrorView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.WatchHistoryViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.a;
import com.startshorts.androidplayer.viewmodel.mylist.b;
import com.startshorts.androidplayer.viewmodel.mylist.d;
import com.startshorts.androidplayer.viewmodel.mylist.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MyListMixFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMyListMixFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyListMixFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,688:1\n2318#2,14:689\n1863#2,2:703\n1#3:705\n*S KotlinDebug\n*F\n+ 1 MyListMixFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment\n*L\n353#1:689,14\n385#1:703,2\n*E\n"})
/* loaded from: classes7.dex */
public final class MyListMixFragment extends RefreshFragment<MyCollection, FragmentMylistMixBinding> {
    @NotNull
    public static final a Q = new a(null);
    private boolean H;
    @Nullable
    private kotlinx.coroutines.r I;
    @Nullable
    private ActBanner J;
    @Nullable
    private SubscribeEntranceView K;
    @Nullable
    private RecentlyWatchedHorizontalAdapter M;
    private boolean N;
    @Nullable
    private LinearLayout O;
    @Nullable
    private LayoutMylistHistoryHorizontalItemBinding P;
    @NotNull
    private final ms.i F = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.x
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            WatchHistoryViewModel M1;
            M1 = MyListMixFragment.M1(MyListMixFragment.this);
            return M1;
        }
    });
    @NotNull
    private final ms.i G = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.y
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CollectionViewModel J1;
            J1 = MyListMixFragment.J1(MyListMixFragment.this);
            return J1;
        }
    });
    @NotNull
    private final ms.i L = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.z
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            View P1;
            P1 = MyListMixFragment.P1(MyListMixFragment.this);
            return P1;
        }
    });

    /* compiled from: MyListMixFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MyListMixFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BaseAdapter.b<WatchHistory> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, WatchHistory d10, int i10) {
            int i11;
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            Context requireContext = MyListMixFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            ImmersionParams immersionParams = new ImmersionParams();
            immersionParams.setFrom("mylist_recommended");
            if (d10.getEpisodeNum() != 0) {
                i11 = 1;
            } else {
                i11 = 3;
            }
            immersionParams.setType(i11);
            if (d10.getEpisodeNum() != 0) {
                immersionParams.setEpisodeNum(d10.getEpisodeNum());
            }
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setShortsId(d10.getShortPlayId());
            immersionShortsInfo.setShortPlayCode(d10.getShortPlayCode());
            immersionShortsInfo.setShortsName(d10.getShortPlayName());
            immersionShortsInfo.setCover(d10.getCoverId());
            immersionShortsInfo.setUpack(d10.getUpack());
            immersionParams.setShortsInfo(immersionShortsInfo);
            Unit unit = Unit.f60915a;
            aVar.a(requireContext, immersionParams);
        }
    }

    /* compiled from: MyListMixFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements la.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StateViewGroup f46303a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MyListMixFragment f46304b;

        /* compiled from: MyListMixFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[State.values().length];
                try {
                    iArr[State.EMPTY.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[State.NETWORK_ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[State.OTHER_ERROR.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* compiled from: MyListMixFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class b implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MyListMixFragment f46305a;

            b(MyListMixFragment myListMixFragment) {
                this.f46305a = myListMixFragment;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f46305a.T();
                this.f46305a.R();
            }
        }

        /* compiled from: MyListMixFragment.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment$c$c  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0640c implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MyListMixFragment f46306a;

            C0640c(MyListMixFragment myListMixFragment) {
                this.f46306a = myListMixFragment;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f46306a.T();
                this.f46306a.R();
            }
        }

        c(StateViewGroup stateViewGroup, MyListMixFragment myListMixFragment) {
            this.f46303a = stateViewGroup;
            this.f46304b = myListMixFragment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(MyListMixFragment myListMixFragment) {
            myListMixFragment.Q();
            return Unit.f60915a;
        }

        @Override // la.a
        public void a(State state) {
            la.b bVar;
            la.b bVar2;
            Intrinsics.checkNotNullParameter(state, "state");
            int i10 = a.$EnumSwitchMapping$0[state.ordinal()];
            la.b bVar3 = null;
            SOtherErrorView sOtherErrorView = null;
            SNetworkErrorView sNetworkErrorView = null;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        WeakReference<la.b> a10 = this.f46303a.a(State.OTHER_ERROR);
                        if (a10 != null) {
                            bVar2 = a10.get();
                        } else {
                            bVar2 = null;
                        }
                        if (bVar2 instanceof SOtherErrorView) {
                            sOtherErrorView = (SOtherErrorView) bVar2;
                        }
                        if (sOtherErrorView != null) {
                            sOtherErrorView.setMOnRefreshListener(new C0640c(this.f46304b));
                            return;
                        }
                        return;
                    }
                    return;
                }
                WeakReference<la.b> a11 = this.f46303a.a(State.NETWORK_ERROR);
                if (a11 != null) {
                    bVar = a11.get();
                } else {
                    bVar = null;
                }
                if (bVar instanceof SNetworkErrorView) {
                    sNetworkErrorView = (SNetworkErrorView) bVar;
                }
                if (sNetworkErrorView != null) {
                    sNetworkErrorView.setMOnRefreshListener(new b(this.f46304b));
                    return;
                }
                return;
            }
            WeakReference<la.b> a12 = this.f46303a.a(State.EMPTY);
            if (a12 != null) {
                bVar3 = a12.get();
            }
            if (bVar3 instanceof SEmptyView) {
                ((SEmptyView) bVar3).v(this.f46304b.H());
            } else if (bVar3 instanceof ImgTextBtnEmptyView) {
                ImgTextBtnEmptyView imgTextBtnEmptyView = (ImgTextBtnEmptyView) bVar3;
                imgTextBtnEmptyView.v(this.f46304b.H());
                final MyListMixFragment myListMixFragment = this.f46304b;
                imgTextBtnEmptyView.setEmptyBtnClick(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.d0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit c10;
                        c10 = MyListMixFragment.c.c(MyListMixFragment.this);
                        return c10;
                    }
                });
            }
        }
    }

    /* compiled from: MyListMixFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements BaseAdapter.b<MyCollection> {
        d() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, MyCollection d10, int i10) {
            int i11;
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            RedPointManager.f42937a.d(d10.getShortPlayId());
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            Context requireContext = MyListMixFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            ImmersionParams immersionParams = new ImmersionParams();
            immersionParams.setFrom("mylist_recommended");
            if (d10.getEpisodeNum() != 0) {
                i11 = 1;
            } else {
                i11 = 3;
            }
            immersionParams.setType(i11);
            if (d10.getEpisodeNum() != 0) {
                immersionParams.setEpisodeNum(d10.getEpisodeNum());
            }
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setShortsId(d10.getShortPlayId());
            immersionShortsInfo.setShortPlayCode(d10.getShortPlayCode());
            immersionShortsInfo.setShortsName(d10.getShortPlayName());
            immersionShortsInfo.setCover(d10.getCoverId());
            immersionShortsInfo.setUpack(d10.getUpack());
            immersionParams.setShortsInfo(immersionShortsInfo);
            Unit unit = Unit.f60915a;
            aVar.a(requireContext, immersionParams);
        }
    }

    /* compiled from: MyListMixFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e implements SubscribeEntranceView.a {
        e() {
        }

        @Override // com.startshorts.androidplayer.ui.view.mylist.SubscribeEntranceView.a
        public void a() {
            EventManager.e0(EventManager.f42463a, "recently", "sub_portal", null, null, null, 28, null);
            SubsDetailActivity.a aVar = SubsDetailActivity.Q;
            Context requireContext = MyListMixFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            SubsDetailActivity.a.b(aVar, requireContext, "recently", null, null, false, "sub_portal", 28, null);
        }
    }

    private final void A1(WatchHistory watchHistory) {
        if (watchHistory.isCollect() == 2) {
            B1().H(getContext(), 1, 1, watchHistory.getShortPlayId(), watchHistory.getDramaId());
        } else {
            B1().I(getContext(), 1, 1, watchHistory.getShortPlayId());
        }
    }

    private final CollectionViewModel B1() {
        return (CollectionViewModel) this.G.getValue();
    }

    private final WatchHistoryViewModel C1() {
        return (WatchHistoryViewModel) this.F.getValue();
    }

    private final View D1() {
        return (View) this.L.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NotifyDataSetChanged"})
    public final void E1() {
        WrapperAdapter wrapperAdapter;
        RecyclerView.Adapter<?> e02 = e0();
        if (e02 instanceof WrapperAdapter) {
            wrapperAdapter = (WrapperAdapter) e02;
        } else {
            wrapperAdapter = null;
        }
        if (wrapperAdapter != null && wrapperAdapter.b()) {
            wrapperAdapter.e(null);
            wrapperAdapter.notifyDataSetChanged();
        }
        this.J = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F1() {
        WrapperAdapter wrapperAdapter;
        RecyclerView.Adapter<?> e02 = e0();
        if (e02 instanceof WrapperAdapter) {
            wrapperAdapter = (WrapperAdapter) e02;
        } else {
            wrapperAdapter = null;
        }
        if (wrapperAdapter != null && wrapperAdapter.b()) {
            wrapperAdapter.e(null);
            wrapperAdapter.notifyDataSetChanged();
        }
        this.K = null;
    }

    private final void G1() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding = this.P;
        if (layoutMylistHistoryHorizontalItemBinding != null && (recyclerView3 = layoutMylistHistoryHorizontalItemBinding.f41106c) != null) {
            recyclerView3.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        }
        LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding2 = this.P;
        if (layoutMylistHistoryHorizontalItemBinding2 != null && (recyclerView2 = layoutMylistHistoryHorizontalItemBinding2.f41106c) != null) {
            recyclerView2.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment$initHeaderRecyclerView$1
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                    Intrinsics.checkNotNullParameter(outRect, "outRect");
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    Intrinsics.checkNotNullParameter(state, "state");
                    outRect.set(0, 0, fk.z.f51786a.s(), 0);
                }
            });
        }
        RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter = new RecentlyWatchedHorizontalAdapter();
        recentlyWatchedHorizontalAdapter.L(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit H1;
                H1 = MyListMixFragment.H1(MyListMixFragment.this, (WatchHistory) obj);
                return H1;
            }
        });
        recentlyWatchedHorizontalAdapter.B(new b());
        this.M = recentlyWatchedHorizontalAdapter;
        LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding3 = this.P;
        if (layoutMylistHistoryHorizontalItemBinding3 != null && (recyclerView = layoutMylistHistoryHorizontalItemBinding3.f41106c) != null) {
            recyclerView.setAdapter(recentlyWatchedHorizontalAdapter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H1(MyListMixFragment myListMixFragment, WatchHistory item) {
        Intrinsics.checkNotNullParameter(item, "item");
        myListMixFragment.A1(item);
        return Unit.f60915a;
    }

    private final void I1() {
        StateViewGroup stateViewGroup;
        LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding = this.P;
        if (layoutMylistHistoryHorizontalItemBinding != null && (stateViewGroup = layoutMylistHistoryHorizontalItemBinding.f41107d) != null) {
            stateViewGroup.setMOnInflatedListener(new c(stateViewGroup, this));
            stateViewGroup.f(R$layout.viewstub_page_state_loading, State.LOADING);
            stateViewGroup.f(R$layout.viewstub_my_list_empty_recently_container, State.EMPTY);
            stateViewGroup.f(R$layout.viewstub_page_state_network_error, State.NETWORK_ERROR);
            stateViewGroup.f(R$layout.viewstub_page_state_other_error, State.OTHER_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CollectionViewModel J1(final MyListMixFragment myListMixFragment) {
        CollectionViewModel collectionViewModel = (CollectionViewModel) new ViewModelProvider(myListMixFragment).get(CollectionViewModel.class);
        collectionViewModel.o().observe(myListMixFragment.getViewLifecycleOwner(), new e0.a(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit K1;
                K1 = MyListMixFragment.K1(MyListMixFragment.this, (ApiErrorState) obj);
                return K1;
            }
        }));
        collectionViewModel.L().observe(myListMixFragment.getViewLifecycleOwner(), new e0.a(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit L1;
                L1 = MyListMixFragment.L1(MyListMixFragment.this, (com.startshorts.androidplayer.viewmodel.mylist.b) obj);
                return L1;
            }
        }));
        return collectionViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K1(MyListMixFragment myListMixFragment, ApiErrorState apiErrorState) {
        MyListMyCollectionEmptyView myListMyCollectionEmptyView;
        boolean z10 = true;
        if (apiErrorState.getState() != 1) {
            z10 = false;
        }
        myListMixFragment.R0(null, z10, apiErrorState.getMsg());
        LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding = myListMixFragment.P;
        if (layoutMylistHistoryHorizontalItemBinding != null && (myListMyCollectionEmptyView = layoutMylistHistoryHorizontalItemBinding.f41111h) != null) {
            jk.b0.l(myListMyCollectionEmptyView);
        }
        myListMixFragment.V1(null);
        myListMixFragment.R1(-1L, myListMixFragment.v0());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L1(MyListMixFragment myListMixFragment, com.startshorts.androidplayer.viewmodel.mylist.b bVar) {
        AppCompatImageView appCompatImageView;
        MyListMyCollectionEmptyView myListMyCollectionEmptyView;
        if (bVar instanceof b.c) {
            LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding = myListMixFragment.P;
            if (layoutMylistHistoryHorizontalItemBinding != null && (myListMyCollectionEmptyView = layoutMylistHistoryHorizontalItemBinding.f41111h) != null) {
                jk.b0.d(myListMyCollectionEmptyView);
            }
            LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding2 = myListMixFragment.P;
            if (layoutMylistHistoryHorizontalItemBinding2 != null && (appCompatImageView = layoutMylistHistoryHorizontalItemBinding2.f41105b) != null) {
                jk.b0.l(appCompatImageView);
            }
            myListMixFragment.V1(((b.c) bVar).a());
            myListMixFragment.R1(-1L, myListMixFragment.v0());
        } else if (bVar instanceof b.C0669b) {
            myListMixFragment.U0(1, myListMixFragment.v0());
        } else if (bVar instanceof b.a) {
            Context context = myListMixFragment.getContext();
            if (context != null) {
                e0.b(context);
            }
            myListMixFragment.U0(1, myListMixFragment.v0());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WatchHistoryViewModel M1(final MyListMixFragment myListMixFragment) {
        WatchHistoryViewModel watchHistoryViewModel = (WatchHistoryViewModel) new ViewModelProvider(myListMixFragment).get(WatchHistoryViewModel.class);
        watchHistoryViewModel.o().observe(myListMixFragment.getViewLifecycleOwner(), new e0.a(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit N1;
                N1 = MyListMixFragment.N1(MyListMixFragment.this, (ApiErrorState) obj);
                return N1;
            }
        }));
        watchHistoryViewModel.G().observe(myListMixFragment.getViewLifecycleOwner(), new e0.a(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit O1;
                O1 = MyListMixFragment.O1(MyListMixFragment.this, (com.startshorts.androidplayer.viewmodel.mylist.e) obj);
                return O1;
            }
        }));
        return watchHistoryViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N1(MyListMixFragment myListMixFragment, ApiErrorState apiErrorState) {
        BaseTextView baseTextView;
        StateViewGroup stateViewGroup;
        StateViewGroup stateViewGroup2;
        myListMixFragment.I1();
        LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding = myListMixFragment.P;
        if (layoutMylistHistoryHorizontalItemBinding != null && (stateViewGroup2 = layoutMylistHistoryHorizontalItemBinding.f41107d) != null) {
            stateViewGroup2.h(State.EMPTY);
        }
        LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding2 = myListMixFragment.P;
        if (layoutMylistHistoryHorizontalItemBinding2 != null && (stateViewGroup = layoutMylistHistoryHorizontalItemBinding2.f41107d) != null) {
            jk.b0.l(stateViewGroup);
        }
        LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding3 = myListMixFragment.P;
        if (layoutMylistHistoryHorizontalItemBinding3 != null && (baseTextView = layoutMylistHistoryHorizontalItemBinding3.f41110g) != null) {
            jk.b0.d(baseTextView);
        }
        RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter = myListMixFragment.M;
        if (recentlyWatchedHorizontalAdapter != null) {
            recentlyWatchedHorizontalAdapter.f();
        }
        RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter2 = myListMixFragment.M;
        if (recentlyWatchedHorizontalAdapter2 != null) {
            recentlyWatchedHorizontalAdapter2.notifyDataSetChanged();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O1(MyListMixFragment myListMixFragment, com.startshorts.androidplayer.viewmodel.mylist.e eVar) {
        BaseTextView baseTextView;
        StateViewGroup stateViewGroup;
        StateViewGroup stateViewGroup2;
        BaseTextView baseTextView2;
        StateViewGroup stateViewGroup3;
        if (eVar instanceof e.b) {
            e.b bVar = (e.b) eVar;
            List<WatchHistory> a10 = bVar.a();
            if (a10 != null && !a10.isEmpty()) {
                List<WatchHistory> a11 = bVar.a();
                RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter = myListMixFragment.M;
                if (recentlyWatchedHorizontalAdapter != null) {
                    recentlyWatchedHorizontalAdapter.f();
                }
                RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter2 = myListMixFragment.M;
                if (recentlyWatchedHorizontalAdapter2 != null) {
                    recentlyWatchedHorizontalAdapter2.e(a11);
                }
                RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter3 = myListMixFragment.M;
                if (recentlyWatchedHorizontalAdapter3 != null) {
                    recentlyWatchedHorizontalAdapter3.notifyDataSetChanged();
                }
                LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding = myListMixFragment.P;
                if (layoutMylistHistoryHorizontalItemBinding != null && (stateViewGroup3 = layoutMylistHistoryHorizontalItemBinding.f41107d) != null) {
                    jk.b0.d(stateViewGroup3);
                }
                LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding2 = myListMixFragment.P;
                if (layoutMylistHistoryHorizontalItemBinding2 != null && (baseTextView2 = layoutMylistHistoryHorizontalItemBinding2.f41110g) != null) {
                    jk.b0.l(baseTextView2);
                }
            } else {
                myListMixFragment.I1();
                LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding3 = myListMixFragment.P;
                if (layoutMylistHistoryHorizontalItemBinding3 != null && (stateViewGroup2 = layoutMylistHistoryHorizontalItemBinding3.f41107d) != null) {
                    stateViewGroup2.h(State.EMPTY);
                }
                LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding4 = myListMixFragment.P;
                if (layoutMylistHistoryHorizontalItemBinding4 != null && (stateViewGroup = layoutMylistHistoryHorizontalItemBinding4.f41107d) != null) {
                    jk.b0.l(stateViewGroup);
                }
                RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter4 = myListMixFragment.M;
                if (recentlyWatchedHorizontalAdapter4 != null) {
                    recentlyWatchedHorizontalAdapter4.f();
                }
                RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter5 = myListMixFragment.M;
                if (recentlyWatchedHorizontalAdapter5 != null) {
                    recentlyWatchedHorizontalAdapter5.notifyDataSetChanged();
                }
                LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding5 = myListMixFragment.P;
                if (layoutMylistHistoryHorizontalItemBinding5 != null && (baseTextView = layoutMylistHistoryHorizontalItemBinding5.f41110g) != null) {
                    jk.b0.d(baseTextView);
                }
            }
        } else if (!(eVar instanceof e.a)) {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View P1(MyListMixFragment myListMixFragment) {
        return new View(myListMixFragment.getContext());
    }

    private final void Q1(long j10, int i10, int i11) {
        B1().P(new a.f(j10, i10, 1, CollectionsKt.t(1), i11));
    }

    private final void R1(long j10, int i10) {
        C1().J(new d.c(j10, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S1(List<ActResource> list) {
        int size;
        int i10;
        WrapperAdapter wrapperAdapter;
        r("showActBanner");
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ActBanner actBanner = new ActBanner(requireContext);
        ud.b bVar = ud.b.f68412a;
        ResourceIndex d12 = bVar.d1();
        if (d12 == null) {
            bVar.q4(new ResourceIndex(0, DeviceUtil.f48146a.K()));
            i10 = 0;
        } else {
            int index = d12.getIndex();
            if (TimeUtil.f48175a.n(d12.getTime(), DeviceUtil.f48146a.K(), 1)) {
                size = 0;
            } else {
                size = (index + 1) % list.size();
            }
            i10 = size;
        }
        actBanner.setLayoutParams(new FrameLayout.LayoutParams(-1, ActBannerAdapter.f37164q.a()));
        ActBanner.B(actBanner, new WeakReference(requireActivity()), "mylist_banner", fk.z.f51786a.m(), i10, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit T1;
                T1 = MyListMixFragment.T1(((Integer) obj).intValue());
                return T1;
            }
        }, getLifecycle(), list, null, 128, null);
        this.J = actBanner;
        RecyclerView.Adapter<?> e02 = e0();
        View view = null;
        if (e02 instanceof WrapperAdapter) {
            wrapperAdapter = (WrapperAdapter) e02;
        } else {
            wrapperAdapter = null;
        }
        if (wrapperAdapter != null) {
            ActBanner actBanner2 = this.J;
            if (actBanner2 != null) {
                view = x1(actBanner2);
            }
            wrapperAdapter.e(view);
            wrapperAdapter.notifyItemInserted(0);
            RecyclerView g02 = g0();
            if (g02 != null) {
                g02.post(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyListMixFragment.U1(MyListMixFragment.this);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T1(int i10) {
        ud.b.f68412a.q4(new ResourceIndex(i10, DeviceUtil.f48146a.K()));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U1(MyListMixFragment myListMixFragment) {
        RecyclerView g02 = myListMixFragment.g0();
        if (g02 != null) {
            g02.scrollToPosition(0);
        }
    }

    private final void V1(List<MyCollection> list) {
        AppCompatImageView appCompatImageView;
        MyListMyCollectionEmptyView myListMyCollectionEmptyView;
        MyListMyCollectionEmptyView myListMyCollectionEmptyView2;
        if (P0()) {
            z1();
            List<MyCollection> list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding = this.P;
                if (layoutMylistHistoryHorizontalItemBinding != null && (myListMyCollectionEmptyView2 = layoutMylistHistoryHorizontalItemBinding.f41111h) != null) {
                    jk.b0.d(myListMyCollectionEmptyView2);
                }
            } else {
                LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding2 = this.P;
                if (layoutMylistHistoryHorizontalItemBinding2 != null && (myListMyCollectionEmptyView = layoutMylistHistoryHorizontalItemBinding2.f41111h) != null) {
                    jk.b0.l(myListMyCollectionEmptyView);
                }
                LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding3 = this.P;
                if (layoutMylistHistoryHorizontalItemBinding3 != null && (appCompatImageView = layoutMylistHistoryHorizontalItemBinding3.f41105b) != null) {
                    jk.b0.d(appCompatImageView);
                }
            }
        }
        List<MyCollection> list3 = list;
        if (list3 != null && !list3.isEmpty()) {
            List<Integer> e12 = ud.b.f68412a.e1();
            if (e12 == null) {
                e12 = new ArrayList<>();
            }
            for (MyCollection myCollection : list) {
                myCollection.setShowRedPoint(e12.contains(Integer.valueOf(myCollection.getShortPlayId())));
            }
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        RefreshFragment.S0(this, list, false, null, 6, null);
        if (!P0()) {
            List<MyCollection> d02 = d0();
            if (d02 == null || d02.isEmpty()) {
                S();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W1() {
        WrapperAdapter wrapperAdapter;
        WrapperAdapter wrapperAdapter2 = null;
        View view = null;
        if (!AccountRepo.f43052a.z0()) {
            r("showSubscribeEntrance");
            if (this.K == null) {
                Context requireContext = requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                SubscribeEntranceView subscribeEntranceView = new SubscribeEntranceView(requireContext);
                this.K = subscribeEntranceView;
                subscribeEntranceView.setMListener(new e());
                EventManager.k0(EventManager.f42463a, "recently", "sub_portal", null, null, 12, null);
            }
            RecyclerView.Adapter<?> e02 = e0();
            if (e02 instanceof WrapperAdapter) {
                wrapperAdapter = (WrapperAdapter) e02;
            } else {
                wrapperAdapter = null;
            }
            if (wrapperAdapter != null) {
                SubscribeEntranceView subscribeEntranceView2 = this.K;
                if (subscribeEntranceView2 != null) {
                    view = x1(subscribeEntranceView2);
                }
                wrapperAdapter.e(view);
                wrapperAdapter.notifyItemInserted(0);
                RecyclerView g02 = g0();
                if (g02 != null) {
                    g02.post(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.v
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyListMixFragment.X1(MyListMixFragment.this);
                        }
                    });
                    return;
                }
                return;
            }
            return;
        }
        F1();
        if (isAdded() && getContext() != null) {
            RecyclerView.Adapter<?> e03 = e0();
            if (e03 instanceof WrapperAdapter) {
                wrapperAdapter2 = (WrapperAdapter) e03;
            }
            if (wrapperAdapter2 != null) {
                wrapperAdapter2.e(x1(D1()));
                wrapperAdapter2.notifyItemInserted(0);
                RecyclerView g03 = g0();
                if (g03 != null) {
                    g03.post(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.w
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyListMixFragment.Y1(MyListMixFragment.this);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X1(MyListMixFragment myListMixFragment) {
        RecyclerView g02 = myListMixFragment.g0();
        if (g02 != null) {
            g02.scrollToPosition(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y1(MyListMixFragment myListMixFragment) {
        RecyclerView g02 = myListMixFragment.g0();
        if (g02 != null) {
            g02.scrollToPosition(0);
        }
    }

    private final void Z1() {
        y1();
        this.I = CoroutineUtil.g(CoroutineUtil.f48072a, 500L, null, new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.a0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit a22;
                a22 = MyListMixFragment.a2(MyListMixFragment.this);
                return a22;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a2(MyListMixFragment myListMixFragment) {
        myListMixFragment.y1();
        myListMixFragment.R();
        return Unit.f60915a;
    }

    private final View u1() {
        View root;
        AppCompatImageView appCompatImageView;
        BaseTextView baseTextView;
        LayoutMylistHistoryHorizontalItemBinding b10 = LayoutMylistHistoryHorizontalItemBinding.b(LayoutInflater.from(getContext()));
        this.P = b10;
        if (b10 != null && (baseTextView = b10.f41110g) != null) {
            baseTextView.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MyListMixFragment.v1(MyListMixFragment.this, view);
                }
            });
        }
        LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding = this.P;
        if (layoutMylistHistoryHorizontalItemBinding != null && (appCompatImageView = layoutMylistHistoryHorizontalItemBinding.f41105b) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MyListMixFragment.w1(MyListMixFragment.this, view);
                }
            });
        }
        I1();
        G1();
        LayoutMylistHistoryHorizontalItemBinding layoutMylistHistoryHorizontalItemBinding2 = this.P;
        if (layoutMylistHistoryHorizontalItemBinding2 == null || (root = layoutMylistHistoryHorizontalItemBinding2.getRoot()) == null) {
            return new View(getContext());
        }
        return root;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v1(MyListMixFragment myListMixFragment, View view) {
        Context context = myListMixFragment.getContext();
        if (context != null) {
            WatchedRecentlyActivity.f45252p.a(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w1(MyListMixFragment myListMixFragment, View view) {
        Context context = myListMixFragment.getContext();
        if (context != null) {
            CollectionListActivity.f45251p.a(context);
        }
    }

    private final View x1(View view) {
        if (view.getParent() != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                return (View) parent;
            }
            return null;
        }
        LinearLayout linearLayout = this.O;
        if (linearLayout != null) {
            if (linearLayout.getChildCount() > 1) {
                linearLayout.removeViewAt(0);
            }
            linearLayout.addView(view, 0);
        } else {
            View u12 = u1();
            LinearLayout linearLayout2 = new LinearLayout(view.getContext());
            linearLayout2.setPadding(0, fk.z.f51786a.b(), 0, 0);
            linearLayout2.setOrientation(1);
            linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            linearLayout2.addView(view);
            Unit unit = Unit.f60915a;
            linearLayout2.setClipChildren(false);
            linearLayout2.setClipToPadding(false);
            linearLayout2.addView(u12);
            this.O = linearLayout2;
        }
        return this.O;
    }

    private final void y1() {
        kotlinx.coroutines.r rVar = this.I;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.I = null;
    }

    private final kotlinx.coroutines.r z1() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "checkActBannerVisible", false, new MyListMixFragment$checkActBannerVisible$1(this, null), 2, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        return R$layout.viewstub_my_list_empty;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public boolean H0() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void T0(int r10, int r11) {
        /*
            r9 = this;
            super.T0(r10, r11)
            java.util.List r10 = r9.d0()
            java.util.Collection r10 = (java.util.Collection) r10
            r0 = -1
            if (r10 == 0) goto L5e
            boolean r10 = r10.isEmpty()
            if (r10 == 0) goto L14
            goto L5e
        L14:
            java.util.List r10 = r9.d0()
            if (r10 == 0) goto L5e
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            java.util.Iterator r10 = r10.iterator()
            boolean r2 = r10.hasNext()
            if (r2 == 0) goto L58
            java.lang.Object r2 = r10.next()
            boolean r3 = r10.hasNext()
            if (r3 != 0) goto L31
            goto L4f
        L31:
            r3 = r2
            com.startshorts.androidplayer.bean.mylist.MyCollection r3 = (com.startshorts.androidplayer.bean.mylist.MyCollection) r3
            long r3 = r3.getCollectTime()
        L38:
            java.lang.Object r5 = r10.next()
            r6 = r5
            com.startshorts.androidplayer.bean.mylist.MyCollection r6 = (com.startshorts.androidplayer.bean.mylist.MyCollection) r6
            long r6 = r6.getCollectTime()
            int r8 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r8 <= 0) goto L49
            r2 = r5
            r3 = r6
        L49:
            boolean r5 = r10.hasNext()
            if (r5 != 0) goto L38
        L4f:
            com.startshorts.androidplayer.bean.mylist.MyCollection r2 = (com.startshorts.androidplayer.bean.mylist.MyCollection) r2
            if (r2 == 0) goto L5e
            long r0 = r2.getCollectTime()
            goto L5e
        L58:
            java.util.NoSuchElementException r10 = new java.util.NoSuchElementException
            r10.<init>()
            throw r10
        L5e:
            java.util.List r10 = r9.d0()
            if (r10 == 0) goto L69
            int r10 = r10.size()
            goto L6a
        L69:
            r10 = 0
        L6a:
            r9.Q1(r0, r11, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment.T0(int, int):void");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void U0(int i10, int i11) {
        super.U0(i10, i11);
        Q1(-1L, i11, 0);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        m0(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment$initRecyclerView$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                WrapperAdapter wrapperAdapter;
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                int childLayoutPosition = parent.getChildLayoutPosition(view);
                RecyclerView.Adapter<?> e02 = MyListMixFragment.this.e0();
                if (e02 instanceof WrapperAdapter) {
                    wrapperAdapter = (WrapperAdapter) e02;
                } else {
                    wrapperAdapter = null;
                }
                if (wrapperAdapter != null && wrapperAdapter.b()) {
                    if (childLayoutPosition == 0) {
                        outRect.set(0, 0, 0, 0);
                        return;
                    }
                    fk.z zVar = fk.z.f51786a;
                    outRect.set(zVar.m(), 0, zVar.m(), zVar.b());
                    return;
                }
                fk.z zVar2 = fk.z.f51786a;
                outRect.set(zVar2.m(), 0, zVar2.m(), zVar2.b());
            }
        });
        GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext(), 3);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment$initRecyclerView$2$1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i10) {
                WrapperAdapter wrapperAdapter;
                if (i10 != 0) {
                    return 1;
                }
                RecyclerView.Adapter<?> e02 = MyListMixFragment.this.e0();
                if (e02 instanceof WrapperAdapter) {
                    wrapperAdapter = (WrapperAdapter) e02;
                } else {
                    wrapperAdapter = null;
                }
                if (wrapperAdapter == null || !wrapperAdapter.b()) {
                    return 1;
                }
                return 3;
            }
        });
        n0(gridLayoutManager);
        MyCollectionHorizontalAdapter myCollectionHorizontalAdapter = new MyCollectionHorizontalAdapter("mylist_recommended");
        myCollectionHorizontalAdapter.B(new d());
        WrapperAdapter wrapperAdapter = new WrapperAdapter();
        wrapperAdapter.d(myCollectionHorizontalAdapter);
        k0(wrapperAdapter);
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_mylist_mix;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        ActBanner actBanner = this.J;
        if (actBanner != null) {
            actBanner.F();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        r("onResume -> mDataDirty(" + this.H + ')');
        if (this.H) {
            this.H = false;
            if (this.I == null) {
                Z1();
            }
        }
        if (e0() != null) {
            z1();
        }
        ActBanner actBanner = this.J;
        if (actBanner != null) {
            actBanner.H();
        }
        if (this.N) {
            this.N = false;
            T();
            R();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        W0(false);
        Z1();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        gt.g.d(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new MyListMixFragment$onViewCreated$1(this, null), 3, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "MyListMixFragment";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receiveRefreshAccountEvent");
        B1().w();
        if (!AccountRepo.f43052a.w0()) {
            X0();
            RefreshFragment.S0(this, new ArrayList(), false, null, 6, null);
            return;
        }
        Q1(-1L, v0(), 0);
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshEpisodeNumEvent(@NotNull RefreshEpisodeNumEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public boolean s0() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        y1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public int v0() {
        return 24;
    }
}
