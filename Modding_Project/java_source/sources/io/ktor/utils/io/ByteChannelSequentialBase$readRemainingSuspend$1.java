package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteChannelSequential.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {425}, m = "readRemainingSuspend")
/* loaded from: classes8.dex */
public final class ByteChannelSequentialBase$readRemainingSuspend$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59457h;

    /* renamed from: i  reason: collision with root package name */
    Object f59458i;

    /* renamed from: j  reason: collision with root package name */
    long f59459j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f59460k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ ByteChannelSequentialBase f59461l;

    /* renamed from: m  reason: collision with root package name */
    int f59462m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteChannelSequentialBase$readRemainingSuspend$1(ByteChannelSequentialBase byteChannelSequentialBase, rs.c<? super ByteChannelSequentialBase$readRemainingSuspend$1> cVar) {
        super(cVar);
        this.f59461l = byteChannelSequentialBase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object J;
        this.f59460k = obj;
        this.f59462m |= Integer.MIN_VALUE;
        J = this.f59461l.J(null, 0L, this);
        return J;
    }
}
