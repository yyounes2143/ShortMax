package com.jiuzhou.cdn;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CdnHelper.kt */
@Metadata
@d(c = "com.jiuzhou.cdn.CdnHelper", f = "CdnHelper.kt", l = {167}, m = "fetchAllCdnList")
/* loaded from: classes5.dex */
public final class CdnHelper$fetchAllCdnList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f25543h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f25544i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ CdnHelper f25545j;

    /* renamed from: k  reason: collision with root package name */
    int f25546k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CdnHelper$fetchAllCdnList$1(CdnHelper cdnHelper, c<? super CdnHelper$fetchAllCdnList$1> cVar) {
        super(cVar);
        this.f25545j = cdnHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object g10;
        this.f25544i = obj;
        this.f25546k |= Integer.MIN_VALUE;
        g10 = this.f25545j.g(null, this);
        return g10;
    }
}
