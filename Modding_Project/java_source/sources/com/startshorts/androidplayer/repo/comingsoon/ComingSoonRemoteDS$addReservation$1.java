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
@d(c = "com.startshorts.androidplayer.repo.comingsoon.ComingSoonRemoteDS", f = "ComingSoonRemoteDS.kt", l = {17}, m = "addReservation-0E7RQCE")
/* loaded from: classes7.dex */
public final class ComingSoonRemoteDS$addReservation$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43729h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ComingSoonRemoteDS f43730i;

    /* renamed from: j  reason: collision with root package name */
    int f43731j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonRemoteDS$addReservation$1(ComingSoonRemoteDS comingSoonRemoteDS, c<? super ComingSoonRemoteDS$addReservation$1> cVar) {
        super(cVar);
        this.f43730i = comingSoonRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43729h = obj;
        this.f43731j |= Integer.MIN_VALUE;
        Object a10 = this.f43730i.a(null, 0, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
