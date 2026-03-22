package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {2189}, m = "readSuspendLoop")
/* loaded from: classes8.dex */
public final class ByteBufferChannel$readSuspendLoop$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59385h;

    /* renamed from: i  reason: collision with root package name */
    int f59386i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59387j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ByteBufferChannel f59388k;

    /* renamed from: l  reason: collision with root package name */
    int f59389l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$readSuspendLoop$1(ByteBufferChannel byteBufferChannel, rs.c<? super ByteBufferChannel$readSuspendLoop$1> cVar) {
        super(cVar);
        this.f59388k = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object i02;
        this.f59387j = obj;
        this.f59389l |= Integer.MIN_VALUE;
        i02 = this.f59388k.i0(0, this);
        return i02;
    }
}
