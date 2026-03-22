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
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager", f = "DefaultPushManager.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_ERR_NO_VIDEO, 474}, m = "pushBonusWillExpiredNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class DefaultPushManager$pushBonusWillExpiredNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42785h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42786i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42787j;

    /* renamed from: k  reason: collision with root package name */
    int f42788k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$pushBonusWillExpiredNotification$1(DefaultPushManager defaultPushManager, c<? super DefaultPushManager$pushBonusWillExpiredNotification$1> cVar) {
        super(cVar);
        this.f42787j = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object G;
        this.f42786i = obj;
        this.f42788k |= Integer.MIN_VALUE;
        G = this.f42787j.G(this);
        if (G == a.f()) {
            return G;
        }
        return Result.b(G);
    }
}
