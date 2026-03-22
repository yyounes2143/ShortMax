package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteChannelSequential.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {204}, m = "writeFully$suspendImpl")
/* loaded from: classes8.dex */
public final class ByteChannelSequentialBase$writeFully$2 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59468h;

    /* renamed from: i  reason: collision with root package name */
    Object f59469i;

    /* renamed from: j  reason: collision with root package name */
    int f59470j;

    /* renamed from: k  reason: collision with root package name */
    int f59471k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f59472l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ ByteChannelSequentialBase f59473m;

    /* renamed from: n  reason: collision with root package name */
    int f59474n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteChannelSequentialBase$writeFully$2(ByteChannelSequentialBase byteChannelSequentialBase, rs.c<? super ByteChannelSequentialBase$writeFully$2> cVar) {
        super(cVar);
        this.f59473m = byteChannelSequentialBase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59472l = obj;
        this.f59474n |= Integer.MIN_VALUE;
        return ByteChannelSequentialBase.M(this.f59473m, null, 0, 0, this);
    }
}
