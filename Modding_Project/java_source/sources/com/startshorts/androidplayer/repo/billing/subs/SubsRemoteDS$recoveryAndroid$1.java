package com.startshorts.androidplayer.repo.billing.subs;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS", f = "SubsRemoteDS.kt", l = {146}, m = "recoveryAndroid-gIAlu-s")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$recoveryAndroid$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43481h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRemoteDS f43482i;

    /* renamed from: j  reason: collision with root package name */
    int f43483j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$recoveryAndroid$1(SubsRemoteDS subsRemoteDS, c<? super SubsRemoteDS$recoveryAndroid$1> cVar) {
        super(cVar);
        this.f43482i = subsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43481h = obj;
        this.f43483j |= Integer.MIN_VALUE;
        Object h10 = this.f43482i.h(null, this);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Result.b(h10);
    }
}
