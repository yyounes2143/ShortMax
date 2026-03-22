package com.startshorts.androidplayer.repo.push;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRemoteDS", f = "PushRemoteDS.kt", l = {44}, m = "queryCustomPushNotification-IoAF18A")
/* loaded from: classes7.dex */
public final class PushRemoteDS$queryCustomPushNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44334h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PushRemoteDS f44335i;

    /* renamed from: j  reason: collision with root package name */
    int f44336j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRemoteDS$queryCustomPushNotification$1(PushRemoteDS pushRemoteDS, c<? super PushRemoteDS$queryCustomPushNotification$1> cVar) {
        super(cVar);
        this.f44335i = pushRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44334h = obj;
        this.f44336j |= Integer.MIN_VALUE;
        Object c10 = this.f44335i.c(this);
        if (c10 == a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
