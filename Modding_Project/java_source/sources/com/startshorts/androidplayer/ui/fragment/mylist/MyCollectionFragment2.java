package com.startshorts.androidplayer.ui.fragment.mylist;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.WrapperAdapter;
import com.startshorts.androidplayer.adapter.mylist.MyCollectionHorizontalAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshShortsCollectEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.mylist.CancelCollectBatchRequest;
import com.startshorts.androidplayer.bean.mylist.CollectIdRequest;
import com.startshorts.androidplayer.bean.mylist.MyCollection;
import com.startshorts.androidplayer.databinding.FragmentMyCollectionBinding;
import com.startshorts.androidplayer.manager.redpoint.RedPointManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.RefreshFragment;
import com.startshorts.androidplayer.ui.fragment.mylist.m;
import com.startshorts.androidplayer.ui.view.act.ActBanner;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.a;
import com.startshorts.androidplayer.viewmodel.mylist.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
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
/* compiled from: MyCollectionFragment2.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMyCollectionFragment2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCollectionFragment2.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,550:1\n1863#2,2:551\n1863#2,2:553\n1863#2,2:555\n2318#2,14:557\n1863#2,2:571\n1863#2,2:573\n1782#2,4:575\n*S KotlinDebug\n*F\n+ 1 MyCollectionFragment2.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2\n*L\n114#1:551,2\n133#1:553,2\n140#1:555,2\n302#1:557,14\n325#1:571,2\n357#1:573,2\n375#1:575,4\n*E\n"})
/* loaded from: classes7.dex */
public final class MyCollectionFragment2 extends RefreshFragment<MyCollection, FragmentMyCollectionBinding> {
    @NotNull
    public static final a K = new a(null);
    private boolean F;
    @NotNull
    private final ms.i G = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CollectionViewModel q12;
            q12 = MyCollectionFragment2.q1(MyCollectionFragment2.this);
            return q12;
        }
    });
    private boolean H;
    @Nullable
    private kotlinx.coroutines.r I;
    @Nullable
    private ActBanner J;

    /* compiled from: MyCollectionFragment2.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MyCollectionFragment2.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BaseAdapter.b<MyCollection> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MyCollectionHorizontalAdapter f46293b;

        b(MyCollectionHorizontalAdapter myCollectionHorizontalAdapter) {
            this.f46293b = myCollectionHorizontalAdapter;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, MyCollection d10, int i10) {
            ContainerMyCollectionFragment containerMyCollectionFragment;
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            int i11 = 1;
            if (MyCollectionFragment2.this.o1()) {
                if (!d10.isSelected() && MyCollectionFragment2.this.m1() >= 24) {
                    return;
                }
                d10.setSelected(!d10.isSelected());
                this.f46293b.notifyItemChanged(i10, "update_checkbox");
                Fragment parentFragment = MyCollectionFragment2.this.getParentFragment();
                if (parentFragment instanceof ContainerMyCollectionFragment) {
                    containerMyCollectionFragment = (ContainerMyCollectionFragment) parentFragment;
                } else {
                    containerMyCollectionFragment = null;
                }
                if (containerMyCollectionFragment != null) {
                    containerMyCollectionFragment.p0(false, MyCollectionFragment2.this.n1());
                    return;
                }
                return;
            }
            RedPointManager.f42937a.d(d10.getShortPlayId());
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            Context requireContext = MyCollectionFragment2.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            ImmersionParams immersionParams = new ImmersionParams();
            if (d10.isReservation() == 1) {
                immersionParams.setFrom("coming_soon");
            } else {
                immersionParams.setFrom("collections");
            }
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

    private final void h1() {
        kotlinx.coroutines.r rVar = this.I;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.I = null;
    }

    private final kotlinx.coroutines.r i1() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "checkActBannerVisible", false, new MyCollectionFragment2$checkActBannerVisible$1(null), 2, null);
    }

    private final void j1(List<Long> list) {
        ContainerMyCollectionFragment containerMyCollectionFragment;
        Object obj;
        ArrayList<MyCollection> arrayList = new ArrayList();
        List<MyCollection> d02 = d0();
        ContainerMyCollectionFragment containerMyCollectionFragment2 = null;
        if (d02 != null) {
            for (Long l10 : list) {
                long longValue = l10.longValue();
                Iterator<T> it = d02.iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj = it.next();
                        if (((MyCollection) obj).getId() == longValue) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                MyCollection myCollection = (MyCollection) obj;
                if (myCollection != null) {
                    arrayList.add(myCollection);
                }
            }
        }
        for (MyCollection myCollection2 : arrayList) {
            Y(myCollection2, "delete_item");
        }
        if (L0()) {
            Y0();
        } else {
            List<MyCollection> d03 = d0();
            if (d03 == null || d03.isEmpty()) {
                S();
                Fragment parentFragment = getParentFragment();
                if (parentFragment instanceof ContainerMyCollectionFragment) {
                    containerMyCollectionFragment = (ContainerMyCollectionFragment) parentFragment;
                } else {
                    containerMyCollectionFragment = null;
                }
                if (containerMyCollectionFragment != null) {
                    containerMyCollectionFragment.e0();
                }
            }
        }
        Fragment parentFragment2 = getParentFragment();
        if (parentFragment2 instanceof ContainerMyCollectionFragment) {
            containerMyCollectionFragment2 = (ContainerMyCollectionFragment) parentFragment2;
        }
        if (containerMyCollectionFragment2 != null) {
            containerMyCollectionFragment2.V();
        }
    }

    private final CollectionViewModel l1() {
        return (CollectionViewModel) this.G.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean n1() {
        if (m1() >= 24) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean o1() {
        MyCollectionHorizontalAdapter myCollectionHorizontalAdapter;
        BaseAdapter<MyCollection> Z = Z();
        if (Z instanceof MyCollectionHorizontalAdapter) {
            myCollectionHorizontalAdapter = (MyCollectionHorizontalAdapter) Z;
        } else {
            myCollectionHorizontalAdapter = null;
        }
        if (myCollectionHorizontalAdapter == null || !myCollectionHorizontalAdapter.J()) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CollectionViewModel q1(final MyCollectionFragment2 myCollectionFragment2) {
        CollectionViewModel collectionViewModel = (CollectionViewModel) new ViewModelProvider(myCollectionFragment2).get(CollectionViewModel.class);
        collectionViewModel.o().observe(myCollectionFragment2.getViewLifecycleOwner(), new m.a(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit r12;
                r12 = MyCollectionFragment2.r1(MyCollectionFragment2.this, (ApiErrorState) obj);
                return r12;
            }
        }));
        collectionViewModel.L().observe(myCollectionFragment2.getViewLifecycleOwner(), new m.a(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit s12;
                s12 = MyCollectionFragment2.s1(MyCollectionFragment2.this, (com.startshorts.androidplayer.viewmodel.mylist.b) obj);
                return s12;
            }
        }));
        return collectionViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r1(MyCollectionFragment2 myCollectionFragment2, ApiErrorState apiErrorState) {
        boolean z10 = true;
        if (apiErrorState.getState() != 1) {
            z10 = false;
        }
        myCollectionFragment2.R0(null, z10, apiErrorState.getMsg());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s1(MyCollectionFragment2 myCollectionFragment2, com.startshorts.androidplayer.viewmodel.mylist.b bVar) {
        if (bVar instanceof b.c) {
            myCollectionFragment2.u1(((b.c) bVar).a());
        } else if (bVar instanceof b.C0669b) {
            myCollectionFragment2.j1(((b.C0669b) bVar).a());
            Context context = myCollectionFragment2.getContext();
            if (context != null) {
                m.a(context);
            }
            gt.g.d(LifecycleOwnerKt.getLifecycleScope(myCollectionFragment2), null, null, new MyCollectionFragment2$mCollectionViewModel$2$1$2$1(null), 3, null);
        }
        return Unit.f60915a;
    }

    private final void t1(long j10, int i10, int i11) {
        l1().P(new a.f(j10, i10, 1, CollectionsKt.t(1), i11));
    }

    private final void u1(List<MyCollection> list) {
        List<MyCollection> d02;
        ContainerMyCollectionFragment containerMyCollectionFragment;
        List<MyCollection> d03;
        Object obj;
        List<MyCollection> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            List<Integer> e12 = ud.b.f68412a.e1();
            if (e12 == null) {
                e12 = new ArrayList<>();
            }
            for (MyCollection myCollection : list) {
                myCollection.setShowRedPoint(e12.contains(Integer.valueOf(myCollection.getShortPlayId())));
            }
        }
        ContainerMyCollectionFragment containerMyCollectionFragment2 = null;
        if (P0() && o1() && (d03 = d0()) != null && list != null) {
            for (MyCollection myCollection2 : list) {
                Iterator<T> it = d03.iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj = it.next();
                        if (myCollection2.getId() == ((MyCollection) obj).getId()) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                MyCollection myCollection3 = (MyCollection) obj;
                if (myCollection3 != null) {
                    myCollection2.setSelected(myCollection3.isSelected());
                }
            }
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        RefreshFragment.S0(this, list, false, null, 6, null);
        if (!P0() && ((d02 = d0()) == null || d02.isEmpty())) {
            Fragment parentFragment = getParentFragment();
            if (parentFragment instanceof ContainerMyCollectionFragment) {
                containerMyCollectionFragment = (ContainerMyCollectionFragment) parentFragment;
            } else {
                containerMyCollectionFragment = null;
            }
            if (containerMyCollectionFragment != null) {
                containerMyCollectionFragment.V();
            }
            Fragment parentFragment2 = getParentFragment();
            if (parentFragment2 instanceof ContainerMyCollectionFragment) {
                containerMyCollectionFragment2 = (ContainerMyCollectionFragment) parentFragment2;
            }
            if (containerMyCollectionFragment2 != null) {
                containerMyCollectionFragment2.e0();
            }
            S();
        }
        if (!this.F) {
            this.F = true;
            RecyclerView g02 = g0();
            if (g02 != null) {
                g02.postDelayed(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyCollectionFragment2.v1(MyCollectionFragment2.this);
                    }
                }, 0L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v1(MyCollectionFragment2 myCollectionFragment2) {
        ContainerMyCollectionFragment containerMyCollectionFragment;
        Fragment parentFragment = myCollectionFragment2.getParentFragment();
        if (parentFragment instanceof ContainerMyCollectionFragment) {
            containerMyCollectionFragment = (ContainerMyCollectionFragment) parentFragment;
        } else {
            containerMyCollectionFragment = null;
        }
        if (containerMyCollectionFragment != null) {
            containerMyCollectionFragment.Y();
        }
    }

    private final void w1() {
        h1();
        this.I = CoroutineUtil.g(CoroutineUtil.f48072a, 500L, null, new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit x12;
                x12 = MyCollectionFragment2.x1(MyCollectionFragment2.this);
                return x12;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x1(MyCollectionFragment2 myCollectionFragment2) {
        myCollectionFragment2.h1();
        myCollectionFragment2.R();
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        return R$layout.viewstub_my_list_empty_page;
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
            r9.t1(r0, r11, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.mylist.MyCollectionFragment2.T0(int, int):void");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void U0(int i10, int i11) {
        super.U0(i10, i11);
        t1(-1L, i11, 0);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public boolean W(@Nullable List<MyCollection> list) {
        ContainerMyCollectionFragment containerMyCollectionFragment;
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof ContainerMyCollectionFragment) {
            containerMyCollectionFragment = (ContainerMyCollectionFragment) parentFragment;
        } else {
            containerMyCollectionFragment = null;
        }
        if (containerMyCollectionFragment != null) {
            if (containerMyCollectionFragment.U()) {
                if (list != null) {
                    for (MyCollection myCollection : list) {
                        myCollection.setSelected(true);
                    }
                }
            } else {
                List<MyCollection> list2 = list;
                if (list2 != null && !list2.isEmpty()) {
                    containerMyCollectionFragment.p0(false, false);
                }
            }
        }
        return super.W(list);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        m0(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.MyCollectionFragment2$initRecyclerView$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                WrapperAdapter wrapperAdapter;
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                int childLayoutPosition = parent.getChildLayoutPosition(view);
                RecyclerView.Adapter<?> e02 = MyCollectionFragment2.this.e0();
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
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.MyCollectionFragment2$initRecyclerView$2$1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i10) {
                WrapperAdapter wrapperAdapter;
                if (i10 != 0) {
                    return 1;
                }
                RecyclerView.Adapter<?> e02 = MyCollectionFragment2.this.e0();
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
        MyCollectionHorizontalAdapter myCollectionHorizontalAdapter = new MyCollectionHorizontalAdapter(null, 1, null);
        myCollectionHorizontalAdapter.B(new b(myCollectionHorizontalAdapter));
        WrapperAdapter wrapperAdapter = new WrapperAdapter();
        wrapperAdapter.d(myCollectionHorizontalAdapter);
        k0(wrapperAdapter);
        super.i0();
        i1();
    }

    public final void k1() {
        List<MyCollection> d02 = d0();
        if (d02 == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (MyCollection myCollection : d02) {
            if (myCollection.isSelected()) {
                arrayList.add(Long.valueOf(myCollection.getId()));
                arrayList2.add(Integer.valueOf(myCollection.getShortPlayId()));
                arrayList3.add(new CollectIdRequest(myCollection.getId(), myCollection.getContentTag()));
            }
        }
        if (!arrayList.isEmpty()) {
            l1().P(new a.d(getContext(), arrayList, arrayList2, new CancelCollectBatchRequest(arrayList3)));
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_recently_watched;
    }

    public final int m1() {
        List<MyCollection> d02 = d0();
        int i10 = 0;
        if (d02 != null) {
            List<MyCollection> list = d02;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (MyCollection myCollection : list) {
                    if (myCollection.isSelected() && (i10 = i10 + 1) < 0) {
                        CollectionsKt.x();
                    }
                }
            }
        }
        return i10;
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
                w1();
            }
        }
        if (e0() != null) {
            i1();
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
        w1();
    }

    public final boolean p1() {
        MyCollectionHorizontalAdapter myCollectionHorizontalAdapter;
        List<MyCollection> m10;
        BaseAdapter<MyCollection> Z = Z();
        Object obj = null;
        if (Z instanceof MyCollectionHorizontalAdapter) {
            myCollectionHorizontalAdapter = (MyCollectionHorizontalAdapter) Z;
        } else {
            myCollectionHorizontalAdapter = null;
        }
        if (myCollectionHorizontalAdapter != null && (m10 = myCollectionHorizontalAdapter.m()) != null) {
            Iterator<T> it = m10.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((MyCollection) next).isSelected()) {
                    obj = next;
                    break;
                }
            }
            obj = (MyCollection) obj;
        }
        if (obj != null) {
            return true;
        }
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "RecentlyWatchedFragment";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receiveRefreshAccountEvent");
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

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public boolean s0() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        h1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public int v0() {
        return 24;
    }

    public final void y1(boolean z10) {
        MyCollectionHorizontalAdapter myCollectionHorizontalAdapter;
        BaseAdapter<MyCollection> Z = Z();
        if (Z instanceof MyCollectionHorizontalAdapter) {
            myCollectionHorizontalAdapter = (MyCollectionHorizontalAdapter) Z;
        } else {
            myCollectionHorizontalAdapter = null;
        }
        if (myCollectionHorizontalAdapter != null) {
            myCollectionHorizontalAdapter.M(z10);
        }
    }

    public final void z1(boolean z10) {
        MyCollectionHorizontalAdapter myCollectionHorizontalAdapter;
        BaseAdapter<MyCollection> Z = Z();
        if (Z instanceof MyCollectionHorizontalAdapter) {
            myCollectionHorizontalAdapter = (MyCollectionHorizontalAdapter) Z;
        } else {
            myCollectionHorizontalAdapter = null;
        }
        if (myCollectionHorizontalAdapter != null) {
            myCollectionHorizontalAdapter.N(z10);
        }
    }
}
