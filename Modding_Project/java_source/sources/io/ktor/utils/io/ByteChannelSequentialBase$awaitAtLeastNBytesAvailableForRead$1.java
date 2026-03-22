package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteChannelSequential.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {88}, m = "awaitAtLeastNBytesAvailableForRead$ktor_io")
/* loaded from: classes8.dex */
public final class ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59426h;

    /* renamed from: i  reason: collision with root package name */
    int f59427i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59428j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ByteChannelSequentialBase f59429k;

    /* renamed from: l  reason: collision with root package name */
    int f59430l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1(ByteChannelSequentialBase byteChannelSequentialBase, rs.c<? super ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1> cVar) {
        super(cVar);
        this.f59429k = byteChannelSequentialBase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59428j = obj;
        this.f59430l |= Integer.MIN_VALUE;
        return this.f59429k.s(0, this);
    }
}
