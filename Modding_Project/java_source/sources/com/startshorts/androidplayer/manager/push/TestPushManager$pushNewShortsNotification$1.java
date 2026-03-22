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
@d(c = "com.startshorts.androidplayer.manager.push.TestPushManager", f = "TestPushManager.kt", l = {149, 157}, m = "pushNewShortsNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class TestPushManager$pushNewShortsNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42877h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42878i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ TestPushManager f42879j;

    /* renamed from: k  reason: collision with root package name */
    int f42880k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPushManager$pushNewShortsNotification$1(TestPushManager testPushManager, c<? super TestPushManager$pushNewShortsNotification$1> cVar) {
        super(cVar);
        this.f42879j = testPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42878i = obj;
        this.f42880k |= Integer.MIN_VALUE;
        Object j10 = this.f42879j.j(this);
        if (j10 == a.f()) {
            return j10;
        }
        return Result.b(j10);
    }
}
