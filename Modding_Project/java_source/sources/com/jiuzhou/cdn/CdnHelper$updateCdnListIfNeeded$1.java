package com.jiuzhou.cdn;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CdnHelper.kt */
@Metadata
@d(c = "com.jiuzhou.cdn.CdnHelper", f = "CdnHelper.kt", l = {179, 187, MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED}, m = "updateCdnListIfNeeded")
/* loaded from: classes5.dex */
public final class CdnHelper$updateCdnListIfNeeded$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f25554h;

    /* renamed from: i  reason: collision with root package name */
    Object f25555i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f25556j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ CdnHelper f25557k;

    /* renamed from: l  reason: collision with root package name */
    int f25558l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CdnHelper$updateCdnListIfNeeded$1(CdnHelper cdnHelper, c<? super CdnHelper$updateCdnListIfNeeded$1> cVar) {
        super(cVar);
        this.f25557k = cdnHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object w10;
        this.f25556j = obj;
        this.f25558l |= Integer.MIN_VALUE;
        w10 = this.f25557k.w(false, this);
        return w10;
    }
}
