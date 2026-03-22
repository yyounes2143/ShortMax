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
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager", f = "DefaultPushManager.kt", l = {325}, m = "pushCustomNotification-gIAlu-s")
/* loaded from: classes6.dex */
public final class DefaultPushManager$pushCustomNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42792h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42793i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42794j;

    /* renamed from: k  reason: collision with root package name */
    int f42795k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$pushCustomNotification$1(DefaultPushManager defaultPushManager, c<? super DefaultPushManager$pushCustomNotification$1> cVar) {
        super(cVar);
        this.f42794j = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object I;
        this.f42793i = obj;
        this.f42795k |= Integer.MIN_VALUE;
        I = this.f42794j.I(null, this);
        if (I == a.f()) {
            return I;
        }
        return Result.b(I);
    }
}
