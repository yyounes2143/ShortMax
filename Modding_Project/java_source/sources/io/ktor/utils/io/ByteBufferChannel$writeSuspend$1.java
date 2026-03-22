package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {1439, 1441}, m = "writeSuspend")
/* loaded from: classes8.dex */
public final class ByteBufferChannel$writeSuspend$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59407h;

    /* renamed from: i  reason: collision with root package name */
    Object f59408i;

    /* renamed from: j  reason: collision with root package name */
    int f59409j;

    /* renamed from: k  reason: collision with root package name */
    int f59410k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f59411l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ ByteBufferChannel f59412m;

    /* renamed from: n  reason: collision with root package name */
    int f59413n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$writeSuspend$1(ByteBufferChannel byteBufferChannel, rs.c<? super ByteBufferChannel$writeSuspend$1> cVar) {
        super(cVar);
        this.f59412m = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object O0;
        this.f59411l = obj;
        this.f59413n |= Integer.MIN_VALUE;
        O0 = this.f59412m.O0(null, 0, 0, this);
        return O0;
    }
}
