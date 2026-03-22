package com.unity3d.ads.adplayer;

import com.unity3d.ads.core.data.model.ShowEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidFullscreenWebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$6", f = "AndroidFullscreenWebViewAdPlayer.kt", l = {93}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidFullscreenWebViewAdPlayer$show$6 extends SuspendLambda implements Function2<ShowEvent, c<? super Unit>, Object> {
    int label;
    final /* synthetic */ AndroidFullscreenWebViewAdPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidFullscreenWebViewAdPlayer$show$6(AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer, c<? super AndroidFullscreenWebViewAdPlayer$show$6> cVar) {
        super(2, cVar);
        this.this$0 = androidFullscreenWebViewAdPlayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidFullscreenWebViewAdPlayer$show$6(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull ShowEvent showEvent, @Nullable c<? super Unit> cVar) {
        return ((AndroidFullscreenWebViewAdPlayer$show$6) create(showEvent, cVar)).invokeSuspend(Unit.f60915a);
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
            AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer = this.this$0;
            this.label = 1;
            if (androidFullscreenWebViewAdPlayer.destroy(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
