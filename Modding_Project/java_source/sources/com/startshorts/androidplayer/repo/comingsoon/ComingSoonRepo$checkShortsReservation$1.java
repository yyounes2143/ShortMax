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
@d(c = "com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo", f = "ComingSoonRepo.kt", l = {24}, m = "checkShortsReservation-0E7RQCE")
/* loaded from: classes7.dex */
public final class ComingSoonRepo$checkShortsReservation$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43753h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ComingSoonRepo f43754i;

    /* renamed from: j  reason: collision with root package name */
    int f43755j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonRepo$checkShortsReservation$1(ComingSoonRepo comingSoonRepo, c<? super ComingSoonRepo$checkShortsReservation$1> cVar) {
        super(cVar);
        this.f43754i = comingSoonRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43753h = obj;
        this.f43755j |= Integer.MIN_VALUE;
        Object d10 = this.f43754i.d(null, 0, this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
