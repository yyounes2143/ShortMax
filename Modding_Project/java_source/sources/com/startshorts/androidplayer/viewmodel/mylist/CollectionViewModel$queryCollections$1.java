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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel$queryCollections$1", f = "CollectionViewModel.kt", l = {153}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CollectionViewModel$queryCollections$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48851h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ long f48852i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48853j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48854k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ List<Integer> f48855l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ CollectionViewModel f48856m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionViewModel$queryCollections$1(long j10, int i10, int i11, List<Integer> list, CollectionViewModel collectionViewModel, rs.c<? super CollectionViewModel$queryCollections$1> cVar) {
        super(2, cVar);
        this.f48852i = j10;
        this.f48853j = i10;
        this.f48854k = i11;
        this.f48855l = list;
        this.f48856m = collectionViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CollectionViewModel$queryCollections$1(this.f48852i, this.f48853j, this.f48854k, this.f48855l, this.f48856m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CollectionViewModel$queryCollections$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object i10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f48851h;
        if (i11 != 0) {
            if (i11 == 1) {
                f.b(obj);
                i10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CollectionRepo collectionRepo = CollectionRepo.f44246a;
            long j10 = this.f48852i;
            int i12 = this.f48853j;
            int i13 = this.f48854k;
            String d10 = l.d(this.f48855l);
            this.f48851h = 1;
            i10 = collectionRepo.i(j10, i12, i13, d10, this);
            if (i10 == f10) {
                return f10;
            }
        }
        CollectionViewModel collectionViewModel = this.f48856m;
        if (Result.j(i10)) {
            collectionViewModel.f48825e = false;
            collectionViewModel.L().postValue(new b.c((List) i10));
        }
        CollectionViewModel collectionViewModel2 = this.f48856m;
        Throwable g10 = Result.g(i10);
        if (g10 != null) {
            collectionViewModel2.M(z.a(g10));
        }
        return Unit.f60915a;
    }
}
