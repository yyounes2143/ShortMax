package com.startshorts.androidplayer.repo.billing.purchase;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo", f = "PurchaseRepo.kt", l = {254, 300, 305}, m = "gPayCoinsRecover")
/* loaded from: classes7.dex */
public final class PurchaseRepo$gPayCoinsRecover$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    boolean f43384h;

    /* renamed from: i  reason: collision with root package name */
    Object f43385i;

    /* renamed from: j  reason: collision with root package name */
    Object f43386j;

    /* renamed from: k  reason: collision with root package name */
    Object f43387k;

    /* renamed from: l  reason: collision with root package name */
    Object f43388l;

    /* renamed from: m  reason: collision with root package name */
    Object f43389m;

    /* renamed from: n  reason: collision with root package name */
    Object f43390n;

    /* renamed from: o  reason: collision with root package name */
    Object f43391o;

    /* renamed from: p  reason: collision with root package name */
    int f43392p;

    /* renamed from: q  reason: collision with root package name */
    /* synthetic */ Object f43393q;

    /* renamed from: r  reason: collision with root package name */
    final /* synthetic */ PurchaseRepo f43394r;

    /* renamed from: s  reason: collision with root package name */
    int f43395s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRepo$gPayCoinsRecover$1(PurchaseRepo purchaseRepo, c<? super PurchaseRepo$gPayCoinsRecover$1> cVar) {
        super(cVar);
        this.f43394r = purchaseRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43393q = obj;
        this.f43395s |= Integer.MIN_VALUE;
        return this.f43394r.i(false, null, null, null, this);
    }
}
