package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteChannelSequential.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {611}, m = "awaitSuspend")
/* loaded from: classes8.dex */
public final class ByteChannelSequentialBase$awaitSuspend$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59440h;

    /* renamed from: i  reason: collision with root package name */
    int f59441i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59442j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ByteChannelSequentialBase f59443k;

    /* renamed from: l  reason: collision with root package name */
    int f59444l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteChannelSequentialBase$awaitSuspend$1(ByteChannelSequentialBase byteChannelSequentialBase, rs.c<? super ByteChannelSequentialBase$awaitSuspend$1> cVar) {
        super(cVar);
        this.f59443k = byteChannelSequentialBase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59442j = obj;
        this.f59444l |= Integer.MIN_VALUE;
        return this.f59443k.v(0, this);
    }
}
