package com.startshorts.androidplayer.repo.push;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRepo", f = "PushRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE}, m = "queryBonusWillExpiredNotification")
/* loaded from: classes7.dex */
public final class PushRepo$queryBonusWillExpiredNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44399h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PushRepo f44400i;

    /* renamed from: j  reason: collision with root package name */
    int f44401j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRepo$queryBonusWillExpiredNotification$1(PushRepo pushRepo, c<? super PushRepo$queryBonusWillExpiredNotification$1> cVar) {
        super(cVar);
        this.f44400i = pushRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44399h = obj;
        this.f44401j |= Integer.MIN_VALUE;
        return this.f44400i.t(this);
    }
}
