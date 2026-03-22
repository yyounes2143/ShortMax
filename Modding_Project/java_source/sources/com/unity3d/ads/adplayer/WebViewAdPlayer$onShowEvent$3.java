package com.unity3d.ads.adplayer;

import at.n;
import com.unity3d.ads.adplayer.model.ShowStatus;
import com.unity3d.ads.core.data.model.ShowEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: WebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$onShowEvent$3", f = "WebViewAdPlayer.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class WebViewAdPlayer$onShowEvent$3 extends SuspendLambda implements n<ShowEvent, Boolean, c<? super ShowEvent>, Object> {
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebViewAdPlayer$onShowEvent$3(c<? super WebViewAdPlayer$onShowEvent$3> cVar) {
        super(3, cVar);
    }

    @Nullable
    public final Object invoke(@NotNull ShowEvent showEvent, boolean z10, @Nullable c<? super ShowEvent> cVar) {
        WebViewAdPlayer$onShowEvent$3 webViewAdPlayer$onShowEvent$3 = new WebViewAdPlayer$onShowEvent$3(cVar);
        webViewAdPlayer$onShowEvent$3.L$0 = showEvent;
        webViewAdPlayer$onShowEvent$3.Z$0 = z10;
        return webViewAdPlayer$onShowEvent$3.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            ShowEvent showEvent = (ShowEvent) this.L$0;
            if (this.Z$0) {
                return new ShowEvent.Completed(ShowStatus.COMPLETED, null, null, 6, null);
            }
            return showEvent;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Object invoke(ShowEvent showEvent, Boolean bool, c<? super ShowEvent> cVar) {
        return invoke(showEvent, bool.booleanValue(), cVar);
    }
}
