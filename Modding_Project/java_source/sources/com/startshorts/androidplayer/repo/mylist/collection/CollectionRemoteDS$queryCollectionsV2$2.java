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
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectionsV2$2", f = "CollectionRemoteDS.kt", l = {21}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CollectionRemoteDS$queryCollectionsV2$2 extends SuspendLambda implements Function1<c<? super ServerResult<List<MyCollection>>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44240h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ long f44241i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44242j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f44243k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f44244l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f44245m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRemoteDS$queryCollectionsV2$2(long j10, int i10, int i11, String str, int i12, c<? super CollectionRemoteDS$queryCollectionsV2$2> cVar) {
        super(1, cVar);
        this.f44241i = j10;
        this.f44242j = i10;
        this.f44243k = i11;
        this.f44244l = str;
        this.f44245m = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CollectionRemoteDS$queryCollectionsV2$2(this.f44241i, this.f44242j, this.f44243k, this.f44244l, this.f44245m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44240h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            long j11 = this.f44241i;
            int i11 = this.f44242j;
            int i12 = this.f44243k;
            String str = this.f44244l;
            int i13 = this.f44245m;
            this.f44240h = 1;
            obj = j10.z1(j11, i11, i12, str, i13, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<List<MyCollection>>> cVar) {
        return ((CollectionRemoteDS$queryCollectionsV2$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
