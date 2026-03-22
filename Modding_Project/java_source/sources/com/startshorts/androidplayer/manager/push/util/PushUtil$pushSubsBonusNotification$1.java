package com.startshorts.androidplayer.manager.push.util;

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
/* compiled from: PushUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.util.PushUtil", f = "PushUtil.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_CRYPTO_RETRANSMISSION_TIME_MS}, m = "pushSubsBonusNotification-gIAlu-s")
/* loaded from: classes6.dex */
public final class PushUtil$pushSubsBonusNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42927h;

    /* renamed from: i  reason: collision with root package name */
    Object f42928i;

    /* renamed from: j  reason: collision with root package name */
    Object f42929j;

    /* renamed from: k  reason: collision with root package name */
    Object f42930k;

    /* renamed from: l  reason: collision with root package name */
    Object f42931l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f42932m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ PushUtil f42933n;

    /* renamed from: o  reason: collision with root package name */
    int f42934o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushUtil$pushSubsBonusNotification$1(PushUtil pushUtil, c<? super PushUtil$pushSubsBonusNotification$1> cVar) {
        super(cVar);
        this.f42933n = pushUtil;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42932m = obj;
        this.f42934o |= Integer.MIN_VALUE;
        Object V = this.f42933n.V(null, this);
        if (V == a.f()) {
            return V;
        }
        return Result.b(V);
    }
}
