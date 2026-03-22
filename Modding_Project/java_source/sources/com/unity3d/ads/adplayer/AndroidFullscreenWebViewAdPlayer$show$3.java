package com.unity3d.ads.adplayer;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidFullscreenWebViewAdPlayer.kt */
@Metadata
/* loaded from: classes7.dex */
/* synthetic */ class AndroidFullscreenWebViewAdPlayer$show$3 extends AdaptedFunctionReference implements Function2<DisplayMessage, c<? super Unit>, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidFullscreenWebViewAdPlayer$show$3(Object obj) {
        super(2, obj, AndroidFullscreenWebViewAdPlayer.class, "displayEventsRouter", "displayEventsRouter(Lcom/unity3d/ads/adplayer/DisplayMessage;)Lkotlinx/coroutines/Job;", 12);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull DisplayMessage displayMessage, @NotNull c<? super Unit> cVar) {
        Object show$displayEventsRouter;
        show$displayEventsRouter = AndroidFullscreenWebViewAdPlayer.show$displayEventsRouter((AndroidFullscreenWebViewAdPlayer) this.receiver, displayMessage, cVar);
        return show$displayEventsRouter;
    }
}
