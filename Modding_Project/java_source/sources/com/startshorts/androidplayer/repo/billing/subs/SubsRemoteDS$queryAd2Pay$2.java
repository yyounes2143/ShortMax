package com.startshorts.androidplayer.repo.billing.subs;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.subs.Ad2PayResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS$queryAd2Pay$2", f = "SubsRemoteDS.kt", l = {48}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$queryAd2Pay$2 extends SuspendLambda implements Function1<c<? super ServerResult<Ad2PayResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43470h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubsRemoteDS$queryAd2Pay$2(c<? super SubsRemoteDS$queryAd2Pay$2> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new SubsRemoteDS$queryAd2Pay$2(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43470h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String i02 = b.f68412a.i0();
            this.f43470h = 1;
            obj = j10.t1(i02, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Ad2PayResult>> cVar) {
        return ((SubsRemoteDS$queryAd2Pay$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
