package com.startshorts.androidplayer.repo.billing;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingRemoteDS.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRemoteDS$notifyThirdPartyPayEnable$2", f = "BillingRemoteDS.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SOCKET_CREATE_SUCCESS_TIME}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BillingRemoteDS$notifyThirdPartyPayEnable$2 extends SuspendLambda implements Function1<rs.c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43235h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f43236i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingRemoteDS$notifyThirdPartyPayEnable$2(int i10, rs.c<? super BillingRemoteDS$notifyThirdPartyPayEnable$2> cVar) {
        super(1, cVar);
        this.f43236i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(rs.c<?> cVar) {
        return new BillingRemoteDS$notifyThirdPartyPayEnable$2(this.f43236i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43235h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f43236i;
            this.f43235h = 1;
            obj = j10.v1(i11, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(rs.c<? super ServerResult<Object>> cVar) {
        return ((BillingRemoteDS$notifyThirdPartyPayEnable$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
