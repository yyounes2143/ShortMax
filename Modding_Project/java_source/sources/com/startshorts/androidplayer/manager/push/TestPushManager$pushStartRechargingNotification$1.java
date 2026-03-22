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
@d(c = "com.startshorts.androidplayer.manager.push.TestPushManager", f = "TestPushManager.kt", l = {213, 221}, m = "pushStartRechargingNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class TestPushManager$pushStartRechargingNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42885h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42886i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ TestPushManager f42887j;

    /* renamed from: k  reason: collision with root package name */
    int f42888k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPushManager$pushStartRechargingNotification$1(TestPushManager testPushManager, c<? super TestPushManager$pushStartRechargingNotification$1> cVar) {
        super(cVar);
        this.f42887j = testPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42886i = obj;
        this.f42888k |= Integer.MIN_VALUE;
        Object l10 = this.f42887j.l(this);
        if (l10 == a.f()) {
            return l10;
        }
        return Result.b(l10);
    }
}
