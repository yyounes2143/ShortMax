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
/* compiled from: DefaultPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager", f = "DefaultPushManager.kt", l = {408, 419}, m = "pushSubsBonusNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class DefaultPushManager$pushSubsBonusNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42815h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42816i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42817j;

    /* renamed from: k  reason: collision with root package name */
    int f42818k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$pushSubsBonusNotification$1(DefaultPushManager defaultPushManager, c<? super DefaultPushManager$pushSubsBonusNotification$1> cVar) {
        super(cVar);
        this.f42817j = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object N;
        this.f42816i = obj;
        this.f42818k |= Integer.MIN_VALUE;
        N = this.f42817j.N(this);
        if (N == a.f()) {
            return N;
        }
        return Result.b(N);
    }
}
