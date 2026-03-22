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
@d(c = "com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo", f = "ComingSoonRepo.kt", l = {16}, m = "addReservation-0E7RQCE")
/* loaded from: classes7.dex */
public final class ComingSoonRepo$addReservation$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43747h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ComingSoonRepo f43748i;

    /* renamed from: j  reason: collision with root package name */
    int f43749j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonRepo$addReservation$1(ComingSoonRepo comingSoonRepo, c<? super ComingSoonRepo$addReservation$1> cVar) {
        super(cVar);
        this.f43748i = comingSoonRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43747h = obj;
        this.f43749j |= Integer.MIN_VALUE;
        Object b10 = this.f43748i.b(null, 0, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
