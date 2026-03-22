package com.startshorts.androidplayer.repo.mylist.collection;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.mylist.MyCollection;
import com.startshorts.androidplayer.manager.api.base.k;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CollectionRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollections$2", f = "CollectionRemoteDS.kt", l = {31}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CollectionRemoteDS$queryCollections$2 extends SuspendLambda implements Function1<c<? super ServerResult<List<MyCollection>>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44232h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ long f44233i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44234j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f44235k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f44236l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRemoteDS$queryCollections$2(long j10, int i10, int i11, String str, c<? super CollectionRemoteDS$queryCollections$2> cVar) {
        super(1, cVar);
        this.f44233i = j10;
        this.f44234j = i10;
        this.f44235k = i11;
        this.f44236l = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CollectionRemoteDS$queryCollections$2(this.f44233i, this.f44234j, this.f44235k, this.f44236l, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44232h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            long j11 = this.f44233i;
            int i11 = this.f44234j;
            int i12 = this.f44235k;
            String str = this.f44236l;
            this.f44232h = 1;
            obj = j10.T(j11, i11, i12, str, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<List<MyCollection>>> cVar) {
        return ((CollectionRemoteDS$queryCollections$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
