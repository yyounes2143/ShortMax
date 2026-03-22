package com.startshorts.androidplayer.repo.mylist.collection;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.mylist.CancelCollectBatchRequest;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import lk.b;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CollectionRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections2$2", f = "CollectionRemoteDS.kt", l = {72}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CollectionRemoteDS$cancelCollections2$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44223h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CancelCollectBatchRequest f44224i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRemoteDS$cancelCollections2$2(CancelCollectBatchRequest cancelCollectBatchRequest, c<? super CollectionRemoteDS$cancelCollections2$2> cVar) {
        super(1, cVar);
        this.f44224i = cancelCollectBatchRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CollectionRemoteDS$cancelCollections2$2(this.f44224i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44223h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String h10 = b.f62233a.h(this.f44224i.getList());
            this.f44223h = 1;
            obj = j10.G1(h10, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((CollectionRemoteDS$cancelCollections2$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
