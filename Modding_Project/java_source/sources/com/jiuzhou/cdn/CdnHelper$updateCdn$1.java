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
@d(c = "com.jiuzhou.cdn.CdnHelper", f = "CdnHelper.kt", l = {155, 156, 161}, m = "updateCdn")
/* loaded from: classes5.dex */
public final class CdnHelper$updateCdn$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f25547h;

    /* renamed from: i  reason: collision with root package name */
    Object f25548i;

    /* renamed from: j  reason: collision with root package name */
    boolean f25549j;

    /* renamed from: k  reason: collision with root package name */
    int f25550k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f25551l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ CdnHelper f25552m;

    /* renamed from: n  reason: collision with root package name */
    int f25553n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CdnHelper$updateCdn$1(CdnHelper cdnHelper, c<? super CdnHelper$updateCdn$1> cVar) {
        super(cVar);
        this.f25552m = cdnHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f25551l = obj;
        this.f25553n |= Integer.MIN_VALUE;
        return this.f25552m.u(false, this);
    }
}
