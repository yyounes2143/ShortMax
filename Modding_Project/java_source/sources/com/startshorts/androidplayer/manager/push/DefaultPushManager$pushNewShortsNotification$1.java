package com.startshorts.androidplayer.manager.push;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager", f = "DefaultPushManager.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_DECODER_STALL_THRESHOLD}, m = "pushNewShortsNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class DefaultPushManager$pushNewShortsNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42800h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42801i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42802j;

    /* renamed from: k  reason: collision with root package name */
    int f42803k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$pushNewShortsNotification$1(DefaultPushManager defaultPushManager, c<? super DefaultPushManager$pushNewShortsNotification$1> cVar) {
        super(cVar);
        this.f42802j = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object K;
        this.f42801i = obj;
        this.f42803k |= Integer.MIN_VALUE;
        K = this.f42802j.K(this);
        if (K == a.f()) {
            return K;
        }
        return Result.b(K);
    }
}
