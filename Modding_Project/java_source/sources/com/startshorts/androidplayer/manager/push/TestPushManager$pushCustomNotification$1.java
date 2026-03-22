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
@d(c = "com.startshorts.androidplayer.manager.push.TestPushManager", f = "TestPushManager.kt", l = {98, 107, 124, 126}, m = "pushCustomNotification-gIAlu-s")
/* loaded from: classes6.dex */
public final class TestPushManager$pushCustomNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42869h;

    /* renamed from: i  reason: collision with root package name */
    Object f42870i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f42871j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ TestPushManager f42872k;

    /* renamed from: l  reason: collision with root package name */
    int f42873l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPushManager$pushCustomNotification$1(TestPushManager testPushManager, c<? super TestPushManager$pushCustomNotification$1> cVar) {
        super(cVar);
        this.f42872k = testPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42871j = obj;
        this.f42873l |= Integer.MIN_VALUE;
        Object h10 = this.f42872k.h(null, this);
        if (h10 == a.f()) {
            return h10;
        }
        return Result.b(h10);
    }
}
