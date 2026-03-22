package com.unity3d.ads.core.domain.exposure;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonAdViewerExposedFunctions.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$refreshAdData$1", f = "CommonAdViewerExposedFunctions.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME}, m = "invoke")
/* loaded from: classes7.dex */
public final class CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CommonAdViewerExposedFunctionsKt$refreshAdData$1 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1(CommonAdViewerExposedFunctionsKt$refreshAdData$1 commonAdViewerExposedFunctionsKt$refreshAdData$1, c<? super CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1> cVar) {
        super(cVar);
        this.this$0 = commonAdViewerExposedFunctionsKt$refreshAdData$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke2((Object[]) null, (c<Object>) this);
    }
}
