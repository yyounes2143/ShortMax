package com.jiuzhou.cdn.repo;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CdnRepo.kt */
@Metadata
@d(c = "com.jiuzhou.cdn.repo.CdnRepo", f = "CdnRepo.kt", l = {111}, m = "logEvents")
/* loaded from: classes5.dex */
public final class CdnRepo$logEvents$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f25588h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CdnRepo f25589i;

    /* renamed from: j  reason: collision with root package name */
    int f25590j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CdnRepo$logEvents$1(CdnRepo cdnRepo, c<? super CdnRepo$logEvents$1> cVar) {
        super(cVar);
        this.f25589i = cdnRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f25588h = obj;
        this.f25590j |= Integer.MIN_VALUE;
        return this.f25589i.f(null, this);
    }
}
