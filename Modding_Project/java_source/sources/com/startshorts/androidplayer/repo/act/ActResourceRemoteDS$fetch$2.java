package com.startshorts.androidplayer.repo.act;

import com.startshorts.androidplayer.bean.act.ActResourceList;
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
/* compiled from: ActResourceRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.act.ActResourceRemoteDS$fetch$2", f = "ActResourceRemoteDS.kt", l = {17}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ActResourceRemoteDS$fetch$2 extends SuspendLambda implements Function1<c<? super ServerResult<ActResourceList>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43101h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f43102i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActResourceRemoteDS$fetch$2(boolean z10, c<? super ActResourceRemoteDS$fetch$2> cVar) {
        super(1, cVar);
        this.f43102i = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ActResourceRemoteDS$fetch$2(this.f43102i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43101h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            this.f43101h = 1;
            obj = k.a.C0617a.j(k.f41787a.j(), !this.f43102i, null, null, this, 6, null);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<ActResourceList>> cVar) {
        return ((ActResourceRemoteDS$fetch$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
