package com.unity3d.ads.adplayer;

import android.app.Activity;
import android.content.Intent;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import gt.g0;
import gt.p;
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
@d(c = "com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$8", f = "AndroidFullscreenWebViewAdPlayer.kt", l = {113}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidFullscreenWebViewAdPlayer$show$8 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Activity $context;
    final /* synthetic */ Intent $intent;
    final /* synthetic */ p<Unit> $listenerStarted;
    int label;
    final /* synthetic */ AndroidFullscreenWebViewAdPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidFullscreenWebViewAdPlayer$show$8(p<Unit> pVar, Activity activity, Intent intent, AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer, c<? super AndroidFullscreenWebViewAdPlayer$show$8> cVar) {
        super(2, cVar);
        this.$listenerStarted = pVar;
        this.$context = activity;
        this.$intent = intent;
        this.this$0 = androidFullscreenWebViewAdPlayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidFullscreenWebViewAdPlayer$show$8(this.$listenerStarted, this.$context, this.$intent, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidFullscreenWebViewAdPlayer$show$8) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SendDiagnosticEvent sendDiagnosticEvent;
        AdObject adObject;
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
            p<Unit> pVar = this.$listenerStarted;
            this.label = 1;
            if (pVar.await(this) == f10) {
                return f10;
            }
        }
        this.$context.startActivity(this.$intent);
        sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
        adObject = this.this$0.getAdObject();
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_ad_viewer_fullscreen_intent", null, null, null, adObject, null, 46, null);
        return Unit.f60915a;
    }
}
