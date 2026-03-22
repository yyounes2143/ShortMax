package com.startshorts.androidplayer.manager.push;

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
@d(c = "com.startshorts.androidplayer.manager.push.TestPushManager", f = "TestPushManager.kt", l = {141}, m = "pushCheckInNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class TestPushManager$pushCheckInNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42866h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ TestPushManager f42867i;

    /* renamed from: j  reason: collision with root package name */
    int f42868j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPushManager$pushCheckInNotification$1(TestPushManager testPushManager, c<? super TestPushManager$pushCheckInNotification$1> cVar) {
        super(cVar);
        this.f42867i = testPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42866h = obj;
        this.f42868j |= Integer.MIN_VALUE;
        Object g10 = this.f42867i.g(this);
        if (g10 == a.f()) {
            return g10;
        }
        return Result.b(g10);
    }
}
