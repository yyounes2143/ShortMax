package com.startshorts.androidplayer.viewmodel.mylist;

import com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo;
import com.startshorts.androidplayer.viewmodel.mylist.b;
import gt.g0;
import java.util.List;
import jk.l;
import jk.z;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CollectionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel$queryCollectionsV2$1", f = "CollectionViewModel.kt", l = {170}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CollectionViewModel$queryCollectionsV2$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48857h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ long f48858i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48859j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48860k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ List<Integer> f48861l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f48862m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ CollectionViewModel f48863n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionViewModel$queryCollectionsV2$1(long j10, int i10, int i11, List<Integer> list, int i12, CollectionViewModel collectionViewModel, rs.c<? super CollectionViewModel$queryCollectionsV2$1> cVar) {
        super(2, cVar);
        this.f48858i = j10;
        this.f48859j = i10;
        this.f48860k = i11;
        this.f48861l = list;
        this.f48862m = i12;
        this.f48863n = collectionViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CollectionViewModel$queryCollectionsV2$1(this.f48858i, this.f48859j, this.f48860k, this.f48861l, this.f48862m, this.f48863n, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CollectionViewModel$queryCollectionsV2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object j10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48857h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                j10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CollectionRepo collectionRepo = CollectionRepo.f44246a;
            long j11 = this.f48858i;
            int i11 = this.f48859j;
            int i12 = this.f48860k;
            String d10 = l.d(this.f48861l);
            int i13 = this.f48862m;
            this.f48857h = 1;
            j10 = collectionRepo.j(j11, i11, i12, d10, i13, this);
            if (j10 == f10) {
                return f10;
            }
        }
        CollectionViewModel collectionViewModel = this.f48863n;
        if (Result.j(j10)) {
            collectionViewModel.f48825e = false;
            collectionViewModel.L().postValue(new b.c((List) j10));
        }
        CollectionViewModel collectionViewModel2 = this.f48863n;
        Throwable g10 = Result.g(j10);
        if (g10 != null) {
            collectionViewModel2.M(z.a(g10));
        }
        return Unit.f60915a;
    }
}
