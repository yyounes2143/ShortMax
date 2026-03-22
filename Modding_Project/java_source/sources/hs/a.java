package hs;

import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Buffer.kt */
@ms.c
@Metadata
@SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 2 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n*L\n1#1,472:1\n69#1:475\n69#1:476\n74#1:477\n74#1:478\n74#1:479\n69#1:480\n69#1,6:491\n59#1:497\n21#2:473\n21#2:474\n26#2:483\n26#2:485\n26#2:487\n37#2,2:489\n1#3:481\n84#4:482\n84#4:484\n84#4:486\n99#4:488\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n86#1:475\n81#1:476\n94#1:477\n106#1:478\n113#1:479\n122#1:480\n333#1:491,6\n333#1:497\n53#1:473\n64#1:474\n277#1:483\n291#1:485\n307#1:487\n319#1:489,2\n277#1:482\n291#1:484\n307#1:486\n319#1:488\n*E\n"})
/* loaded from: classes8.dex */
public class a {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final C0771a f53224g = new C0771a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f53225a;

    /* renamed from: b  reason: collision with root package name */
    private int f53226b;

    /* renamed from: c  reason: collision with root package name */
    private int f53227c;

    /* renamed from: d  reason: collision with root package name */
    private int f53228d;

    /* renamed from: e  reason: collision with root package name */
    private int f53229e;

    /* renamed from: f  reason: collision with root package name */
    private final int f53230f;

    /* compiled from: Buffer.kt */
    @Metadata
    /* renamed from: hs.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0771a {
        public /* synthetic */ C0771a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final a a() {
            return is.a.f60072j.a();
        }

        private C0771a() {
        }
    }

    public /* synthetic */ a(ByteBuffer byteBuffer, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteBuffer);
    }

    public final void a(int i10) {
        int i11 = this.f53227c + i10;
        if (i10 >= 0 && i11 <= this.f53229e) {
            this.f53227c = i11;
        } else {
            d.a(i10, f() - j());
            throw new KotlinNothingValueException();
        }
    }

    public final boolean b(int i10) {
        int i11 = this.f53229e;
        int i12 = this.f53227c;
        if (i10 >= i12) {
            if (i10 >= i11) {
                if (i10 == i11) {
                    this.f53227c = i10;
                    return false;
                }
                d.a(i10 - i12, f() - j());
                throw new KotlinNothingValueException();
            }
            this.f53227c = i10;
            return true;
        }
        d.a(i10 - i12, f() - j());
        throw new KotlinNothingValueException();
    }

    public final void c(int i10) {
        if (i10 == 0) {
            return;
        }
        int i11 = this.f53226b + i10;
        if (i10 >= 0 && i11 <= this.f53227c) {
            this.f53226b = i11;
        } else {
            d.b(i10, j() - h());
            throw new KotlinNothingValueException();
        }
    }

    public final void d(int i10) {
        if (i10 >= 0 && i10 <= this.f53227c) {
            if (this.f53226b != i10) {
                this.f53226b = i10;
                return;
            }
            return;
        }
        d.b(i10 - this.f53226b, j() - h());
        throw new KotlinNothingValueException();
    }

    public final int e() {
        return this.f53230f;
    }

    public final int f() {
        return this.f53229e;
    }

    @NotNull
    public final ByteBuffer g() {
        return this.f53225a;
    }

    public final int h() {
        return this.f53226b;
    }

    public final int i() {
        return this.f53228d;
    }

    public final int j() {
        return this.f53227c;
    }

    public final byte k() {
        int i10 = this.f53226b;
        if (i10 != this.f53227c) {
            this.f53226b = i10 + 1;
            return this.f53225a.get(i10);
        }
        throw new EOFException("No readable bytes available.");
    }

    public final void l() {
        this.f53229e = this.f53230f;
    }

    public final void m() {
        n(0);
        l();
    }

    public final void n(int i10) {
        if (i10 >= 0) {
            if (i10 <= this.f53226b) {
                this.f53226b = i10;
                if (this.f53228d > i10) {
                    this.f53228d = i10;
                    return;
                }
                return;
            }
            throw new IllegalArgumentException(("newReadPosition shouldn't be ahead of the read position: " + i10 + " > " + this.f53226b).toString());
        }
        throw new IllegalArgumentException(("newReadPosition shouldn't be negative: " + i10).toString());
    }

    public final void o(int i10) {
        if (i10 >= 0) {
            int i11 = this.f53230f - i10;
            if (i11 >= this.f53227c) {
                this.f53229e = i11;
                return;
            }
            if (i11 < 0) {
                d.c(this, i10);
            }
            if (i11 < this.f53228d) {
                d.e(this, i10);
            }
            if (this.f53226b == this.f53227c) {
                this.f53229e = i11;
                this.f53226b = i11;
                this.f53227c = i11;
                return;
            }
            d.d(this, i10);
            return;
        }
        throw new IllegalArgumentException(("endGap shouldn't be negative: " + i10).toString());
    }

    public final void p(int i10) {
        if (i10 >= 0) {
            int i11 = this.f53226b;
            if (i11 >= i10) {
                this.f53228d = i10;
                return;
            } else if (i11 == this.f53227c) {
                if (i10 <= this.f53229e) {
                    this.f53227c = i10;
                    this.f53226b = i10;
                    this.f53228d = i10;
                    return;
                }
                d.h(this, i10);
                throw new KotlinNothingValueException();
            } else {
                d.g(this, i10);
                throw new KotlinNothingValueException();
            }
        }
        throw new IllegalArgumentException(("startGap shouldn't be negative: " + i10).toString());
    }

    public void q() {
        m();
        r();
    }

    public final void r() {
        s(this.f53230f - this.f53228d);
    }

    public final void s(int i10) {
        int i11 = this.f53228d;
        this.f53226b = i11;
        this.f53227c = i11;
        this.f53229e = i10;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Buffer[0x");
        String num = Integer.toString(hashCode(), CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(num, "toString(this, checkRadix(radix))");
        sb2.append(num);
        sb2.append("](");
        sb2.append(j() - h());
        sb2.append(" used, ");
        sb2.append(f() - j());
        sb2.append(" free, ");
        sb2.append(this.f53228d + (e() - f()));
        sb2.append(" reserved of ");
        sb2.append(this.f53230f);
        sb2.append(')');
        return sb2.toString();
    }

    private a(ByteBuffer memory) {
        Intrinsics.checkNotNullParameter(memory, "memory");
        this.f53225a = memory;
        this.f53229e = memory.limit();
        this.f53230f = memory.limit();
    }
}
