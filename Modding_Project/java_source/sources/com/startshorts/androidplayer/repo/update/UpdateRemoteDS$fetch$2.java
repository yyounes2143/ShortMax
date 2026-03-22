package com.startshorts.androidplayer.repo.update;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.update.UpdateData;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UpdateRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.update.UpdateRemoteDS$fetch$2", f = "UpdateRemoteDS.kt", l = {13}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UpdateRemoteDS$fetch$2 extends SuspendLambda implements Function1<c<? super ServerResult<UpdateData>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44763h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UpdateRemoteDS$fetch$2(c<? super UpdateRemoteDS$fetch$2> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new UpdateRemoteDS$fetch$2(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44763h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String V = DeviceUtil.f48146a.V();
            this.f44763h = 1;
            obj = j10.p1(V, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<UpdateData>> cVar) {
        return ((UpdateRemoteDS$fetch$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
