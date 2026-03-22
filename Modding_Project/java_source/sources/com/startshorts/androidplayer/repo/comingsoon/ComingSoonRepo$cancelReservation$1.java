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
/* compiled from: ComingSoonRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo", f = "ComingSoonRepo.kt", l = {20}, m = "cancelReservation-0E7RQCE")
/* loaded from: classes7.dex */
public final class ComingSoonRepo$cancelReservation$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43750h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ComingSoonRepo f43751i;

    /* renamed from: j  reason: collision with root package name */
    int f43752j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonRepo$cancelReservation$1(ComingSoonRepo comingSoonRepo, c<? super ComingSoonRepo$cancelReservation$1> cVar) {
        super(cVar);
        this.f43751i = comingSoonRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43750h = obj;
        this.f43752j |= Integer.MIN_VALUE;
        Object c10 = this.f43751i.c(null, 0, this);
        if (c10 == a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
