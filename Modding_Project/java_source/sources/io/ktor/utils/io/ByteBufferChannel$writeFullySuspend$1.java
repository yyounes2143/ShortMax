package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {1113, 1115}, m = "writeFullySuspend")
/* loaded from: classes8.dex */
public final class ByteBufferChannel$writeFullySuspend$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59390h;

    /* renamed from: i  reason: collision with root package name */
    Object f59391i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59392j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ByteBufferChannel f59393k;

    /* renamed from: l  reason: collision with root package name */
    int f59394l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$writeFullySuspend$1(ByteBufferChannel byteBufferChannel, rs.c<? super ByteBufferChannel$writeFullySuspend$1> cVar) {
        super(cVar);
        this.f59393k = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object M0;
        this.f59392j = obj;
        this.f59394l |= Integer.MIN_VALUE;
        M0 = this.f59393k.M0(null, this);
        return M0;
    }
}
