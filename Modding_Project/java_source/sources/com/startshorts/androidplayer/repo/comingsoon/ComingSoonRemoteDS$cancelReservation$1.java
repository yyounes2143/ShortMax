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
@d(c = "com.startshorts.androidplayer.repo.comingsoon.ComingSoonRemoteDS", f = "ComingSoonRemoteDS.kt", l = {22}, m = "cancelReservation-0E7RQCE")
/* loaded from: classes7.dex */
public final class ComingSoonRemoteDS$cancelReservation$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43734h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ComingSoonRemoteDS f43735i;

    /* renamed from: j  reason: collision with root package name */
    int f43736j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonRemoteDS$cancelReservation$1(ComingSoonRemoteDS comingSoonRemoteDS, c<? super ComingSoonRemoteDS$cancelReservation$1> cVar) {
        super(cVar);
        this.f43735i = comingSoonRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43734h = obj;
        this.f43736j |= Integer.MIN_VALUE;
        Object b10 = this.f43735i.b(null, 0, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
