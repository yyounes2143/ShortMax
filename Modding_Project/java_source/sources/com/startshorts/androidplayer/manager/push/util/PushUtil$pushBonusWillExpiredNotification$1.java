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
@d(c = "com.startshorts.androidplayer.manager.push.util.PushUtil", f = "PushUtil.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_STREAM_DURATION}, m = "pushBonusWillExpiredNotification-gIAlu-s")
/* loaded from: classes6.dex */
public final class PushUtil$pushBonusWillExpiredNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42906h;

    /* renamed from: i  reason: collision with root package name */
    Object f42907i;

    /* renamed from: j  reason: collision with root package name */
    Object f42908j;

    /* renamed from: k  reason: collision with root package name */
    Object f42909k;

    /* renamed from: l  reason: collision with root package name */
    Object f42910l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f42911m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ PushUtil f42912n;

    /* renamed from: o  reason: collision with root package name */
    int f42913o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushUtil$pushBonusWillExpiredNotification$1(PushUtil pushUtil, c<? super PushUtil$pushBonusWillExpiredNotification$1> cVar) {
        super(cVar);
        this.f42912n = pushUtil;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42911m = obj;
        this.f42913o |= Integer.MIN_VALUE;
        Object J = this.f42912n.J(null, this);
        if (J == a.f()) {
            return J;
        }
        return Result.b(J);
    }
}
