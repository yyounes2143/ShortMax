package com.unity3d.ads.core.domain;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LegacyShowUseCase.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", l = {118, 123, 129, 134, 142, 147, 153, 160, 165, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE}, m = "invoke")
/* loaded from: classes7.dex */
public final class LegacyShowUseCase$invoke$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LegacyShowUseCase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyShowUseCase$invoke$1(LegacyShowUseCase legacyShowUseCase, c<? super LegacyShowUseCase$invoke$1> cVar) {
        super(cVar);
        this.this$0 = legacyShowUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(null, null, null, null, this);
    }
}
