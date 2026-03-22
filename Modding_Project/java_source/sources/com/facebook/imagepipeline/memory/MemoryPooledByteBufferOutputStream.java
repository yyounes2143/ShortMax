package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import b4.v;
import b4.x;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import n2.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MemoryPooledByteBufferOutputStream.kt */
@Metadata
/* loaded from: classes3.dex */
public final class MemoryPooledByteBufferOutputStream extends i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final e f15670a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private o2.a<v> f15671b;

    /* renamed from: c  reason: collision with root package name */
    private int f15672c;

    /* compiled from: MemoryPooledByteBufferOutputStream.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class InvalidStreamException extends RuntimeException {
        public InvalidStreamException() {
            super("OutputStream no longer valid");
        }
    }

    public /* synthetic */ MemoryPooledByteBufferOutputStream(e eVar, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(eVar, (i11 & 2) != 0 ? eVar.C() : i10);
    }

    private final void k() {
        if (o2.a.v(this.f15671b)) {
            return;
        }
        throw new InvalidStreamException();
    }

    @Override // n2.i, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        o2.a.r(this.f15671b);
        this.f15671b = null;
        this.f15672c = -1;
        super.close();
    }

    @VisibleForTesting
    public final void l(int i10) {
        k();
        o2.a<v> aVar = this.f15671b;
        if (aVar != null) {
            Intrinsics.checkNotNull(aVar);
            if (i10 <= aVar.s().getSize()) {
                return;
            }
            v vVar = this.f15670a.get(i10);
            Intrinsics.checkNotNullExpressionValue(vVar, "get(...)");
            v vVar2 = vVar;
            o2.a<v> aVar2 = this.f15671b;
            if (aVar2 != null) {
                Intrinsics.checkNotNull(aVar2);
                aVar2.s().P(0, vVar2, 0, this.f15672c);
                o2.a<v> aVar3 = this.f15671b;
                Intrinsics.checkNotNull(aVar3);
                aVar3.close();
                this.f15671b = o2.a.F(vVar2, this.f15670a);
                return;
            }
            throw new IllegalStateException("Required value was null.");
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override // n2.i
    @NotNull
    /* renamed from: m */
    public x d() {
        k();
        o2.a<v> aVar = this.f15671b;
        if (aVar != null) {
            return new x(aVar, this.f15672c);
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override // n2.i
    public int size() {
        return this.f15672c;
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10});
    }

    public MemoryPooledByteBufferOutputStream(@NotNull e pool, int i10) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        if (i10 > 0) {
            this.f15670a = pool;
            this.f15672c = 0;
            this.f15671b = o2.a.F(pool.get(i10), pool);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    @Override // java.io.OutputStream
    public void write(@NotNull byte[] buffer, int i10, int i11) throws IOException {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        if (i10 >= 0 && i11 >= 0 && i10 + i11 <= buffer.length) {
            k();
            l(this.f15672c + i11);
            o2.a<v> aVar = this.f15671b;
            if (aVar != null) {
                aVar.s().F(this.f15672c, buffer, i10, i11);
                this.f15672c += i11;
                return;
            }
            throw new IllegalStateException("Required value was null.");
        }
        throw new ArrayIndexOutOfBoundsException("length=" + buffer.length + "; regionStart=" + i10 + "; regionLength=" + i11);
    }
}
