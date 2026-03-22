package com.unity3d.ads.adplayer;

import com.unity3d.ads.adplayer.DisplayMessage;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FullScreenWebViewDisplay.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$3", f = "FullScreenWebViewDisplay.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class FullScreenWebViewDisplay$listenToAdPlayerEvents$2$3 extends SuspendLambda implements Function2<DisplayMessage, c<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ FullScreenWebViewDisplay this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullScreenWebViewDisplay$listenToAdPlayerEvents$2$3(FullScreenWebViewDisplay fullScreenWebViewDisplay, c<? super FullScreenWebViewDisplay$listenToAdPlayerEvents$2$3> cVar) {
        super(2, cVar);
        this.this$0 = fullScreenWebViewDisplay;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        FullScreenWebViewDisplay$listenToAdPlayerEvents$2$3 fullScreenWebViewDisplay$listenToAdPlayerEvents$2$3 = new FullScreenWebViewDisplay$listenToAdPlayerEvents$2$3(this.this$0, cVar);
        fullScreenWebViewDisplay$listenToAdPlayerEvents$2$3.L$0 = obj;
        return fullScreenWebViewDisplay$listenToAdPlayerEvents$2$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull DisplayMessage displayMessage, @Nullable c<? super Unit> cVar) {
        return ((FullScreenWebViewDisplay$listenToAdPlayerEvents$2$3) create(displayMessage, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            DisplayMessage displayMessage = (DisplayMessage) this.L$0;
            if (displayMessage instanceof DisplayMessage.DisplayFinishRequest) {
                this.this$0.finish();
            } else if (displayMessage instanceof DisplayMessage.WebViewInstanceResponse) {
                this.this$0.loadWebView(((DisplayMessage.WebViewInstanceResponse) displayMessage).getWebView());
            } else if (displayMessage instanceof DisplayMessage.SetOrientation) {
                this.this$0.setRequestedOrientation(((DisplayMessage.SetOrientation) displayMessage).getOrientation());
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
