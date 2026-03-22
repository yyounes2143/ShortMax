package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {2236}, m = "readSuspendImpl")
/* loaded from: classes8.dex */
public final class ByteBufferChannel$readSuspendImpl$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59380h;

    /* renamed from: i  reason: collision with root package name */
    int f59381i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59382j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ByteBufferChannel f59383k;

    /* renamed from: l  reason: collision with root package name */
    int f59384l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$readSuspendImpl$1(ByteBufferChannel byteBufferChannel, rs.c<? super ByteBufferChannel$readSuspendImpl$1> cVar) {
        super(cVar);
        this.f59383k = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object h02;
        this.f59382j = obj;
        this.f59384l |= Integer.MIN_VALUE;
        h02 = this.f59383k.h0(0, this);
        return h02;
    }
}
