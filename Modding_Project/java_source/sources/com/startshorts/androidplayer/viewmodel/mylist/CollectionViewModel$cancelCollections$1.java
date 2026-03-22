package com.startshorts.androidplayer.viewmodel.mylist;

import android.content.Context;
import com.ss.ttvideoengine.model.VideoRef;
import com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo;
import com.startshorts.androidplayer.viewmodel.mylist.b;
import gt.g0;
import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CollectionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel$cancelCollections$1", f = "CollectionViewModel.kt", l = {VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CollectionViewModel$cancelCollections$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48840h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f48841i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<Long> f48842j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ CollectionViewModel f48843k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ List<Integer> f48844l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionViewModel$cancelCollections$1(Context context, List<Long> list, CollectionViewModel collectionViewModel, List<Integer> list2, rs.c<? super CollectionViewModel$cancelCollections$1> cVar) {
        super(2, cVar);
        this.f48841i = context;
        this.f48842j = list;
        this.f48843k = collectionViewModel;
        this.f48844l = list2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CollectionViewModel$cancelCollections$1(this.f48841i, this.f48842j, this.f48843k, this.f48844l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CollectionViewModel$cancelCollections$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48840h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                d10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CollectionRepo collectionRepo = CollectionRepo.f44246a;
            Context context = this.f48841i;
            String d11 = l.d(this.f48842j);
            this.f48840h = 1;
            d10 = collectionRepo.d(context, d11, this);
            if (d10 == f10) {
                return f10;
            }
        }
        CollectionViewModel collectionViewModel = this.f48843k;
        List<Integer> list = this.f48844l;
        List<Long> list2 = this.f48842j;
        if (Result.j(d10)) {
            collectionViewModel.O(list, false);
            collectionViewModel.L().postValue(new b.C0669b(list2));
        }
        return Unit.f60915a;
    }
}
