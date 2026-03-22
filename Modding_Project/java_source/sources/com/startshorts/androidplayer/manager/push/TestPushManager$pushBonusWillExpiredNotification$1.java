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
@d(c = "com.startshorts.androidplayer.manager.push.TestPushManager", f = "TestPushManager.kt", l = {249, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME}, m = "pushBonusWillExpiredNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class TestPushManager$pushBonusWillExpiredNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42862h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42863i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ TestPushManager f42864j;

    /* renamed from: k  reason: collision with root package name */
    int f42865k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPushManager$pushBonusWillExpiredNotification$1(TestPushManager testPushManager, c<? super TestPushManager$pushBonusWillExpiredNotification$1> cVar) {
        super(cVar);
        this.f42864j = testPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42863i = obj;
        this.f42865k |= Integer.MIN_VALUE;
        Object f10 = this.f42864j.f(this);
        if (f10 == a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
