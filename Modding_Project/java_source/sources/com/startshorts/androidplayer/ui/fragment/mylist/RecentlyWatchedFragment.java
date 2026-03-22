package com.startshorts.androidplayer.ui.fragment.mylist;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.WrapperAdapter;
import com.startshorts.androidplayer.adapter.mylist.RecentlyWatchedAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshEpisodeNumEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshShortsCollectEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.mylist.WatchHistory;
import com.startshorts.androidplayer.databinding.FragmentRecentlyWatchedBinding;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.RefreshFragment;
import com.startshorts.androidplayer.ui.fragment.mylist.n0;
import com.startshorts.androidplayer.ui.view.act.ActBanner;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.WatchHistoryViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.b;
import com.startshorts.androidplayer.viewmodel.mylist.d;
import com.startshorts.androidplayer.viewmodel.mylist.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
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
/* compiled from: RecentlyWatchedFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRecentlyWatchedFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentlyWatchedFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,613:1\n2318#2,14:614\n1863#2,2:628\n1863#2,2:630\n1863#2,2:632\n1863#2,2:634\n1782#2,4:636\n360#2,7:640\n1863#2:647\n1864#2:649\n1#3:648\n*S KotlinDebug\n*F\n+ 1 RecentlyWatchedFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment\n*L\n293#1:614,14\n306#1:628,2\n342#1:630,2\n361#1:632,2\n391#1:634,2\n407#1:636,4\n538#1:640,7\n107#1:647\n107#1:649\n*E\n"})
/* loaded from: classes7.dex */
public final class RecentlyWatchedFragment extends RefreshFragment<WatchHistory, FragmentRecentlyWatchedBinding> {
    @NotNull
    public static final a K = new a(null);
    @NotNull
    private final ms.i F = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.f0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            WatchHistoryViewModel y12;
            y12 = RecentlyWatchedFragment.y1(RecentlyWatchedFragment.this);
            return y12;
        }
    });
    @NotNull
    private final ms.i G = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.g0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CollectionViewModel v12;
            v12 = RecentlyWatchedFragment.v1(RecentlyWatchedFragment.this);
            return v12;
        }
    });
    private boolean H;
    @Nullable
    private kotlinx.coroutines.r I;
    @Nullable
    private ActBanner J;

    /* compiled from: RecentlyWatchedFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: RecentlyWatchedFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BaseAdapter.b<WatchHistory> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecentlyWatchedAdapter f46323b;

        b(RecentlyWatchedAdapter recentlyWatchedAdapter) {
            this.f46323b = recentlyWatchedAdapter;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, WatchHistory d10, int i10) {
            ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment;
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            int i11 = 1;
            if (RecentlyWatchedFragment.this.t1()) {
                if (!d10.isSelected() && RecentlyWatchedFragment.this.q1() >= 24) {
                    return;
                }
                d10.setSelected(!d10.isSelected());
                this.f46323b.notifyItemChanged(i10, "update_checkbox");
                Fragment parentFragment = RecentlyWatchedFragment.this.getParentFragment();
                if (parentFragment instanceof ContainerRecentlyWatchedFragment) {
                    containerRecentlyWatchedFragment = (ContainerRecentlyWatchedFragment) parentFragment;
                } else {
                    containerRecentlyWatchedFragment = null;
                }
                if (containerRecentlyWatchedFragment != null) {
                    containerRecentlyWatchedFragment.i0(false, RecentlyWatchedFragment.this.s1());
                    return;
                }
                return;
            }
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            Context requireContext = RecentlyWatchedFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            ImmersionParams immersionParams = new ImmersionParams();
            immersionParams.setFrom("recently");
            if (d10.getEpisodeNum() == 0) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A1(RecentlyWatchedFragment recentlyWatchedFragment, com.startshorts.androidplayer.viewmodel.mylist.e eVar) {
        if (eVar instanceof e.b) {
            recentlyWatchedFragment.D1(((e.b) eVar).a());
        } else if (eVar instanceof e.a) {
            recentlyWatchedFragment.I1(((e.a) eVar).a());
            Context context = recentlyWatchedFragment.getContext();
            if (context != null) {
                recentlyWatchedFragment.C1(context);
            }
            gt.g.d(LifecycleOwnerKt.getLifecycleScope(recentlyWatchedFragment), null, null, new RecentlyWatchedFragment$mWatchHistoryViewModel$2$1$2$1(null), 3, null);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    private final void B1(long j10, int i10) {
        p1().J(new d.b(j10, i10));
    }

    private final void D1(List<WatchHistory> list) {
        ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment;
        List<WatchHistory> d02;
        Object obj;
        ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment2 = null;
        if (P0() && t1() && (d02 = d0()) != null && list != null) {
            for (WatchHistory watchHistory : list) {
                Iterator<T> it = d02.iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj = it.next();
                        if (watchHistory.getId() == ((WatchHistory) obj).getId()) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                WatchHistory watchHistory2 = (WatchHistory) obj;
                if (watchHistory2 != null) {
                    watchHistory.setSelected(watchHistory2.isSelected());
                }
            }
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        RefreshFragment.S0(this, list, false, null, 6, null);
        if (!P0()) {
            List<WatchHistory> d03 = d0();
            if (d03 == null || d03.isEmpty()) {
                Fragment parentFragment = getParentFragment();
                if (parentFragment instanceof ContainerRecentlyWatchedFragment) {
                    containerRecentlyWatchedFragment = (ContainerRecentlyWatchedFragment) parentFragment;
                } else {
                    containerRecentlyWatchedFragment = null;
                }
                if (containerRecentlyWatchedFragment != null) {
                    containerRecentlyWatchedFragment.S();
                }
                Fragment parentFragment2 = getParentFragment();
                if (parentFragment2 instanceof ContainerRecentlyWatchedFragment) {
                    containerRecentlyWatchedFragment2 = (ContainerRecentlyWatchedFragment) parentFragment2;
                }
                if (containerRecentlyWatchedFragment2 != null) {
                    containerRecentlyWatchedFragment2.a0();
                }
                S();
            }
        }
    }

    private final void E1() {
        k1();
        this.I = CoroutineUtil.g(CoroutineUtil.f48072a, 500L, null, new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.h0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit F1;
                F1 = RecentlyWatchedFragment.F1(RecentlyWatchedFragment.this);
                return F1;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F1(RecentlyWatchedFragment recentlyWatchedFragment) {
        recentlyWatchedFragment.k1();
        recentlyWatchedFragment.R();
        return Unit.f60915a;
    }

    private final void I1(List<Long> list) {
        ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment;
        Object obj;
        ArrayList<WatchHistory> arrayList = new ArrayList();
        List<WatchHistory> d02 = d0();
        ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment2 = null;
        if (d02 != null) {
            synchronized (d02) {
                try {
                    for (Long l10 : list) {
                        long longValue = l10.longValue();
                        Iterator<T> it = d02.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                obj = it.next();
                                if (((WatchHistory) obj).getId() == longValue) {
                                    break;
                                }
                            } else {
                                obj = null;
                                break;
                            }
                        }
                        WatchHistory watchHistory = (WatchHistory) obj;
                        if (watchHistory != null) {
                            arrayList.add(watchHistory);
                        }
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        for (WatchHistory watchHistory2 : arrayList) {
            Y(watchHistory2, "delete_item");
        }
        if (L0()) {
            Y0();
        } else {
            List<WatchHistory> d03 = d0();
            if (d03 == null || d03.isEmpty()) {
                S();
                Fragment parentFragment = getParentFragment();
                if (parentFragment instanceof ContainerRecentlyWatchedFragment) {
                    containerRecentlyWatchedFragment = (ContainerRecentlyWatchedFragment) parentFragment;
                } else {
                    containerRecentlyWatchedFragment = null;
                }
                if (containerRecentlyWatchedFragment != null) {
                    containerRecentlyWatchedFragment.a0();
                }
            }
        }
        Fragment parentFragment2 = getParentFragment();
        if (parentFragment2 instanceof ContainerRecentlyWatchedFragment) {
            containerRecentlyWatchedFragment2 = (ContainerRecentlyWatchedFragment) parentFragment2;
        }
        if (containerRecentlyWatchedFragment2 != null) {
            containerRecentlyWatchedFragment2.S();
        }
    }

    private final void k1() {
        kotlinx.coroutines.r rVar = this.I;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.I = null;
    }

    private final kotlinx.coroutines.r l1() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "checkActBannerVisible", false, new RecentlyWatchedFragment$checkActBannerVisible$1(null), 2, null);
    }

    private final void m1(WatchHistory watchHistory) {
        if (watchHistory.isCollect() == 2) {
            o1().H(getContext(), 1, 1, watchHistory.getShortPlayId(), watchHistory.getDramaId());
        } else {
            o1().I(getContext(), 1, 1, watchHistory.getShortPlayId());
        }
    }

    private final CollectionViewModel o1() {
        return (CollectionViewModel) this.G.getValue();
    }

    private final WatchHistoryViewModel p1() {
        return (WatchHistoryViewModel) this.F.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r1(RecentlyWatchedFragment recentlyWatchedFragment, WatchHistory item) {
        Intrinsics.checkNotNullParameter(item, "item");
        recentlyWatchedFragment.m1(item);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean s1() {
        if (q1() >= 24) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean t1() {
        RecentlyWatchedAdapter recentlyWatchedAdapter;
        BaseAdapter<WatchHistory> Z = Z();
        if (Z instanceof RecentlyWatchedAdapter) {
            recentlyWatchedAdapter = (RecentlyWatchedAdapter) Z;
        } else {
            recentlyWatchedAdapter = null;
        }
        if (recentlyWatchedAdapter == null || !recentlyWatchedAdapter.J()) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CollectionViewModel v1(final RecentlyWatchedFragment recentlyWatchedFragment) {
        CollectionViewModel collectionViewModel = (CollectionViewModel) new ViewModelProvider(recentlyWatchedFragment).get(CollectionViewModel.class);
        collectionViewModel.o().observe(recentlyWatchedFragment.getViewLifecycleOwner(), new n0.a(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit w12;
                w12 = RecentlyWatchedFragment.w1((ApiErrorState) obj);
                return w12;
            }
        }));
        collectionViewModel.L().observe(recentlyWatchedFragment.getViewLifecycleOwner(), new n0.a(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.k0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit x12;
                x12 = RecentlyWatchedFragment.x1(RecentlyWatchedFragment.this, (com.startshorts.androidplayer.viewmodel.mylist.b) obj);
                return x12;
            }
        }));
        return collectionViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w1(ApiErrorState apiErrorState) {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x1(RecentlyWatchedFragment recentlyWatchedFragment, com.startshorts.androidplayer.viewmodel.mylist.b bVar) {
        Object obj;
        Object obj2;
        if (bVar instanceof b.C0669b) {
            for (Number number : ((b.C0669b) bVar).a()) {
                long longValue = number.longValue();
                List<WatchHistory> d02 = recentlyWatchedFragment.d0();
                if (d02 != null) {
                    Iterator<T> it = d02.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj2 = it.next();
                            if (((WatchHistory) obj2).getShortPlayId() == ((int) longValue)) {
                                break;
                            }
                        } else {
                            obj2 = null;
                            break;
                        }
                    }
                    WatchHistory watchHistory = (WatchHistory) obj2;
                    if (watchHistory != null) {
                        watchHistory.setCollect(2);
                    }
                }
            }
            RecyclerView.Adapter<?> e02 = recentlyWatchedFragment.e0();
            if (e02 != null) {
                e02.notifyDataSetChanged();
            }
            gt.g.d(LifecycleOwnerKt.getLifecycleScope(recentlyWatchedFragment), null, null, new RecentlyWatchedFragment$mCollectionViewModel$2$1$2$2(null), 3, null);
        } else if (bVar instanceof b.a) {
            Context context = recentlyWatchedFragment.getContext();
            if (context != null) {
                n0.b(context);
            }
            int a10 = ((b.a) bVar).a();
            List<WatchHistory> d03 = recentlyWatchedFragment.d0();
            if (d03 != null) {
                Iterator<T> it2 = d03.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        obj = it2.next();
                        if (((WatchHistory) obj).getShortPlayId() == a10) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                WatchHistory watchHistory2 = (WatchHistory) obj;
                if (watchHistory2 != null) {
                    watchHistory2.setCollect(1);
                }
            }
            RecyclerView.Adapter<?> e03 = recentlyWatchedFragment.e0();
            if (e03 != null) {
                e03.notifyDataSetChanged();
            }
            gt.g.d(LifecycleOwnerKt.getLifecycleScope(recentlyWatchedFragment), null, null, new RecentlyWatchedFragment$mCollectionViewModel$2$1$2$4(null), 3, null);
        } else {
            Unit unit = Unit.f60915a;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WatchHistoryViewModel y1(final RecentlyWatchedFragment recentlyWatchedFragment) {
        WatchHistoryViewModel watchHistoryViewModel = (WatchHistoryViewModel) new ViewModelProvider(recentlyWatchedFragment).get(WatchHistoryViewModel.class);
        watchHistoryViewModel.o().observe(recentlyWatchedFragment.getViewLifecycleOwner(), new n0.a(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.l0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit z12;
                z12 = RecentlyWatchedFragment.z1(RecentlyWatchedFragment.this, (ApiErrorState) obj);
                return z12;
            }
        }));
        watchHistoryViewModel.G().observe(recentlyWatchedFragment.getViewLifecycleOwner(), new n0.a(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.m0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit A1;
                A1 = RecentlyWatchedFragment.A1(RecentlyWatchedFragment.this, (com.startshorts.androidplayer.viewmodel.mylist.e) obj);
                return A1;
            }
        }));
        return watchHistoryViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z1(RecentlyWatchedFragment recentlyWatchedFragment, ApiErrorState apiErrorState) {
        boolean z10 = true;
        if (apiErrorState.getState() != 1) {
            z10 = false;
        }
        recentlyWatchedFragment.R0(null, z10, apiErrorState.getMsg());
        return Unit.f60915a;
    }

    public final void C1(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            Toast.makeText(context, R$string.download_delete_success, 0).show();
            return;
        }
        View inflate = LayoutInflater.from(context).inflate(R$layout.layout_toast_del, (ViewGroup) null);
        Toast toast = new Toast(context);
        toast.setDuration(0);
        toast.setView(inflate);
        toast.setGravity(17, 0, 0);
        toast.show();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        return R$layout.viewstub_my_list_empty_page;
    }

    public final void G1(boolean z10) {
        RecentlyWatchedAdapter recentlyWatchedAdapter;
        BaseAdapter<WatchHistory> Z = Z();
        if (Z instanceof RecentlyWatchedAdapter) {
            recentlyWatchedAdapter = (RecentlyWatchedAdapter) Z;
        } else {
            recentlyWatchedAdapter = null;
        }
        if (recentlyWatchedAdapter != null) {
            recentlyWatchedAdapter.O(z10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public boolean H0() {
        return false;
    }

    public final void H1(boolean z10) {
        RecentlyWatchedAdapter recentlyWatchedAdapter;
        BaseAdapter<WatchHistory> Z = Z();
        if (Z instanceof RecentlyWatchedAdapter) {
            recentlyWatchedAdapter = (RecentlyWatchedAdapter) Z;
        } else {
            recentlyWatchedAdapter = null;
        }
        if (recentlyWatchedAdapter != null) {
            recentlyWatchedAdapter.P(z10);
        }
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
            com.startshorts.androidplayer.bean.mylist.WatchHistory r3 = (com.startshorts.androidplayer.bean.mylist.WatchHistory) r3
            long r3 = r3.getLastWatchTime()
        L38:
            java.lang.Object r5 = r10.next()
            r6 = r5
            com.startshorts.androidplayer.bean.mylist.WatchHistory r6 = (com.startshorts.androidplayer.bean.mylist.WatchHistory) r6
            long r6 = r6.getLastWatchTime()
            int r8 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r8 <= 0) goto L49
            r2 = r5
            r3 = r6
        L49:
            boolean r5 = r10.hasNext()
            if (r5 != 0) goto L38
        L4f:
            com.startshorts.androidplayer.bean.mylist.WatchHistory r2 = (com.startshorts.androidplayer.bean.mylist.WatchHistory) r2
            if (r2 == 0) goto L5e
            long r0 = r2.getLastWatchTime()
            goto L5e
        L58:
            java.util.NoSuchElementException r10 = new java.util.NoSuchElementException
            r10.<init>()
            throw r10
        L5e:
            r9.B1(r0, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.mylist.RecentlyWatchedFragment.T0(int, int):void");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void U0(int i10, int i11) {
        super.U0(i10, i11);
        B1(-1L, i11);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public boolean W(@Nullable List<WatchHistory> list) {
        ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment;
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof ContainerRecentlyWatchedFragment) {
            containerRecentlyWatchedFragment = (ContainerRecentlyWatchedFragment) parentFragment;
        } else {
            containerRecentlyWatchedFragment = null;
        }
        if (containerRecentlyWatchedFragment != null) {
            if (containerRecentlyWatchedFragment.R()) {
                if (list != null) {
                    for (WatchHistory watchHistory : list) {
                        watchHistory.setSelected(true);
                    }
                }
            } else {
                List<WatchHistory> list2 = list;
                if (list2 != null && !list2.isEmpty()) {
                    containerRecentlyWatchedFragment.i0(false, false);
                }
            }
        }
        return super.W(list);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        m0(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.RecentlyWatchedFragment$initRecyclerView$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                WrapperAdapter wrapperAdapter;
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                int childLayoutPosition = parent.getChildLayoutPosition(view);
                RecyclerView.Adapter<?> e02 = RecentlyWatchedFragment.this.e0();
                if (e02 instanceof WrapperAdapter) {
                    wrapperAdapter = (WrapperAdapter) e02;
                } else {
                    wrapperAdapter = null;
                }
                if (wrapperAdapter != null && wrapperAdapter.b()) {
                    if (childLayoutPosition == 0) {
                        fk.z zVar = fk.z.f51786a;
                        outRect.set(zVar.r(), zVar.g(), zVar.r(), zVar.d());
                        return;
                    }
                    fk.z zVar2 = fk.z.f51786a;
                    outRect.set(zVar2.r(), 0, zVar2.r(), zVar2.d());
                } else if (childLayoutPosition < 3) {
                    fk.z zVar3 = fk.z.f51786a;
                    outRect.set(zVar3.r(), zVar3.g(), zVar3.r(), zVar3.d());
                } else {
                    fk.z zVar4 = fk.z.f51786a;
                    outRect.set(zVar4.r(), 0, zVar4.r(), zVar4.d());
                }
            }
        });
        GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext(), 3);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.RecentlyWatchedFragment$initRecyclerView$2$1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i10) {
                WrapperAdapter wrapperAdapter;
                if (i10 != 0) {
                    return 1;
                }
                RecyclerView.Adapter<?> e02 = RecentlyWatchedFragment.this.e0();
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
        RecentlyWatchedAdapter recentlyWatchedAdapter = new RecentlyWatchedAdapter();
        recentlyWatchedAdapter.M(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.i0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit r12;
                r12 = RecentlyWatchedFragment.r1(RecentlyWatchedFragment.this, (WatchHistory) obj);
                return r12;
            }
        });
        recentlyWatchedAdapter.B(new b(recentlyWatchedAdapter));
        WrapperAdapter wrapperAdapter = new WrapperAdapter();
        wrapperAdapter.d(recentlyWatchedAdapter);
        k0(wrapperAdapter);
        super.i0();
        l1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_recently_watched;
    }

    public final void n1() {
        List<WatchHistory> d02 = d0();
        if (d02 == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        synchronized (d02) {
            try {
                for (WatchHistory watchHistory : d02) {
                    if (watchHistory.isSelected()) {
                        arrayList.add(Long.valueOf(watchHistory.getId()));
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!arrayList.isEmpty()) {
            p1().J(new d.a(getContext(), arrayList));
        }
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
                E1();
            }
        }
        if (e0() != null) {
            l1();
        }
        ActBanner actBanner = this.J;
        if (actBanner != null) {
            actBanner.H();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        W0(false);
        E1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "RecentlyWatchedFragment";
    }

    public final int q1() {
        List<WatchHistory> d02 = d0();
        int i10 = 0;
        if (d02 != null) {
            List<WatchHistory> list = d02;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (WatchHistory watchHistory : list) {
                    if (watchHistory.isSelected() && (i10 = i10 + 1) < 0) {
                        CollectionsKt.x();
                    }
                }
            }
        }
        return i10;
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receiveRefreshAccountEvent");
        p1().w();
        if (!AccountRepo.f43052a.w0()) {
            X0();
            RefreshFragment.S0(this, new ArrayList(), false, null, 6, null);
            return;
        }
        R();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshCollectEvent(@NotNull RefreshShortsCollectEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receive RefreshShortsCollectEvent -> " + event);
        if (n() && event.getCollect()) {
            this.H = true;
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshEpisodeNumEvent(@NotNull RefreshEpisodeNumEvent event) {
        WrapperAdapter wrapperAdapter;
        RecyclerView.Adapter c10;
        Intrinsics.checkNotNullParameter(event, "event");
        r("receiveRefreshEpisodeNumEvent -> mPaused(" + n() + ") mDataDirty(" + this.H + ") event(" + event + ')');
        if (this.H) {
            return;
        }
        List<WatchHistory> d02 = d0();
        List<WatchHistory> list = d02;
        if (list != null && !list.isEmpty()) {
            synchronized (d02) {
                try {
                    Iterator<WatchHistory> it = d02.iterator();
                    int i10 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().getShortPlayId() == event.getShortsId()) {
                                break;
                            }
                            i10++;
                        } else {
                            i10 = -1;
                            break;
                        }
                    }
                    if (i10 != -1) {
                        if (d02.get(i10).getEpisodeNum() != event.getEpisodeNum()) {
                            d02.get(i10).setEpisodeNum(event.getEpisodeNum());
                            RecyclerView.Adapter<?> e02 = e0();
                            if (e02 instanceof WrapperAdapter) {
                                wrapperAdapter = (WrapperAdapter) e02;
                            } else {
                                wrapperAdapter = null;
                            }
                            if (wrapperAdapter != null && (c10 = wrapperAdapter.c()) != null) {
                                c10.notifyItemChanged(i10, "update_episode_num");
                            }
                        }
                    } else if (n()) {
                        this.H = true;
                    } else {
                        p1().w();
                        if (this.I == null) {
                            E1();
                        }
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        this.H = true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public boolean s0() {
        return true;
    }

    public final boolean u1() {
        RecentlyWatchedAdapter recentlyWatchedAdapter;
        List<WatchHistory> m10;
        BaseAdapter<WatchHistory> Z = Z();
        Object obj = null;
        if (Z instanceof RecentlyWatchedAdapter) {
            recentlyWatchedAdapter = (RecentlyWatchedAdapter) Z;
        } else {
            recentlyWatchedAdapter = null;
        }
        if (recentlyWatchedAdapter != null && (m10 = recentlyWatchedAdapter.m()) != null) {
            Iterator<T> it = m10.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((WatchHistory) next).isSelected()) {
                    obj = next;
                    break;
                }
            }
            obj = (WatchHistory) obj;
        }
        if (obj != null) {
            return true;
        }
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        k1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public int v0() {
        return 24;
    }
}
