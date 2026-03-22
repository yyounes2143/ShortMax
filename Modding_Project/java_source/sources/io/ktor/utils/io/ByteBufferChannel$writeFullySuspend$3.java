package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {1123, 1125}, m = "writeFullySuspend")
/* loaded from: classes8.dex */
public final class ByteBufferChannel$writeFullySuspend$3 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59395h;

    /* renamed from: i  reason: collision with root package name */
    Object f59396i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59397j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ByteBufferChannel f59398k;

    /* renamed from: l  reason: collision with root package name */
    int f59399l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$writeFullySuspend$3(ByteBufferChannel byteBufferChannel, rs.c<? super ByteBufferChannel$writeFullySuspend$3> cVar) {
        super(cVar);
        this.f59398k = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object L0;
        this.f59397j = obj;
        this.f59399l |= Integer.MIN_VALUE;
        L0 = this.f59398k.L0(null, this);
        return L0;
    }
}
