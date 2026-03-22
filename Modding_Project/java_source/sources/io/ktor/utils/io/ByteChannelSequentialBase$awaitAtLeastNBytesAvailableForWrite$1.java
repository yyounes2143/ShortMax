package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteChannelSequential.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {81}, m = "awaitAtLeastNBytesAvailableForWrite$ktor_io")
/* loaded from: classes8.dex */
public final class ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59433h;

    /* renamed from: i  reason: collision with root package name */
    int f59434i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59435j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ByteChannelSequentialBase f59436k;

    /* renamed from: l  reason: collision with root package name */
    int f59437l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1(ByteChannelSequentialBase byteChannelSequentialBase, rs.c<? super ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1> cVar) {
        super(cVar);
        this.f59436k = byteChannelSequentialBase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59435j = obj;
        this.f59437l |= Integer.MIN_VALUE;
        return this.f59436k.t(0, this);
    }
}
