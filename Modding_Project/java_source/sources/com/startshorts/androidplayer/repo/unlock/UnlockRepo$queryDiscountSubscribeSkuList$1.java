package com.startshorts.androidplayer.repo.unlock;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo", f = "UnlockRepo.kt", l = {49, 51, 60}, m = "queryDiscountSubscribeSkuList-BWLJW6A")
/* loaded from: classes7.dex */
public final class UnlockRepo$queryDiscountSubscribeSkuList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f44689h;

    /* renamed from: i  reason: collision with root package name */
    Object f44690i;

    /* renamed from: j  reason: collision with root package name */
    Object f44691j;

    /* renamed from: k  reason: collision with root package name */
    boolean f44692k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f44693l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ UnlockRepo f44694m;

    /* renamed from: n  reason: collision with root package name */
    int f44695n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$queryDiscountSubscribeSkuList$1(UnlockRepo unlockRepo, c<? super UnlockRepo$queryDiscountSubscribeSkuList$1> cVar) {
        super(cVar);
        this.f44694m = unlockRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44693l = obj;
        this.f44695n |= Integer.MIN_VALUE;
        Object j10 = this.f44694m.j(false, null, null, this);
        if (j10 == a.f()) {
            return j10;
        }
        return Result.b(j10);
    }
}
