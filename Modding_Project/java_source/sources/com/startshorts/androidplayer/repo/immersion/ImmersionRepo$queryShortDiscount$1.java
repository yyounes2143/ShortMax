package com.startshorts.androidplayer.repo.immersion;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRepo", f = "ImmersionRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME}, m = "queryShortDiscount-gIAlu-s")
/* loaded from: classes7.dex */
public final class ImmersionRepo$queryShortDiscount$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44161h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRepo f44162i;

    /* renamed from: j  reason: collision with root package name */
    int f44163j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRepo$queryShortDiscount$1(ImmersionRepo immersionRepo, c<? super ImmersionRepo$queryShortDiscount$1> cVar) {
        super(cVar);
        this.f44162i = immersionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44161h = obj;
        this.f44163j |= Integer.MIN_VALUE;
        Object x10 = this.f44162i.x(0, this);
        if (x10 == kotlin.coroutines.intrinsics.a.f()) {
            return x10;
        }
        return Result.b(x10);
    }
}
