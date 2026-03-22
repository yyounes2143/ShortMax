package com.unity3d.ads.adplayer;

import gt.p;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidFullscreenWebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$1", f = "AndroidFullscreenWebViewAdPlayer.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidFullscreenWebViewAdPlayer$show$1 extends SuspendLambda implements Function2<c<? super DisplayMessage>, rs.c<? super Unit>, Object> {
    final /* synthetic */ p<Unit> $listenerStarted;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidFullscreenWebViewAdPlayer$show$1(p<Unit> pVar, rs.c<? super AndroidFullscreenWebViewAdPlayer$show$1> cVar) {
        super(2, cVar);
        this.$listenerStarted = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new AndroidFullscreenWebViewAdPlayer$show$1(this.$listenerStarted, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            p<Unit> pVar = this.$listenerStarted;
            Unit unit = Unit.f60915a;
            pVar.i(unit);
            return unit;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull c<? super DisplayMessage> cVar, @Nullable rs.c<? super Unit> cVar2) {
        return ((AndroidFullscreenWebViewAdPlayer$show$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
