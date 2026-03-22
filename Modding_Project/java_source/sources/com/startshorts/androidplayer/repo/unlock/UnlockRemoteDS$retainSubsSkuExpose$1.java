package com.startshorts.androidplayer.repo.unlock;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS", f = "UnlockRemoteDS.kt", l = {148}, m = "retainSubsSkuExpose-0E7RQCE")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$retainSubsSkuExpose$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44661h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockRemoteDS f44662i;

    /* renamed from: j  reason: collision with root package name */
    int f44663j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$retainSubsSkuExpose$1(UnlockRemoteDS unlockRemoteDS, c<? super UnlockRemoteDS$retainSubsSkuExpose$1> cVar) {
        super(cVar);
        this.f44662i = unlockRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44661h = obj;
        this.f44663j |= Integer.MIN_VALUE;
        Object e10 = this.f44662i.e(0, null, this);
        if (e10 == a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
