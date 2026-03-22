package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {1710, 1718}, m = "readBlockSuspend")
/* loaded from: classes8.dex */
public final class ByteBufferChannel$readBlockSuspend$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59366h;

    /* renamed from: i  reason: collision with root package name */
    Object f59367i;

    /* renamed from: j  reason: collision with root package name */
    int f59368j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f59369k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ ByteBufferChannel f59370l;

    /* renamed from: m  reason: collision with root package name */
    int f59371m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$readBlockSuspend$1(ByteBufferChannel byteBufferChannel, rs.c<? super ByteBufferChannel$readBlockSuspend$1> cVar) {
        super(cVar);
        this.f59370l = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d02;
        this.f59369k = obj;
        this.f59371m |= Integer.MIN_VALUE;
        d02 = this.f59370l.d0(0, null, this);
        return d02;
    }
}
