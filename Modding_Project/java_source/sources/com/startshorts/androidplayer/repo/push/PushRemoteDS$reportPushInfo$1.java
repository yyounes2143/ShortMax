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
@d(c = "com.startshorts.androidplayer.repo.push.PushRemoteDS", f = "PushRemoteDS.kt", l = {79}, m = "reportPushInfo-0E7RQCE")
/* loaded from: classes7.dex */
public final class PushRemoteDS$reportPushInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44364h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PushRemoteDS f44365i;

    /* renamed from: j  reason: collision with root package name */
    int f44366j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRemoteDS$reportPushInfo$1(PushRemoteDS pushRemoteDS, c<? super PushRemoteDS$reportPushInfo$1> cVar) {
        super(cVar);
        this.f44365i = pushRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44364h = obj;
        this.f44366j |= Integer.MIN_VALUE;
        Object j10 = this.f44365i.j(0, null, this);
        if (j10 == a.f()) {
            return j10;
        }
        return Result.b(j10);
    }
}
