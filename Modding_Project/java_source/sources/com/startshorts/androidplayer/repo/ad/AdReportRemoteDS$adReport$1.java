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
/* compiled from: AdReportRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.ad.AdReportRemoteDS", f = "AdReportRemoteDS.kt", l = {12}, m = "adReport-eH_QyT8")
/* loaded from: classes7.dex */
public final class AdReportRemoteDS$adReport$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43117h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AdReportRemoteDS f43118i;

    /* renamed from: j  reason: collision with root package name */
    int f43119j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdReportRemoteDS$adReport$1(AdReportRemoteDS adReportRemoteDS, c<? super AdReportRemoteDS$adReport$1> cVar) {
        super(cVar);
        this.f43118i = adReportRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43117h = obj;
        this.f43119j |= Integer.MIN_VALUE;
        Object a10 = this.f43118i.a(null, null, null, null, 0, 0, null, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
