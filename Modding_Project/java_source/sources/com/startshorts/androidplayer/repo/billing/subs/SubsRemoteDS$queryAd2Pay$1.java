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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS", f = "SubsRemoteDS.kt", l = {47}, m = "queryAd2Pay-IoAF18A")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$queryAd2Pay$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43467h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRemoteDS f43468i;

    /* renamed from: j  reason: collision with root package name */
    int f43469j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$queryAd2Pay$1(SubsRemoteDS subsRemoteDS, c<? super SubsRemoteDS$queryAd2Pay$1> cVar) {
        super(cVar);
        this.f43468i = subsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43467h = obj;
        this.f43469j |= Integer.MIN_VALUE;
        Object e10 = this.f43468i.e(this);
        if (e10 == kotlin.coroutines.intrinsics.a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
