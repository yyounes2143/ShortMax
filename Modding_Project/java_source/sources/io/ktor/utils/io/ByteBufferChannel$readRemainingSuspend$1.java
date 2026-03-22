package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {2093}, m = "readRemainingSuspend")
/* loaded from: classes8.dex */
public final class ByteBufferChannel$readRemainingSuspend$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59372h;

    /* renamed from: i  reason: collision with root package name */
    Object f59373i;

    /* renamed from: j  reason: collision with root package name */
    Object f59374j;

    /* renamed from: k  reason: collision with root package name */
    Object f59375k;

    /* renamed from: l  reason: collision with root package name */
    Object f59376l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f59377m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ ByteBufferChannel f59378n;

    /* renamed from: o  reason: collision with root package name */
    int f59379o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$readRemainingSuspend$1(ByteBufferChannel byteBufferChannel, rs.c<? super ByteBufferChannel$readRemainingSuspend$1> cVar) {
        super(cVar);
        this.f59378n = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f02;
        this.f59377m = obj;
        this.f59379o |= Integer.MIN_VALUE;
        f02 = this.f59378n.f0(0L, this);
        return f02;
    }
}
