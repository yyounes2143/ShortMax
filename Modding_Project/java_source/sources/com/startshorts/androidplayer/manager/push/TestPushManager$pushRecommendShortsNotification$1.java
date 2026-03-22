package com.startshorts.androidplayer.manager.push;

import com.ss.ttvideoengine.log.IVideoEventLogger;
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
@d(c = "com.startshorts.androidplayer.manager.push.TestPushManager", f = "TestPushManager.kt", l = {IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION, 177}, m = "pushRecommendShortsNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class TestPushManager$pushRecommendShortsNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42881h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42882i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ TestPushManager f42883j;

    /* renamed from: k  reason: collision with root package name */
    int f42884k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPushManager$pushRecommendShortsNotification$1(TestPushManager testPushManager, c<? super TestPushManager$pushRecommendShortsNotification$1> cVar) {
        super(cVar);
        this.f42883j = testPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42882i = obj;
        this.f42884k |= Integer.MIN_VALUE;
        Object k10 = this.f42883j.k(this);
        if (k10 == a.f()) {
            return k10;
        }
        return Result.b(k10);
    }
}
