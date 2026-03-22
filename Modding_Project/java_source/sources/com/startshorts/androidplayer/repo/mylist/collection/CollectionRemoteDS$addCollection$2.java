package com.startshorts.androidplayer.repo.mylist.collection;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
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
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$addCollection$2", f = "CollectionRemoteDS.kt", l = {45}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CollectionRemoteDS$addCollection$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44203h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44204i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44205j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f44206k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f44207l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRemoteDS$addCollection$2(int i10, int i11, int i12, int i13, c<? super CollectionRemoteDS$addCollection$2> cVar) {
        super(1, cVar);
        this.f44204i = i10;
        this.f44205j = i11;
        this.f44206k = i12;
        this.f44207l = i13;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CollectionRemoteDS$addCollection$2(this.f44204i, this.f44205j, this.f44206k, this.f44207l, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44203h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f44204i;
            int i12 = this.f44205j;
            int i13 = this.f44206k;
            int i14 = this.f44207l;
            this.f44203h = 1;
            obj = k.a.C0617a.a(j10, i11, i12, i13, i14, 0, this, 16, null);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((CollectionRemoteDS$addCollection$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
