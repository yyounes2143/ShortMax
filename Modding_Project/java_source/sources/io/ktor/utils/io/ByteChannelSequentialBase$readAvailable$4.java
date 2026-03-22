package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteChannelSequential.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {530}, m = "readAvailable$suspendImpl")
/* loaded from: classes8.dex */
public final class ByteChannelSequentialBase$readAvailable$4 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59450h;

    /* renamed from: i  reason: collision with root package name */
    Object f59451i;

    /* renamed from: j  reason: collision with root package name */
    int f59452j;

    /* renamed from: k  reason: collision with root package name */
    int f59453k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f59454l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ ByteChannelSequentialBase f59455m;

    /* renamed from: n  reason: collision with root package name */
    int f59456n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteChannelSequentialBase$readAvailable$4(ByteChannelSequentialBase byteChannelSequentialBase, rs.c<? super ByteChannelSequentialBase$readAvailable$4> cVar) {
        super(cVar);
        this.f59455m = byteChannelSequentialBase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59454l = obj;
        this.f59456n |= Integer.MIN_VALUE;
        return ByteChannelSequentialBase.H(this.f59455m, null, 0, 0, this);
    }
}
