package com.startshorts.androidplayer.repo.shorts;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShortsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.shorts.ShortsRemoteDS", f = "ShortsRemoteDS.kt", l = {21}, m = "fetch-hUnOzRk")
/* loaded from: classes7.dex */
public final class ShortsRemoteDS$fetch$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44596h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ShortsRemoteDS f44597i;

    /* renamed from: j  reason: collision with root package name */
    int f44598j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsRemoteDS$fetch$1(ShortsRemoteDS shortsRemoteDS, c<? super ShortsRemoteDS$fetch$1> cVar) {
        super(cVar);
        this.f44597i = shortsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44596h = obj;
        this.f44598j |= Integer.MIN_VALUE;
        Object b10 = this.f44597i.b(0, 0, false, null, null, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
