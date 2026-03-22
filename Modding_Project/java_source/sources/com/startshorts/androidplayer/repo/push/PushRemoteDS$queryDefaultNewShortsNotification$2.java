package com.startshorts.androidplayer.repo.push;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.notification.NewShortsNotification;
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
/* compiled from: PushRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRemoteDS$queryDefaultNewShortsNotification$2", f = "PushRemoteDS.kt", l = {24}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PushRemoteDS$queryDefaultNewShortsNotification$2 extends SuspendLambda implements Function1<c<? super ServerResult<NewShortsNotification>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44341h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44342i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRemoteDS$queryDefaultNewShortsNotification$2(int i10, c<? super PushRemoteDS$queryDefaultNewShortsNotification$2> cVar) {
        super(1, cVar);
        this.f44342i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new PushRemoteDS$queryDefaultNewShortsNotification$2(this.f44342i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44341h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f44342i;
            this.f44341h = 1;
            obj = j10.M0(i11, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<NewShortsNotification>> cVar) {
        return ((PushRemoteDS$queryDefaultNewShortsNotification$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
