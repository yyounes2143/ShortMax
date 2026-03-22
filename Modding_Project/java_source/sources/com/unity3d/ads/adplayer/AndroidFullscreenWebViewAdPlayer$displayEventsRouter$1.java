package com.unity3d.ads.adplayer;

import com.ss.ttm.player.MediaPlayer;
import com.unity3d.ads.adplayer.DisplayMessage;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import gt.g0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidFullscreenWebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1", f = "AndroidFullscreenWebViewAdPlayer.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 198, 199, 201}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ DisplayMessage $displayMessage;
    int label;
    final /* synthetic */ AndroidFullscreenWebViewAdPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1(AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer, DisplayMessage displayMessage, c<? super AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1> cVar) {
        super(2, cVar);
        this.this$0 = androidFullscreenWebViewAdPlayer;
        this.$displayMessage = displayMessage;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1(this.this$0, this.$displayMessage, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SendDiagnosticEvent sendDiagnosticEvent;
        String str;
        AdObject adObject;
        WebViewAdPlayer webViewAdPlayer;
        WebViewAdPlayer webViewAdPlayer2;
        WebViewAdPlayer webViewAdPlayer3;
        WebViewAdPlayer webViewAdPlayer4;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        switch (this.label) {
            case 0:
                f.b(obj);
                sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
                Pair a10 = k.a("eventType", String.valueOf(Reflection.getOrCreateKotlinClass(this.$displayMessage.getClass()).getSimpleName()));
                DisplayMessage displayMessage = this.$displayMessage;
                if (displayMessage instanceof DisplayMessage.VisibilityChanged) {
                    str = String.valueOf(((DisplayMessage.VisibilityChanged) displayMessage).isVisible());
                } else if (displayMessage instanceof DisplayMessage.FocusChanged) {
                    str = String.valueOf(((DisplayMessage.FocusChanged) displayMessage).isFocused());
                } else {
                    str = "";
                }
                Map m10 = p0.m(a10, k.a("content", str));
                adObject = this.this$0.getAdObject();
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_ad_viewer_fullscreen_activity_event", null, m10, null, adObject, null, 42, null);
                DisplayMessage displayMessage2 = this.$displayMessage;
                if (displayMessage2 instanceof DisplayMessage.DisplayReady) {
                    webViewAdPlayer4 = this.this$0.webViewAdPlayer;
                    Map<String, Object> showOptions = ((DisplayMessage.DisplayReady) this.$displayMessage).getShowOptions();
                    this.label = 1;
                    if (webViewAdPlayer4.requestShow(showOptions, this) == f10) {
                        return f10;
                    }
                } else if (displayMessage2 instanceof DisplayMessage.WebViewInstanceRequest) {
                    kt.d<DisplayMessage> displayMessages = AndroidFullscreenWebViewAdPlayer.Companion.getDisplayMessages();
                    DisplayMessage.WebViewInstanceResponse webViewInstanceResponse = new DisplayMessage.WebViewInstanceResponse(this.$displayMessage.getOpportunityId(), this.this$0.getWebViewContainer().getWebView());
                    this.label = 2;
                    if (displayMessages.emit(webViewInstanceResponse, this) == f10) {
                        return f10;
                    }
                } else if (displayMessage2 instanceof DisplayMessage.VisibilityChanged) {
                    webViewAdPlayer3 = this.this$0.webViewAdPlayer;
                    boolean isVisible = ((DisplayMessage.VisibilityChanged) this.$displayMessage).isVisible();
                    this.label = 3;
                    if (webViewAdPlayer3.sendVisibilityChange(isVisible, this) == f10) {
                        return f10;
                    }
                } else if (displayMessage2 instanceof DisplayMessage.FocusChanged) {
                    webViewAdPlayer2 = this.this$0.webViewAdPlayer;
                    boolean isFocused = ((DisplayMessage.FocusChanged) this.$displayMessage).isFocused();
                    this.label = 4;
                    if (webViewAdPlayer2.sendFocusChange(isFocused, this) == f10) {
                        return f10;
                    }
                } else if (displayMessage2 instanceof DisplayMessage.DisplayDestroyed) {
                    webViewAdPlayer = this.this$0.webViewAdPlayer;
                    this.label = 5;
                    if (webViewAdPlayer.sendActivityDestroyed(this) == f10) {
                        return f10;
                    }
                } else if (displayMessage2 instanceof DisplayMessage.DisplayError) {
                    AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer = this.this$0;
                    this.label = 6;
                    if (androidFullscreenWebViewAdPlayer.destroy(this) == f10) {
                        return f10;
                    }
                }
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                f.b(obj);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f60915a;
    }
}
