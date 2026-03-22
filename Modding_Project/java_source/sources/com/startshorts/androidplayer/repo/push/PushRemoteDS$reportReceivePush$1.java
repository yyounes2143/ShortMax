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
@d(c = "com.startshorts.androidplayer.repo.push.PushRemoteDS", f = "PushRemoteDS.kt", l = {95}, m = "reportReceivePush-IoAF18A")
/* loaded from: classes7.dex */
public final class PushRemoteDS$reportReceivePush$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44370h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PushRemoteDS f44371i;

    /* renamed from: j  reason: collision with root package name */
    int f44372j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRemoteDS$reportReceivePush$1(PushRemoteDS pushRemoteDS, c<? super PushRemoteDS$reportReceivePush$1> cVar) {
        super(cVar);
        this.f44371i = pushRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44370h = obj;
        this.f44372j |= Integer.MIN_VALUE;
        Object k10 = this.f44371i.k(this);
        if (k10 == a.f()) {
            return k10;
        }
        return Result.b(k10);
    }
}
