package com.moloco.sdk.publisher;

import com.moloco.sdk.internal.publisher.v;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.publisher.Moloco$adCreator$2$1", f = "Moloco.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_FIRST_VIDEO_SEND_OUTLET_TIME}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class Moloco$adCreator$2$1 extends SuspendLambda implements Function1<rs.c<? super com.moloco.sdk.internal.e>, Object> {
    int label;

    public Moloco$adCreator$2$1(rs.c<? super Moloco$adCreator$2$1> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(rs.c<?> cVar) {
        return new Moloco$adCreator$2$1(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        v initializationHandler;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            initializationHandler = Moloco.INSTANCE.getInitializationHandler();
            this.label = 1;
            obj = initializationHandler.e(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(rs.c<? super com.moloco.sdk.internal.e> cVar) {
        return ((Moloco$adCreator$2$1) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
