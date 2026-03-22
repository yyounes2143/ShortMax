package io.ktor.utils.io.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AwaitingSlot.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.internal.AwaitingSlot", f = "AwaitingSlot.kt", l = {24}, m = "sleep")
/* loaded from: classes8.dex */
public final class AwaitingSlot$sleep$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59517h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f59518i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AwaitingSlot f59519j;

    /* renamed from: k  reason: collision with root package name */
    int f59520k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AwaitingSlot$sleep$1(AwaitingSlot awaitingSlot, rs.c<? super AwaitingSlot$sleep$1> cVar) {
        super(cVar);
        this.f59519j = awaitingSlot;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59518i = obj;
        this.f59520k |= Integer.MIN_VALUE;
        return this.f59519j.d(null, this);
    }
}
