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
/* compiled from: TestPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.TestPushManager", f = "TestPushManager.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, 204}, m = "pushSubsBonusNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class TestPushManager$pushSubsBonusNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42889h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42890i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ TestPushManager f42891j;

    /* renamed from: k  reason: collision with root package name */
    int f42892k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPushManager$pushSubsBonusNotification$1(TestPushManager testPushManager, c<? super TestPushManager$pushSubsBonusNotification$1> cVar) {
        super(cVar);
        this.f42891j = testPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42890i = obj;
        this.f42892k |= Integer.MIN_VALUE;
        Object m10 = this.f42891j.m(this);
        if (m10 == a.f()) {
            return m10;
        }
        return Result.b(m10);
    }
}
