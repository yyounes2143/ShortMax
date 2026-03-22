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
@d(c = "com.startshorts.androidplayer.repo.push.PushRemoteDS", f = "PushRemoteDS.kt", l = {87}, m = "reportFCMToken-gIAlu-s")
/* loaded from: classes7.dex */
public final class PushRemoteDS$reportFCMToken$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44359h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PushRemoteDS f44360i;

    /* renamed from: j  reason: collision with root package name */
    int f44361j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRemoteDS$reportFCMToken$1(PushRemoteDS pushRemoteDS, c<? super PushRemoteDS$reportFCMToken$1> cVar) {
        super(cVar);
        this.f44360i = pushRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44359h = obj;
        this.f44361j |= Integer.MIN_VALUE;
        Object i10 = this.f44360i.i(null, this);
        if (i10 == a.f()) {
            return i10;
        }
        return Result.b(i10);
    }
}
