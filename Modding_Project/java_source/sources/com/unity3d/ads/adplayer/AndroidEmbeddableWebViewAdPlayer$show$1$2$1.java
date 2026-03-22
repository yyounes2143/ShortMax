package com.unity3d.ads.adplayer;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidEmbeddableWebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$2$1", f = "AndroidEmbeddableWebViewAdPlayer.kt", l = {83}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidEmbeddableWebViewAdPlayer$show$1$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    int label;
    final /* synthetic */ AndroidEmbeddableWebViewAdPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidEmbeddableWebViewAdPlayer$show$1$2$1(AndroidEmbeddableWebViewAdPlayer androidEmbeddableWebViewAdPlayer, c<? super AndroidEmbeddableWebViewAdPlayer$show$1$2$1> cVar) {
        super(2, cVar);
        this.this$0 = androidEmbeddableWebViewAdPlayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidEmbeddableWebViewAdPlayer$show$1$2$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidEmbeddableWebViewAdPlayer$show$1$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            AndroidEmbeddableWebViewAdPlayer androidEmbeddableWebViewAdPlayer = this.this$0;
            this.label = 1;
            if (androidEmbeddableWebViewAdPlayer.destroy(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
