package com.startshorts.androidplayer.manager.push;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TestPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.TestPushManager", f = "TestPushManager.kt", l = {57, 61, 65, 69, 73, 77, 81, 85}, m = "executePushTask")
/* loaded from: classes6.dex */
public final class TestPushManager$executePushTask$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42852h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42853i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ TestPushManager f42854j;

    /* renamed from: k  reason: collision with root package name */
    int f42855k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPushManager$executePushTask$1(TestPushManager testPushManager, c<? super TestPushManager$executePushTask$1> cVar) {
        super(cVar);
        this.f42854j = testPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42853i = obj;
        this.f42855k |= Integer.MIN_VALUE;
        return this.f42854j.a(null, null, this);
    }
}
