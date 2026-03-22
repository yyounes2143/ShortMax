package com.startshorts.androidplayer.repo.ad;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdConfigRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.ad.AdConfigRemoteDS", f = "AdConfigRemoteDS.kt", l = {13}, m = "queryAdConfig-IoAF18A")
/* loaded from: classes7.dex */
public final class AdConfigRemoteDS$queryAdConfig$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43110h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AdConfigRemoteDS f43111i;

    /* renamed from: j  reason: collision with root package name */
    int f43112j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdConfigRemoteDS$queryAdConfig$1(AdConfigRemoteDS adConfigRemoteDS, c<? super AdConfigRemoteDS$queryAdConfig$1> cVar) {
        super(cVar);
        this.f43111i = adConfigRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43110h = obj;
        this.f43112j |= Integer.MIN_VALUE;
        Object a10 = this.f43111i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
