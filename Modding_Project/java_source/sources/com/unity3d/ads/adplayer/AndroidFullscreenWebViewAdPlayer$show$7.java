package com.unity3d.ads.adplayer;

import com.unity3d.ads.core.data.model.SessionChange;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidFullscreenWebViewAdPlayer.kt */
@Metadata
/* loaded from: classes7.dex */
/* synthetic */ class AndroidFullscreenWebViewAdPlayer$show$7 extends FunctionReferenceImpl implements Function2<SessionChange, c<? super Unit>, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidFullscreenWebViewAdPlayer$show$7(Object obj) {
        super(2, obj, AndroidFullscreenWebViewAdPlayer.class, "handleSessionChange", "handleSessionChange(Lcom/unity3d/ads/core/data/model/SessionChange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull SessionChange sessionChange, @NotNull c<? super Unit> cVar) {
        Object handleSessionChange;
        handleSessionChange = ((AndroidFullscreenWebViewAdPlayer) this.receiver).handleSessionChange(sessionChange, cVar);
        return handleSessionChange;
    }
}
