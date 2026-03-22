package hs;

import androidx.collection.SieveCacheKt;
import java.io.Closeable;
import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Output.kt */
@ms.c
@Metadata
@SourceDebugExtension({"SMAP\nOutput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/Output\n+ 2 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n+ 6 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 7 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 8 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 9 Input.kt\nio/ktor/utils/io/core/Input\n+ 10 PacketDirect.kt\nio/ktor/utils/io/core/PacketDirectKt\n*L\n1#1,576:1\n371#1,3:622\n374#1:653\n376#1,3:655\n55#1:708\n35#2,6:577\n41#2,3:584\n69#3:583\n69#3:588\n69#3:658\n69#3:659\n59#3:660\n74#3:661\n74#3:662\n59#3:663\n1#4:587\n1#4:654\n6#5,2:589\n99#6:591\n99#6:603\n99#6:634\n37#7,2:592\n37#7,2:597\n37#7,2:628\n319#8,3:594\n322#8,4:599\n326#8,18:604\n319#8,3:625\n322#8,4:630\n326#8,18:635\n77#9:664\n77#9:686\n8#10,21:665\n8#10,21:687\n*S KotlinDebug\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/Output\n*L\n176#1:622,3\n176#1:653\n176#1:655,3\n355#1:708\n65#1:577,6\n65#1:584,3\n66#1:583\n100#1:588\n237#1:658\n238#1:659\n242#1:660\n242#1:661\n260#1:662\n260#1:663\n176#1:654\n100#1:589,2\n137#1:591\n166#1:603\n177#1:634\n137#1:592,2\n166#1:597,2\n177#1:628,2\n166#1:594,3\n166#1:599,4\n166#1:604,18\n177#1:625,3\n177#1:630,4\n177#1:635,18\n308#1:664\n328#1:686\n313#1:665,21\n333#1:687,21\n*E\n"})
/* loaded from: classes8.dex */
public abstract class n implements Appendable, Closeable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final io.ktor.utils.io.pool.b<is.a> f53244a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private is.a f53245b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private is.a f53246c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private ByteBuffer f53247d;

    /* renamed from: e  reason: collision with root package name */
    private int f53248e;

    /* renamed from: f  reason: collision with root package name */
    private int f53249f;

    /* renamed from: g  reason: collision with root package name */
    private int f53250g;

    /* renamed from: h  reason: collision with root package name */
    private int f53251h;

    public n(@NotNull io.ktor.utils.io.pool.b<is.a> pool) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        this.f53244a = pool;
        this.f53247d = fs.c.f51938a.a();
    }

    private final void c0(is.a aVar, is.a aVar2, io.ktor.utils.io.pool.b<is.a> bVar) {
        aVar.b(this.f53248e);
        int j10 = aVar.j() - aVar.h();
        int j11 = aVar2.j() - aVar2.h();
        int a10 = p.a();
        if (j11 >= a10 || j11 > (aVar.e() - aVar.f()) + (aVar.f() - aVar.j())) {
            j11 = -1;
        }
        if (j10 >= a10 || j10 > aVar2.i() || !is.b.a(aVar2)) {
            j10 = -1;
        }
        if (j11 == -1 && j10 == -1) {
            p(aVar2);
        } else if (j10 != -1 && j11 > j10) {
            if (j11 != -1 && j10 >= j11) {
                throw new IllegalStateException("prep = " + j10 + ", app = " + j11);
            }
            d0(aVar2, aVar);
        } else {
            b.a(aVar, aVar2, (aVar.f() - aVar.j()) + (aVar.e() - aVar.f()));
            k();
            is.a w10 = aVar2.w();
            if (w10 != null) {
                p(w10);
            }
            aVar2.A(bVar);
        }
    }

    private final void d0(is.a aVar, is.a aVar2) {
        b.c(aVar, aVar2);
        is.a aVar3 = this.f53245b;
        if (aVar3 != null) {
            if (aVar3 == aVar2) {
                this.f53245b = aVar;
            } else {
                while (true) {
                    is.a x10 = aVar3.x();
                    Intrinsics.checkNotNull(x10);
                    if (x10 == aVar2) {
                        break;
                    }
                    aVar3 = x10;
                }
                aVar3.C(aVar);
            }
            aVar2.A(this.f53244a);
            this.f53246c = h.a(aVar);
            return;
        }
        throw new IllegalStateException("head should't be null since it is already handled in the fast-path");
    }

    private final void q(is.a aVar, is.a aVar2, int i10) {
        is.a aVar3 = this.f53246c;
        if (aVar3 == null) {
            this.f53245b = aVar;
            this.f53251h = 0;
        } else {
            aVar3.C(aVar);
            int i11 = this.f53248e;
            aVar3.b(i11);
            this.f53251h += i11 - this.f53250g;
        }
        this.f53246c = aVar2;
        this.f53251h += i10;
        this.f53247d = aVar2.g();
        this.f53248e = aVar2.j();
        this.f53250g = aVar2.h();
        this.f53249f = aVar2.f();
    }

    private final void r(char c10) {
        int i10 = 3;
        is.a W = W(3);
        try {
            ByteBuffer g10 = W.g();
            int j10 = W.j();
            if (c10 >= 0 && c10 < 128) {
                g10.put(j10, (byte) c10);
                i10 = 1;
            } else if (128 <= c10 && c10 < 2048) {
                g10.put(j10, (byte) (((c10 >> 6) & 31) | 192));
                g10.put(j10 + 1, (byte) ((c10 & '?') | 128));
                i10 = 2;
            } else if (2048 <= c10 && c10 < 0) {
                g10.put(j10, (byte) (((c10 >> '\f') & 15) | 224));
                g10.put(j10 + 1, (byte) (((c10 >> 6) & 63) | 128));
                g10.put(j10 + 2, (byte) ((c10 & '?') | 128));
            } else if (0 <= c10 && c10 < 0) {
                g10.put(j10, (byte) (((c10 >> 18) & 7) | 240));
                g10.put(j10 + 1, (byte) (((c10 >> '\f') & 63) | 128));
                g10.put(j10 + 2, (byte) (((c10 >> 6) & 63) | 128));
                g10.put(j10 + 3, (byte) ((c10 & '?') | 128));
                i10 = 4;
            } else {
                is.e.j(c10);
                throw new KotlinNothingValueException();
            }
            W.a(i10);
            if (i10 >= 0) {
                k();
                return;
            }
            throw new IllegalStateException("The returned value shouldn't be negative");
        } catch (Throwable th2) {
            k();
            throw th2;
        }
    }

    private final is.a s() {
        is.a p02 = this.f53244a.p0();
        p02.o(8);
        t(p02);
        return p02;
    }

    private final void w() {
        is.a Y = Y();
        if (Y == null) {
            return;
        }
        is.a aVar = Y;
        do {
            try {
                v(aVar.g(), aVar.h(), aVar.j() - aVar.h());
                aVar = aVar.x();
            } finally {
                h.b(Y, this.f53244a);
            }
        } while (aVar != null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final io.ktor.utils.io.pool.b<is.a> F() {
        return this.f53244a;
    }

    public final int P() {
        return this.f53249f;
    }

    public final int R() {
        return this.f53248e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int T() {
        return this.f53251h + (this.f53248e - this.f53250g);
    }

    @NotNull
    public final is.a W(int i10) {
        is.a aVar;
        if (P() - R() >= i10 && (aVar = this.f53246c) != null) {
            aVar.b(this.f53248e);
            return aVar;
        }
        return s();
    }

    @Nullable
    public final is.a Y() {
        is.a aVar = this.f53245b;
        if (aVar == null) {
            return null;
        }
        is.a aVar2 = this.f53246c;
        if (aVar2 != null) {
            aVar2.b(this.f53248e);
        }
        this.f53245b = null;
        this.f53246c = null;
        this.f53248e = 0;
        this.f53249f = 0;
        this.f53250g = 0;
        this.f53251h = 0;
        this.f53247d = fs.c.f51938a.a();
        return aVar;
    }

    public final void Z(@NotNull is.a chunkBuffer) {
        Intrinsics.checkNotNullParameter(chunkBuffer, "chunkBuffer");
        is.a aVar = this.f53246c;
        if (aVar == null) {
            p(chunkBuffer);
        } else {
            c0(aVar, chunkBuffer, this.f53244a);
        }
    }

    public final void a0(@NotNull j packet) {
        Intrinsics.checkNotNullParameter(packet, "packet");
        is.a y02 = packet.y0();
        if (y02 == null) {
            packet.release();
            return;
        }
        is.a aVar = this.f53246c;
        if (aVar == null) {
            p(y02);
        } else {
            c0(aVar, y02, packet.Z());
        }
    }

    public final void b0(@NotNull j p10, long j10) {
        Intrinsics.checkNotNullParameter(p10, "p");
        while (j10 > 0) {
            long T = p10.T() - p10.Y();
            if (T <= j10) {
                j10 -= T;
                is.a w02 = p10.w0();
                if (w02 != null) {
                    t(w02);
                } else {
                    throw new EOFException("Unexpected end of packet");
                }
            } else {
                is.a f02 = p10.f0(1);
                if (f02 != null) {
                    int h10 = f02.h();
                    try {
                        o.a(this, f02, (int) j10);
                        int h11 = f02.h();
                        if (h11 >= h10) {
                            if (h11 == f02.j()) {
                                p10.r(f02);
                                return;
                            } else {
                                p10.o0(h11);
                                return;
                            }
                        }
                        throw new IllegalStateException("Buffer's position shouldn't be rewinded");
                    } catch (Throwable th2) {
                        int h12 = f02.h();
                        if (h12 >= h10) {
                            if (h12 == f02.j()) {
                                p10.r(f02);
                            } else {
                                p10.o0(h12);
                            }
                            throw th2;
                        }
                        throw new IllegalStateException("Buffer's position shouldn't be rewinded");
                    }
                }
                q.a(1);
                throw new KotlinNothingValueException();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            flush();
        } finally {
            u();
        }
    }

    public final void d() {
        is.a x10 = x();
        if (x10 != is.a.f60072j.a()) {
            if (x10.x() == null) {
                x10.r();
                x10.o(8);
                int j10 = x10.j();
                this.f53248e = j10;
                this.f53250g = j10;
                this.f53249f = x10.f();
                return;
            }
            throw new IllegalStateException("Check failed.");
        }
    }

    public final void flush() {
        w();
    }

    public final void k() {
        is.a aVar = this.f53246c;
        if (aVar != null) {
            this.f53248e = aVar.j();
        }
    }

    @Override // java.lang.Appendable
    @NotNull
    /* renamed from: l */
    public n append(char c10) {
        int i10 = this.f53248e;
        int i11 = 3;
        if (this.f53249f - i10 >= 3) {
            ByteBuffer byteBuffer = this.f53247d;
            if (c10 >= 0 && c10 < 128) {
                byteBuffer.put(i10, (byte) c10);
                i11 = 1;
            } else if (128 <= c10 && c10 < 2048) {
                byteBuffer.put(i10, (byte) (((c10 >> 6) & 31) | 192));
                byteBuffer.put(i10 + 1, (byte) ((c10 & '?') | 128));
                i11 = 2;
            } else if (2048 <= c10 && c10 < 0) {
                byteBuffer.put(i10, (byte) (((c10 >> '\f') & 15) | 224));
                byteBuffer.put(i10 + 1, (byte) (((c10 >> 6) & 63) | 128));
                byteBuffer.put(i10 + 2, (byte) ((c10 & '?') | 128));
            } else if (0 <= c10 && c10 < 0) {
                byteBuffer.put(i10, (byte) (((c10 >> 18) & 7) | 240));
                byteBuffer.put(i10 + 1, (byte) (((c10 >> '\f') & 63) | 128));
                byteBuffer.put(i10 + 2, (byte) (((c10 >> 6) & 63) | 128));
                byteBuffer.put(i10 + 3, (byte) ((c10 & '?') | 128));
                i11 = 4;
            } else {
                is.e.j(c10);
                throw new KotlinNothingValueException();
            }
            this.f53248e = i10 + i11;
            return this;
        }
        r(c10);
        return this;
    }

    @Override // java.lang.Appendable
    @NotNull
    /* renamed from: m */
    public n append(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            append("null", 0, 4);
        } else {
            append(charSequence, 0, charSequence.length());
        }
        return this;
    }

    @Override // java.lang.Appendable
    @NotNull
    /* renamed from: o */
    public n append(@Nullable CharSequence charSequence, int i10, int i11) {
        if (charSequence == null) {
            return append("null", i10, i11);
        }
        q.h(this, charSequence, i10, i11, Charsets.UTF_8);
        return this;
    }

    public final void p(@NotNull is.a head) {
        Intrinsics.checkNotNullParameter(head, "head");
        is.a a10 = h.a(head);
        long c10 = h.c(head) - (a10.j() - a10.h());
        if (c10 < SieveCacheKt.NodeLinkMask) {
            q(head, a10, (int) c10);
        } else {
            is.d.a(c10, "total size increase");
            throw new KotlinNothingValueException();
        }
    }

    public final void release() {
        close();
    }

    public final void t(@NotNull is.a buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        if (buffer.x() == null) {
            q(buffer, buffer, 0);
            return;
        }
        throw new IllegalStateException("It should be a single buffer chunk.");
    }

    protected abstract void u();

    protected abstract void v(@NotNull ByteBuffer byteBuffer, int i10, int i11);

    @NotNull
    public final is.a x() {
        is.a aVar = this.f53245b;
        if (aVar == null) {
            return is.a.f60072j.a();
        }
        return aVar;
    }

    public n() {
        this(is.a.f60072j.c());
    }
}
