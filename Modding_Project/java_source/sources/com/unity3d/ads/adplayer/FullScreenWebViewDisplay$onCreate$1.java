package com.unity3d.ads.adplayer;

import com.unity3d.ads.adplayer.DisplayMessage;
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
/* compiled from: FullScreenWebViewDisplay.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.FullScreenWebViewDisplay$onCreate$1", f = "FullScreenWebViewDisplay.kt", l = {62}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class FullScreenWebViewDisplay$onCreate$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    int label;
    final /* synthetic */ FullScreenWebViewDisplay this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullScreenWebViewDisplay$onCreate$1(FullScreenWebViewDisplay fullScreenWebViewDisplay, c<? super FullScreenWebViewDisplay$onCreate$1> cVar) {
        super(2, cVar);
        this.this$0 = fullScreenWebViewDisplay;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new FullScreenWebViewDisplay$onCreate$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((FullScreenWebViewDisplay$onCreate$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        String str;
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
            kt.d<DisplayMessage> displayMessages = AndroidFullscreenWebViewAdPlayer.Companion.getDisplayMessages();
            str = this.this$0.opportunityId;
            DisplayMessage.DisplayError displayError = new DisplayMessage.DisplayError(str, "Opportunity ID not found");
            this.label = 1;
            if (displayMessages.emit(displayError, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
