package com.startshorts.androidplayer.repo.comingsoon;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComingSoonRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.comingsoon.ComingSoonRemoteDS", f = "ComingSoonRemoteDS.kt", l = {27}, m = "checkShortsReservation-0E7RQCE")
/* loaded from: classes7.dex */
public final class ComingSoonRemoteDS$checkShortsReservation$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43739h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ComingSoonRemoteDS f43740i;

    /* renamed from: j  reason: collision with root package name */
    int f43741j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonRemoteDS$checkShortsReservation$1(ComingSoonRemoteDS comingSoonRemoteDS, c<? super ComingSoonRemoteDS$checkShortsReservation$1> cVar) {
        super(cVar);
        this.f43740i = comingSoonRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43739h = obj;
        this.f43741j |= Integer.MIN_VALUE;
        Object c10 = this.f43740i.c(null, 0, this);
        if (c10 == a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
