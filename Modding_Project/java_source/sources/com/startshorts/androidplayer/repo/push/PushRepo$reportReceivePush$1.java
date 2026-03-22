package com.startshorts.androidplayer.repo.push;

import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRepo$reportReceivePush$1", f = "PushRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PushRepo$reportReceivePush$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44434h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PushRepo$reportReceivePush$1(c<? super PushRepo$reportReceivePush$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PushRepo$reportReceivePush$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PushRepo$reportReceivePush$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PushRemoteDS q10;
        Object k10;
        Object f10 = a.f();
        int i10 = this.f44434h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                k10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            q10 = PushRepo.f44374a.q();
            this.f44434h = 1;
            k10 = q10.k(this);
            if (k10 == f10) {
                return f10;
            }
        }
        if (Result.j(k10)) {
            b.f68412a.j5(true);
        }
        return Unit.f60915a;
    }
}
