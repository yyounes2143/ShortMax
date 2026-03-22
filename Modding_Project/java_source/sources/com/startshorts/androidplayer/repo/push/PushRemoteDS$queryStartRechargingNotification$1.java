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
@d(c = "com.startshorts.androidplayer.repo.push.PushRemoteDS", f = "PushRemoteDS.kt", l = {58}, m = "queryStartRechargingNotification-IoAF18A")
/* loaded from: classes7.dex */
public final class PushRemoteDS$queryStartRechargingNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44351h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PushRemoteDS f44352i;

    /* renamed from: j  reason: collision with root package name */
    int f44353j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRemoteDS$queryStartRechargingNotification$1(PushRemoteDS pushRemoteDS, c<? super PushRemoteDS$queryStartRechargingNotification$1> cVar) {
        super(cVar);
        this.f44352i = pushRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44351h = obj;
        this.f44353j |= Integer.MIN_VALUE;
        Object g10 = this.f44352i.g(this);
        if (g10 == a.f()) {
            return g10;
        }
        return Result.b(g10);
    }
}
