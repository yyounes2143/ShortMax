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
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager", f = "DefaultPushManager.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_400}, m = "pushRecommendShortsNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class DefaultPushManager$pushRecommendShortsNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42804h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42805i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42806j;

    /* renamed from: k  reason: collision with root package name */
    int f42807k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$pushRecommendShortsNotification$1(DefaultPushManager defaultPushManager, c<? super DefaultPushManager$pushRecommendShortsNotification$1> cVar) {
        super(cVar);
        this.f42806j = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object L;
        this.f42805i = obj;
        this.f42807k |= Integer.MIN_VALUE;
        L = this.f42806j.L(this);
        if (L == a.f()) {
            return L;
        }
        return Result.b(L);
    }
}
