package com.startshorts.androidplayer.viewmodel.mylist;

import android.content.Context;
import com.ss.ttvideoengine.model.VideoRef;
import com.startshorts.androidplayer.bean.mylist.CancelCollectBatchRequest;
import com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo;
import com.startshorts.androidplayer.viewmodel.mylist.b;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CollectionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel$cancelCollections2$1", f = "CollectionViewModel.kt", l = {VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CollectionViewModel$cancelCollections2$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48845h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f48846i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ CancelCollectBatchRequest f48847j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ CollectionViewModel f48848k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ List<Integer> f48849l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ List<Long> f48850m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionViewModel$cancelCollections2$1(Context context, CancelCollectBatchRequest cancelCollectBatchRequest, CollectionViewModel collectionViewModel, List<Integer> list, List<Long> list2, rs.c<? super CollectionViewModel$cancelCollections2$1> cVar) {
        super(2, cVar);
        this.f48846i = context;
        this.f48847j = cancelCollectBatchRequest;
        this.f48848k = collectionViewModel;
        this.f48849l = list;
        this.f48850m = list2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CollectionViewModel$cancelCollections2$1(this.f48846i, this.f48847j, this.f48848k, this.f48849l, this.f48850m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CollectionViewModel$cancelCollections2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object e10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48845h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                e10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CollectionRepo collectionRepo = CollectionRepo.f44246a;
            Context context = this.f48846i;
            CancelCollectBatchRequest cancelCollectBatchRequest = this.f48847j;
            this.f48845h = 1;
            e10 = collectionRepo.e(context, cancelCollectBatchRequest, this);
            if (e10 == f10) {
                return f10;
            }
        }
        CollectionViewModel collectionViewModel = this.f48848k;
        List<Integer> list = this.f48849l;
        List<Long> list2 = this.f48850m;
        if (Result.j(e10)) {
            collectionViewModel.O(list, false);
            collectionViewModel.L().postValue(new b.C0669b(list2));
        }
        return Unit.f60915a;
    }
}
