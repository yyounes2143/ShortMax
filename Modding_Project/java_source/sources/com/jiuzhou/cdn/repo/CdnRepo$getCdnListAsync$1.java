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
@d(c = "com.jiuzhou.cdn.repo.CdnRepo", f = "CdnRepo.kt", l = {34}, m = "getCdnListAsync")
/* loaded from: classes5.dex */
public final class CdnRepo$getCdnListAsync$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f25585h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CdnRepo f25586i;

    /* renamed from: j  reason: collision with root package name */
    int f25587j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CdnRepo$getCdnListAsync$1(CdnRepo cdnRepo, c<? super CdnRepo$getCdnListAsync$1> cVar) {
        super(cVar);
        this.f25586i = cdnRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f25585h = obj;
        this.f25587j |= Integer.MIN_VALUE;
        return this.f25586i.d(this);
    }
}
