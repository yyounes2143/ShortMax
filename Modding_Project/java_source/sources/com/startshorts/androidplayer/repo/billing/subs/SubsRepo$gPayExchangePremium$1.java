package com.startshorts.androidplayer.repo.billing.subs;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo", f = "SubsRepo.kt", l = {75, 81, 105, 112, 116}, m = "gPayExchangePremium")
/* loaded from: classes7.dex */
public final class SubsRepo$gPayExchangePremium$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43509h;

    /* renamed from: i  reason: collision with root package name */
    Object f43510i;

    /* renamed from: j  reason: collision with root package name */
    Object f43511j;

    /* renamed from: k  reason: collision with root package name */
    Object f43512k;

    /* renamed from: l  reason: collision with root package name */
    Object f43513l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f43514m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ SubsRepo f43515n;

    /* renamed from: o  reason: collision with root package name */
    int f43516o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRepo$gPayExchangePremium$1(SubsRepo subsRepo, c<? super SubsRepo$gPayExchangePremium$1> cVar) {
        super(cVar);
        this.f43515n = subsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43514m = obj;
        this.f43516o |= Integer.MIN_VALUE;
        return this.f43515n.d(null, null, null, null, null, null, null, this);
    }
}
