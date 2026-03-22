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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel$cancelCollection$1", f = "CollectionViewModel.kt", l = {217}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CollectionViewModel$cancelCollection$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48834h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f48835i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48836j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48837k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f48838l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ CollectionViewModel f48839m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionViewModel$cancelCollection$1(Context context, int i10, int i11, int i12, CollectionViewModel collectionViewModel, rs.c<? super CollectionViewModel$cancelCollection$1> cVar) {
        super(2, cVar);
        this.f48835i = context;
        this.f48836j = i10;
        this.f48837k = i11;
        this.f48838l = i12;
        this.f48839m = collectionViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CollectionViewModel$cancelCollection$1(this.f48835i, this.f48836j, this.f48837k, this.f48838l, this.f48839m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CollectionViewModel$cancelCollection$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object c10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48834h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                c10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CollectionRepo collectionRepo = CollectionRepo.f44246a;
            Context context = this.f48835i;
            int i11 = this.f48836j;
            int i12 = this.f48837k;
            int i13 = this.f48838l;
            this.f48834h = 1;
            c10 = collectionRepo.c(context, i11, i12, i13, this);
            if (c10 == f10) {
                return f10;
            }
        }
        CollectionViewModel collectionViewModel = this.f48839m;
        int i14 = this.f48838l;
        if (Result.j(c10)) {
            collectionViewModel.O(CollectionsKt.t(kotlin.coroutines.jvm.internal.a.d(i14)), false);
            collectionViewModel.L().postValue(new b.C0669b(CollectionsKt.t(kotlin.coroutines.jvm.internal.a.e(i14))));
        }
        return Unit.f60915a;
    }
}
