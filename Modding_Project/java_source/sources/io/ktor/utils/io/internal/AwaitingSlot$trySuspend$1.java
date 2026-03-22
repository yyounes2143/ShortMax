package io.ktor.utils.io.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AwaitingSlot.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.internal.AwaitingSlot", f = "AwaitingSlot.kt", l = {57}, m = "trySuspend")
/* loaded from: classes8.dex */
public final class AwaitingSlot$trySuspend$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    int f59521h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f59522i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AwaitingSlot f59523j;

    /* renamed from: k  reason: collision with root package name */
    int f59524k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AwaitingSlot$trySuspend$1(AwaitingSlot awaitingSlot, rs.c<? super AwaitingSlot$trySuspend$1> cVar) {
        super(cVar);
        this.f59523j = awaitingSlot;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object e10;
        this.f59522i = obj;
        this.f59524k |= Integer.MIN_VALUE;
        e10 = this.f59523j.e(null, this);
        return e10;
    }
}
