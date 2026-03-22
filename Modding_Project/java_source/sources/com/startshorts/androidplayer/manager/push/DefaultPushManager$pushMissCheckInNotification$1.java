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
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager", f = "DefaultPushManager.kt", l = {450, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_DNS_TIME}, m = "pushMissCheckInNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class DefaultPushManager$pushMissCheckInNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42796h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42797i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42798j;

    /* renamed from: k  reason: collision with root package name */
    int f42799k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$pushMissCheckInNotification$1(DefaultPushManager defaultPushManager, c<? super DefaultPushManager$pushMissCheckInNotification$1> cVar) {
        super(cVar);
        this.f42798j = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object J;
        this.f42797i = obj;
        this.f42799k |= Integer.MIN_VALUE;
        J = this.f42798j.J(this);
        if (J == a.f()) {
            return J;
        }
        return Result.b(J);
    }
}
