package com.startshorts.androidplayer.viewmodel.mylist;

import android.content.Context;
import com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo;
import com.startshorts.androidplayer.viewmodel.mylist.b;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CollectionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel$addCollection$1", f = "CollectionViewModel.kt", l = {192}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CollectionViewModel$addCollection$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48827h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f48828i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48829j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48830k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f48831l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f48832m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ CollectionViewModel f48833n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionViewModel$addCollection$1(Context context, int i10, int i11, int i12, int i13, CollectionViewModel collectionViewModel, rs.c<? super CollectionViewModel$addCollection$1> cVar) {
        super(2, cVar);
        this.f48828i = context;
        this.f48829j = i10;
        this.f48830k = i11;
        this.f48831l = i12;
        this.f48832m = i13;
        this.f48833n = collectionViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CollectionViewModel$addCollection$1(this.f48828i, this.f48829j, this.f48830k, this.f48831l, this.f48832m, this.f48833n, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CollectionViewModel$addCollection$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object b10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48827h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                b10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CollectionRepo collectionRepo = CollectionRepo.f44246a;
            Context context = this.f48828i;
            int i11 = this.f48829j;
            int i12 = this.f48830k;
            int i13 = this.f48831l;
            int i14 = this.f48832m;
            this.f48827h = 1;
            b10 = collectionRepo.b(context, i11, i12, i13, i14, this);
            if (b10 == f10) {
                return f10;
            }
        }
        CollectionViewModel collectionViewModel = this.f48833n;
        int i15 = this.f48831l;
        if (Result.j(b10)) {
            collectionViewModel.O(CollectionsKt.t(kotlin.coroutines.jvm.internal.a.d(i15)), true);
            collectionViewModel.L().postValue(new b.a(i15));
            collectionViewModel.U();
        }
        return Unit.f60915a;
    }
}
