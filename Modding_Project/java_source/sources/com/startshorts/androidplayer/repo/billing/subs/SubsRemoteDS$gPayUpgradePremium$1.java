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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS", f = "SubsRemoteDS.kt", l = {89}, m = "gPayUpgradePremium-bMdYcbs")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$gPayUpgradePremium$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43458h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRemoteDS f43459i;

    /* renamed from: j  reason: collision with root package name */
    int f43460j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$gPayUpgradePremium$1(SubsRemoteDS subsRemoteDS, c<? super SubsRemoteDS$gPayUpgradePremium$1> cVar) {
        super(cVar);
        this.f43459i = subsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43458h = obj;
        this.f43460j |= Integer.MIN_VALUE;
        Object d10 = this.f43459i.d(null, null, null, null, null, null, this);
        if (d10 == kotlin.coroutines.intrinsics.a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
