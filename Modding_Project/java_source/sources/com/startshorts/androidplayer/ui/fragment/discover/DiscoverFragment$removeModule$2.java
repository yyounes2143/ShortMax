package com.startshorts.androidplayer.ui.fragment.discover;

import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverFragment.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment$removeModule$2", f = "DiscoverFragment.kt", l = {1453}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDiscoverFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$removeModule$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1645:1\n774#2:1646\n865#2,2:1647\n1611#2,9:1649\n1863#2:1658\n1864#2:1660\n1620#2:1661\n774#2:1662\n865#2,2:1663\n1557#2:1665\n1628#2,3:1666\n1#3:1659\n*S KotlinDebug\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$removeModule$2\n*L\n1449#1:1646\n1449#1:1647,2\n1449#1:1649,9\n1449#1:1658\n1449#1:1660\n1449#1:1661\n1451#1:1662\n1451#1:1663,2\n1457#1:1665\n1457#1:1666,3\n1449#1:1659\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverFragment$removeModule$2 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f45879h;

    /* renamed from: i  reason: collision with root package name */
    int f45880i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DiscoverFragment f45881j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function1<DiscoverModule, Boolean> f45882k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverFragment.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment$removeModule$2$1", f = "DiscoverFragment.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nDiscoverFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$removeModule$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1645:1\n1863#2,2:1646\n*S KotlinDebug\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$removeModule$2$1\n*L\n1454#1:1646,2\n*E\n"})
    /* renamed from: com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment$removeModule$2$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f45883h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ List<DiscoverModule> f45884i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ DiscoverFragment f45885j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(List<? extends DiscoverModule> list, DiscoverFragment discoverFragment, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f45884i = list;
            this.f45885j = discoverFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f45884i, this.f45885j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f45883h == 0) {
                kotlin.f.b(obj);
                DiscoverFragment discoverFragment = this.f45885j;
                for (DiscoverModule discoverModule : this.f45884i) {
                    BaseAdapter<DiscoverModule> Z = discoverFragment.Z();
                    if (Z != null) {
                        kotlin.coroutines.jvm.internal.a.a(BaseAdapter.j(Z, discoverModule, null, 2, null));
                    }
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DiscoverFragment$removeModule$2(DiscoverFragment discoverFragment, Function1<? super DiscoverModule, Boolean> function1, rs.c<? super DiscoverFragment$removeModule$2> cVar) {
        super(2, cVar);
        this.f45881j = discoverFragment;
        this.f45882k = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverFragment$removeModule$2(this.f45881j, this.f45882k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverFragment$removeModule$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List list;
        DiscoverFragment.b bVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f45880i;
        if (i10 != 0) {
            if (i10 == 1) {
                list = (List) this.f45879h;
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            List<DiscoverModule> d02 = this.f45881j.d0();
            if (d02 == null) {
                return Unit.f60915a;
            }
            List<DiscoverModule> list2 = d02;
            Function1<DiscoverModule, Boolean> function1 = this.f45882k;
            ArrayList<DiscoverModule> arrayList = new ArrayList();
            for (Object obj2 : list2) {
                if (function1.invoke((DiscoverModule) obj2).booleanValue()) {
                    arrayList.add(obj2);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (DiscoverModule discoverModule : arrayList) {
                String bannerId = discoverModule.getBannerId();
                if (bannerId != null) {
                    arrayList2.add(bannerId);
                }
            }
            Set i12 = CollectionsKt.i1(arrayList2);
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : list2) {
                if (CollectionsKt.g0(i12, ((DiscoverModule) obj3).getBannerId())) {
                    arrayList3.add(obj3);
                }
            }
            List N0 = CollectionsKt.N0(CollectionsKt.g1(arrayList3));
            gt.j1 c10 = gt.q0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(N0, this.f45881j, null);
            this.f45879h = N0;
            this.f45880i = 1;
            if (gt.e.g(c10, anonymousClass1, this) == f10) {
                return f10;
            }
            list = N0;
        }
        DiscoverFragment discoverFragment = this.f45881j;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("removeModule success -> bannerIds=");
        List<DiscoverModule> list3 = list;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.z(list3, 10));
        for (DiscoverModule discoverModule2 : list3) {
            arrayList4.add(discoverModule2.getBannerId());
        }
        sb2.append(arrayList4);
        sb2.append(",modulesToBeRemoved.size=");
        sb2.append(list.size());
        discoverFragment.r(sb2.toString());
        DiscoverFragment discoverFragment2 = this.f45881j;
        List d03 = discoverFragment2.d0();
        if (d03 == null) {
            d03 = new ArrayList();
        }
        discoverFragment2.P1(d03);
        bVar = this.f45881j.K;
        bVar.c();
        return Unit.f60915a;
    }
}
