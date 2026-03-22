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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS", f = "SubsRemoteDS.kt", l = {112}, m = "gPayDowngradePremium-eH_QyT8")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$gPayDowngradePremium$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43435h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRemoteDS f43436i;

    /* renamed from: j  reason: collision with root package name */
    int f43437j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$gPayDowngradePremium$1(SubsRemoteDS subsRemoteDS, c<? super SubsRemoteDS$gPayDowngradePremium$1> cVar) {
        super(cVar);
        this.f43436i = subsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43435h = obj;
        this.f43437j |= Integer.MIN_VALUE;
        Object a10 = this.f43436i.a(null, null, null, null, null, null, null, this);
        if (a10 == kotlin.coroutines.intrinsics.a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
