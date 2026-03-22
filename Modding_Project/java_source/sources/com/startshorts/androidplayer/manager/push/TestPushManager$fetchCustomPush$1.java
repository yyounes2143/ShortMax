package com.startshorts.androidplayer.manager.push;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TestPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.TestPushManager", f = "TestPushManager.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME}, m = "fetchCustomPush")
/* loaded from: classes6.dex */
public final class TestPushManager$fetchCustomPush$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42859h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ TestPushManager f42860i;

    /* renamed from: j  reason: collision with root package name */
    int f42861j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPushManager$fetchCustomPush$1(TestPushManager testPushManager, c<? super TestPushManager$fetchCustomPush$1> cVar) {
        super(cVar);
        this.f42860i = testPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42859h = obj;
        this.f42861j |= Integer.MIN_VALUE;
        return this.f42860i.c(this);
    }
}
