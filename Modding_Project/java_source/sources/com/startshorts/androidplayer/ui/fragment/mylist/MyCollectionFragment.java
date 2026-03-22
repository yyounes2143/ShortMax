package com.startshorts.androidplayer.ui.fragment.mylist;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.WrapperAdapter;
import com.startshorts.androidplayer.adapter.mylist.MyCollectionAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshCollectListEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshEpisodeNumEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshMyListRedPointEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshShortsCollectEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.mylist.MyCollection;
import com.startshorts.androidplayer.databinding.FragmentMyCollectionBinding;
import com.startshorts.androidplayer.manager.redpoint.RedPointManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.RefreshFragment;
import com.startshorts.androidplayer.ui.view.act.ActBanner;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.a;
import com.startshorts.androidplayer.viewmodel.mylist.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MyCollectionFragment.kt */
@ms.c
@Metadata
@SourceDebugExtension({"SMAP\nMyCollectionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCollectionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,494:1\n2318#2,14:495\n1863#2,2:509\n1863#2,2:511\n1863#2,2:513\n1863#2,2:516\n360#2,7:518\n1863#2,2:525\n1#3:515\n*S KotlinDebug\n*F\n+ 1 MyCollectionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment\n*L\n175#1:495,14\n193#1:509,2\n201#1:511,2\n236#1:513,2\n283#1:516,2\n434#1:518,7\n469#1:525,2\n*E\n"})
/* loaded from: classes7.dex */
public final class MyCollectionFragment extends RefreshFragment<MyCollection, FragmentMyCollectionBinding> {
    @NotNull
    public static final a I = new a(null);
    @NotNull
    private final ms.i F = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CollectionViewModel k12;
            k12 = MyCollectionFragment.k1(MyCollectionFragment.this);
            return k12;
        }
    });
    private boolean G;
    @Nullable
    private ActBanner H;

    /* compiled from: MyCollectionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MyCollectionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BaseAdapter.b<MyCollection> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MyCollectionAdapter f46289b;

        b(MyCollectionAdapter myCollectionAdapter) {
            this.f46289b = myCollectionAdapter;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, MyCollection d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            int i11 = 1;
            if (MyCollectionFragment.this.i1()) {
                d10.setSelected(!d10.isSelected());
                this.f46289b.notifyItemChanged(i10, "update_checkbox");
                return;
            }
            RedPointManager.f42937a.d(d10.getShortPlayId());
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            Context requireContext = MyCollectionFragment.this.requireContext();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyCollectionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46290a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46290a = function;
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
            return this.f46290a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46290a.invoke(obj);
        }
    }

    private final kotlinx.coroutines.r e1() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "checkActBannerVisible", false, new MyCollectionFragment$checkActBannerVisible$1(null), 2, null);
    }

    private final void f1(List<Long> list) {
        Object obj;
        ArrayList<MyCollection> arrayList = new ArrayList();
        List<MyCollection> d02 = d0();
        if (d02 != null) {
            synchronized (d02) {
                try {
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
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        for (MyCollection myCollection2 : arrayList) {
            Y(myCollection2, "delete_item");
        }
        if (L0()) {
            Y0();
            return;
        }
        List<MyCollection> d03 = d0();
        if (d03 == null || d03.isEmpty()) {
            S();
        }
    }

    private final CollectionViewModel h1() {
        return (CollectionViewModel) this.F.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean i1() {
        MyCollectionAdapter myCollectionAdapter;
        BaseAdapter<MyCollection> Z = Z();
        if (Z instanceof MyCollectionAdapter) {
            myCollectionAdapter = (MyCollectionAdapter) Z;
        } else {
            myCollectionAdapter = null;
        }
        if (myCollectionAdapter == null || !myCollectionAdapter.I()) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CollectionViewModel k1(final MyCollectionFragment myCollectionFragment) {
        CollectionViewModel collectionViewModel = (CollectionViewModel) new ViewModelProvider(myCollectionFragment).get(CollectionViewModel.class);
        collectionViewModel.o().observe(myCollectionFragment, new c(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit l12;
                l12 = MyCollectionFragment.l1(MyCollectionFragment.this, (ApiErrorState) obj);
                return l12;
            }
        }));
        collectionViewModel.L().observe(myCollectionFragment, new c(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m12;
                m12 = MyCollectionFragment.m1(MyCollectionFragment.this, (com.startshorts.androidplayer.viewmodel.mylist.b) obj);
                return m12;
            }
        }));
        return collectionViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l1(MyCollectionFragment myCollectionFragment, ApiErrorState apiErrorState) {
        boolean z10 = true;
        if (apiErrorState.getState() != 1) {
            z10 = false;
        }
        myCollectionFragment.R0(null, z10, apiErrorState.getMsg());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m1(MyCollectionFragment myCollectionFragment, com.startshorts.androidplayer.viewmodel.mylist.b bVar) {
        if (bVar instanceof b.c) {
            myCollectionFragment.o1(((b.c) bVar).a());
        } else if (bVar instanceof b.C0669b) {
            myCollectionFragment.f1(((b.C0669b) bVar).a());
        }
        return Unit.f60915a;
    }

    private final void n1(long j10, int i10) {
        h1().P(new a.e(j10, i10, 1, CollectionsKt.t(1)));
    }

    private final void o1(List<MyCollection> list) {
        List<MyCollection> d02;
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
        if (P0() && i1() && (d02 = d0()) != null) {
            synchronized (d02) {
                if (list != null) {
                    try {
                        for (MyCollection myCollection2 : list) {
                            Iterator<T> it = d02.iterator();
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
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        RefreshFragment.S0(this, list, false, null, 6, null);
        if (!P0()) {
            List<MyCollection> d03 = d0();
            if (d03 == null || d03.isEmpty()) {
                S();
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        return R$layout.viewstub_my_list_empty;
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
            r9.n1(r0, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.mylist.MyCollectionFragment.T0(int, int):void");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void U0(int i10, int i11) {
        super.U0(i10, i11);
        n1(-1L, i11);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public boolean W(@Nullable List<MyCollection> list) {
        boolean z10 = getParentFragment() instanceof MyListFragment;
        return super.W(list);
    }

    public final void g1() {
        List<MyCollection> d02 = d0();
        if (d02 == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        synchronized (d02) {
            try {
                for (MyCollection myCollection : d02) {
                    if (myCollection.isSelected()) {
                        arrayList.add(Long.valueOf(myCollection.getId()));
                        arrayList2.add(Integer.valueOf(myCollection.getShortPlayId()));
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!arrayList.isEmpty()) {
            h1().P(new a.c(getContext(), arrayList, arrayList2));
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        m0(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.MyCollectionFragment$initRecyclerView$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                if (parent.getChildLayoutPosition(view) == 0) {
                    fk.z zVar = fk.z.f51786a;
                    outRect.set(zVar.d(), zVar.g(), zVar.d(), zVar.b());
                    return;
                }
                fk.z zVar2 = fk.z.f51786a;
                outRect.set(zVar2.d(), 0, zVar2.d(), zVar2.b());
            }
        });
        MyCollectionAdapter myCollectionAdapter = new MyCollectionAdapter();
        myCollectionAdapter.B(new b(myCollectionAdapter));
        WrapperAdapter wrapperAdapter = new WrapperAdapter();
        wrapperAdapter.d(myCollectionAdapter);
        k0(wrapperAdapter);
        super.i0();
        e1();
    }

    public final boolean j1() {
        MyCollectionAdapter myCollectionAdapter;
        List<MyCollection> m10;
        BaseAdapter<MyCollection> Z = Z();
        Object obj = null;
        if (Z instanceof MyCollectionAdapter) {
            myCollectionAdapter = (MyCollectionAdapter) Z;
        } else {
            myCollectionAdapter = null;
        }
        if (myCollectionAdapter != null && (m10 = myCollectionAdapter.m()) != null) {
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

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_my_collection;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        ActBanner actBanner = this.H;
        if (actBanner != null) {
            actBanner.F();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        r("onResume -> mDataDirty(" + this.G + ')');
        if (this.G) {
            this.G = false;
            R();
        }
        if (e0() != null) {
            e1();
        }
        ActBanner actBanner = this.H;
        if (actBanner != null) {
            actBanner.H();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        W0(false);
    }

    public final void p1(boolean z10) {
        MyCollectionAdapter myCollectionAdapter;
        BaseAdapter<MyCollection> Z = Z();
        if (Z instanceof MyCollectionAdapter) {
            myCollectionAdapter = (MyCollectionAdapter) Z;
        } else {
            myCollectionAdapter = null;
        }
        if (myCollectionAdapter != null) {
            myCollectionAdapter.L(z10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "MyCollectionFragment";
    }

    public final void q1(boolean z10) {
        MyCollectionAdapter myCollectionAdapter;
        BaseAdapter<MyCollection> Z = Z();
        if (Z instanceof MyCollectionAdapter) {
            myCollectionAdapter = (MyCollectionAdapter) Z;
        } else {
            myCollectionAdapter = null;
        }
        if (myCollectionAdapter != null) {
            myCollectionAdapter.M(z10);
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receiveRefreshAccountEvent");
        h1().w();
        if (!AccountRepo.f43052a.w0()) {
            X0();
            RefreshFragment.S0(this, new ArrayList(), false, null, 6, null);
            return;
        }
        n1(-1L, v0());
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshCollectEvent(@NotNull RefreshShortsCollectEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receive RefreshShortsCollectEvent -> " + event);
        if (!n()) {
            return;
        }
        this.G = true;
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshCollectListEvent(@NotNull RefreshCollectListEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receive RefreshCollectListEvent -> mPaused(" + n() + ')');
        if (n()) {
            this.G = true;
        } else {
            R();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshEpisodeNumEvent(@NotNull RefreshEpisodeNumEvent event) {
        WrapperAdapter wrapperAdapter;
        RecyclerView.Adapter c10;
        Intrinsics.checkNotNullParameter(event, "event");
        r("receiveRefreshEpisodeNumEvent -> mPaused(" + n() + ") mDataDirty(" + this.G + ") event(" + event + ')');
        List<MyCollection> d02 = d0();
        if (d02 == null || this.G) {
            return;
        }
        synchronized (d02) {
            try {
                Iterator<MyCollection> it = d02.iterator();
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
                if (i10 != -1 && d02.get(i10).getEpisodeNum() != event.getEpisodeNum()) {
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
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshMyListRedPointEvent(@NotNull RefreshMyListRedPointEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        List<MyCollection> d02 = d0();
        if (d02 == null) {
            return;
        }
        synchronized (d02) {
            try {
                for (MyCollection myCollection : d02) {
                    myCollection.setShowRedPoint(event.getShortIds().contains(Integer.valueOf(myCollection.getShortPlayId())));
                }
                RecyclerView.Adapter<?> e02 = e0();
                if (e02 != null) {
                    e02.notifyDataSetChanged();
                    Unit unit = Unit.f60915a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public boolean s0() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public int v0() {
        return 20;
    }
}
