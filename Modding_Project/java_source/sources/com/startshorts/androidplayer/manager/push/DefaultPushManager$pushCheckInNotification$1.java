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
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager", f = "DefaultPushManager.kt", l = {346}, m = "pushCheckInNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class DefaultPushManager$pushCheckInNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42789h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42790i;

    /* renamed from: j  reason: collision with root package name */
    int f42791j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$pushCheckInNotification$1(DefaultPushManager defaultPushManager, c<? super DefaultPushManager$pushCheckInNotification$1> cVar) {
        super(cVar);
        this.f42790i = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object H;
        this.f42789h = obj;
        this.f42791j |= Integer.MIN_VALUE;
        H = this.f42790i.H(this);
        if (H == a.f()) {
            return H;
        }
        return Result.b(H);
    }
}
