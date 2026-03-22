package hs;

import com.inmobi.commons.core.configs.AdConfig;
import io.ktor.utils.io.core.internal.MalformedUTF8InputException;
import is.a;
import java.io.Closeable;
import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Input.kt */
@ms.c
@Metadata
@SourceDebugExtension({"SMAP\nInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Input.kt\nio/ktor/utils/io/core/Input\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 5 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 6 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 7 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 8 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 9 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n*L\n1#1,932:1\n77#1:933\n77#1:935\n77#1:938\n77#1:940\n77#1:941\n77#1:943\n77#1:950\n77#1:1124\n1#2:934\n15#3:936\n26#3:947\n26#3:949\n26#3:968\n26#3:1017\n69#4:937\n69#4:939\n69#4:942\n69#4:944\n74#4:945\n74#4:951\n69#4:952\n69#4:1000\n59#4:1093\n69#4:1109\n69#4:1110\n69#4:1111\n69#4:1114\n69#4:1115\n59#4:1116\n69#4:1117\n69#4:1118\n59#4:1119\n69#4:1121\n74#4:1122\n69#4:1126\n69#4:1127\n69#4:1128\n84#5:946\n84#5:948\n84#5:967\n84#5:1016\n823#6,6:953\n829#6,13:979\n852#6,8:992\n862#6,3:1001\n866#6,11:1082\n877#6,15:1094\n9#7:959\n10#7,2:965\n12#7,7:969\n21#7:978\n123#7,5:1004\n128#7,2:1014\n130#7,61:1018\n193#7:1081\n372#8,5:960\n377#8,2:976\n372#8,5:1009\n377#8,2:1079\n355#8:1120\n355#8:1123\n355#8:1125\n261#9,2:1112\n*S KotlinDebug\n*F\n+ 1 Input.kt\nio/ktor/utils/io/core/Input\n*L\n25#1:933\n81#1:935\n150#1:938\n177#1:940\n187#1:941\n253#1:943\n330#1:950\n732#1:1124\n119#1:936\n286#1:947\n295#1:949\n439#1:968\n480#1:1017\n122#1:937\n159#1:939\n240#1:942\n262#1:944\n264#1:945\n342#1:951\n342#1:952\n479#1:1000\n479#1:1093\n505#1:1109\n524#1:1110\n537#1:1111\n542#1:1114\n567#1:1115\n568#1:1116\n582#1:1117\n596#1:1118\n597#1:1119\n648#1:1121\n664#1:1122\n757#1:1126\n768#1:1127\n776#1:1128\n286#1:946\n295#1:948\n439#1:967\n480#1:1016\n438#1:953,6\n438#1:979,13\n479#1:992,8\n479#1:1001,3\n479#1:1082,11\n479#1:1094,15\n439#1:959\n439#1:965,2\n439#1:969,7\n439#1:978\n480#1:1004,5\n480#1:1014,2\n480#1:1018,61\n480#1:1081\n439#1:960,5\n439#1:976,2\n480#1:1009,5\n480#1:1079,2\n646#1:1120\n669#1:1123\n748#1:1125\n539#1:1112,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class l implements Closeable {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f53236h = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final io.ktor.utils.io.pool.b<is.a> f53237a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private is.a f53238b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer f53239c;

    /* renamed from: d  reason: collision with root package name */
    private int f53240d;

    /* renamed from: e  reason: collision with root package name */
    private int f53241e;

    /* renamed from: f  reason: collision with root package name */
    private long f53242f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f53243g;

    /* compiled from: Input.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public l() {
        this(null, 0L, null, 7, null);
    }

    private final void F(is.a aVar, int i10, int i11) {
        is.a p02 = this.f53237a.p0();
        is.a p03 = this.f53237a.p0();
        p02.o(8);
        p03.o(8);
        p02.C(p03);
        p03.C(aVar.w());
        b.a(p02, aVar, i10 - i11);
        b.a(p03, aVar, i11);
        t0(p02);
        s0(h.c(p03));
    }

    private final void a(is.a aVar) {
        if (aVar.j() - aVar.h() == 0) {
            n0(aVar);
        }
    }

    private final void c(is.a aVar) {
        is.a a10 = h.a(this.f53238b);
        if (a10 == is.a.f60072j.a()) {
            t0(aVar);
            long j10 = 0;
            if (this.f53242f == 0) {
                is.a x10 = aVar.x();
                if (x10 != null) {
                    j10 = h.c(x10);
                }
                s0(j10);
                return;
            }
            throw new IllegalStateException("It should be no tail remaining bytes if current tail is EmptyBuffer");
        }
        a10.C(aVar);
        s0(this.f53242f + h.c(aVar));
    }

    private final Void c0(int i10, int i11) {
        throw new IllegalArgumentException("min should be less or equal to max but min = " + i10 + ", max = " + i11);
    }

    private final Void d(int i10) {
        throw new EOFException("at least " + i10 + " characters required but no bytes available");
    }

    private final Void d0(int i10) {
        throw new IllegalStateException("minSize of " + i10 + " is too big (should be less than 8)");
    }

    private final Void e0(int i10, int i11) {
        throw new MalformedUTF8InputException("Premature end of stream: expected at least " + i10 + " chars but had only " + i11);
    }

    private final is.a h0(int i10, is.a aVar) {
        while (true) {
            int T = T() - Y();
            if (T >= i10) {
                return aVar;
            }
            is.a x10 = aVar.x();
            if (x10 == null && (x10 = q()) == null) {
                return null;
            }
            if (T == 0) {
                if (aVar != is.a.f60072j.a()) {
                    n0(aVar);
                }
                aVar = x10;
            } else {
                int a10 = b.a(aVar, x10, i10 - T);
                this.f53241e = aVar.j();
                s0(this.f53242f - a10);
                if (x10.j() > x10.h()) {
                    x10.p(a10);
                } else {
                    aVar.C(null);
                    aVar.C(x10.w());
                    x10.A(this.f53237a);
                }
                if (aVar.j() - aVar.h() >= i10) {
                    return aVar;
                }
                if (i10 > 8) {
                    d0(i10);
                    throw new KotlinNothingValueException();
                }
            }
        }
    }

    private final int i0(Appendable appendable, int i10, int i11) {
        int i12;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13 = false;
        if (i11 == 0 && i10 == 0) {
            return 0;
        }
        if (P()) {
            if (i10 == 0) {
                return 0;
            }
            d(i10);
            throw new KotlinNothingValueException();
        } else if (i11 >= i10) {
            is.a b10 = is.f.b(this, 1);
            if (b10 == null) {
                i12 = 0;
            } else {
                i12 = 0;
                boolean z14 = false;
                while (true) {
                    try {
                        ByteBuffer g10 = b10.g();
                        int h10 = b10.h();
                        int j10 = b10.j();
                        for (int i13 = h10; i13 < j10; i13++) {
                            byte b11 = g10.get(i13);
                            int i14 = b11 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                            if ((b11 & ByteCompanionObject.MIN_VALUE) != 128) {
                                char c10 = (char) i14;
                                if (i12 == i11) {
                                    z12 = false;
                                } else {
                                    appendable.append(c10);
                                    i12++;
                                    z12 = true;
                                }
                                if (z12) {
                                }
                            }
                            b10.c(i13 - h10);
                            z10 = false;
                            break;
                        }
                        b10.c(j10 - h10);
                        z10 = true;
                        if (z10) {
                            z11 = true;
                        } else if (i12 == i11) {
                            z11 = false;
                        } else {
                            z11 = false;
                            z14 = true;
                        }
                        if (!z11) {
                            is.f.a(this, b10);
                            break;
                        }
                        try {
                            b10 = is.f.c(this, b10);
                            if (b10 == null) {
                                break;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (z13) {
                                is.f.a(this, b10);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        z13 = true;
                    }
                }
                z13 = z14;
            }
            if (z13) {
                return i12 + m0(appendable, i10 - i12, i11 - i12);
            }
            if (i12 >= i10) {
                return i12;
            }
            e0(i10, i12);
            throw new KotlinNothingValueException();
        } else {
            c0(i10, i11);
            throw new KotlinNothingValueException();
        }
    }

    public static /* synthetic */ String l0(l lVar, int i10, int i11, int i12, Object obj) {
        if (obj == null) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = Integer.MAX_VALUE;
            }
            return lVar.j0(i10, i11);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readText");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005a, code lost:
        is.e.i(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0062, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00e4, code lost:
        r4 = 1;
        is.e.j(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ed, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m0(java.lang.Appendable r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: hs.l.m0(java.lang.Appendable, int, int):int");
    }

    private final int o(int i10, int i11) {
        while (i10 != 0) {
            is.a f02 = f0(1);
            if (f02 == null) {
                return i11;
            }
            int min = Math.min(f02.j() - f02.h(), i10);
            f02.c(min);
            this.f53240d += min;
            a(f02);
            i10 -= min;
            i11 += min;
        }
        return i11;
    }

    private final is.a q() {
        if (this.f53243g) {
            return null;
        }
        is.a u10 = u();
        if (u10 == null) {
            this.f53243g = true;
            return null;
        }
        c(u10);
        return u10;
    }

    private final is.a s(is.a aVar, is.a aVar2) {
        while (aVar != aVar2) {
            is.a w10 = aVar.w();
            aVar.A(this.f53237a);
            if (w10 == null) {
                t0(aVar2);
                s0(0L);
                aVar = aVar2;
            } else if (w10.j() > w10.h()) {
                t0(w10);
                s0(this.f53242f - (w10.j() - w10.h()));
                return w10;
            } else {
                aVar = w10;
            }
        }
        return q();
    }

    private final void t0(is.a aVar) {
        this.f53238b = aVar;
        this.f53239c = aVar.g();
        this.f53240d = aVar.h();
        this.f53241e = aVar.j();
    }

    private final void x(is.a aVar) {
        if (this.f53243g && aVar.x() == null) {
            this.f53240d = aVar.h();
            this.f53241e = aVar.j();
            s0(0L);
            return;
        }
        int j10 = aVar.j() - aVar.h();
        int min = Math.min(j10, 8 - (aVar.e() - aVar.f()));
        if (j10 > min) {
            F(aVar, j10, min);
        } else {
            is.a p02 = this.f53237a.p0();
            p02.o(8);
            p02.C(aVar.w());
            b.a(p02, aVar, j10);
            t0(p02);
        }
        aVar.A(this.f53237a);
    }

    public final boolean P() {
        if (T() - Y() == 0 && this.f53242f == 0 && (this.f53243g || q() == null)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final is.a R() {
        is.a aVar = this.f53238b;
        aVar.d(this.f53240d);
        return aVar;
    }

    public final int T() {
        return this.f53241e;
    }

    @NotNull
    public final ByteBuffer W() {
        return this.f53239c;
    }

    public final int Y() {
        return this.f53240d;
    }

    @NotNull
    public final io.ktor.utils.io.pool.b<is.a> Z() {
        return this.f53237a;
    }

    public final long a0() {
        return (T() - Y()) + this.f53242f;
    }

    public final void b(@NotNull is.a chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        a.d dVar = is.a.f60072j;
        if (chain == dVar.a()) {
            return;
        }
        long c10 = h.c(chain);
        if (this.f53238b == dVar.a()) {
            t0(chain);
            s0(c10 - (T() - Y()));
            return;
        }
        h.a(this.f53238b).C(chain);
        s0(this.f53242f + c10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b0() {
        if (!this.f53243g) {
            this.f53243g = true;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        release();
        if (!this.f53243g) {
            this.f53243g = true;
        }
        l();
    }

    @Nullable
    public final is.a f0(int i10) {
        is.a R = R();
        if (this.f53241e - this.f53240d >= i10) {
            return R;
        }
        return h0(i10, R);
    }

    @Nullable
    public final is.a g0(int i10) {
        return h0(i10, R());
    }

    @NotNull
    public final String j0(int i10, int i11) {
        if (i10 == 0 && (i11 == 0 || P())) {
            return "";
        }
        long a02 = a0();
        if (a02 > 0 && i11 >= a02) {
            return q.g(this, (int) a02, null, 2, null);
        }
        StringBuilder sb2 = new StringBuilder(kotlin.ranges.e.j(kotlin.ranges.e.e(i10, 16), i11));
        i0(sb2, i10, i11);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder(capacity).…builderAction).toString()");
        return sb3;
    }

    public final boolean k() {
        if (this.f53240d == this.f53241e && this.f53242f == 0) {
            return false;
        }
        return true;
    }

    protected abstract void l();

    public final int m(int i10) {
        if (i10 >= 0) {
            return o(i10, 0);
        }
        throw new IllegalArgumentException(("Negative discard is not allowed: " + i10).toString());
    }

    @NotNull
    public final is.a n0(@NotNull is.a head) {
        Intrinsics.checkNotNullParameter(head, "head");
        is.a w10 = head.w();
        if (w10 == null) {
            w10 = is.a.f60072j.a();
        }
        t0(w10);
        s0(this.f53242f - (w10.j() - w10.h()));
        head.A(this.f53237a);
        return w10;
    }

    public final void o0(int i10) {
        this.f53240d = i10;
    }

    public final void p(int i10) {
        if (m(i10) == i10) {
            return;
        }
        throw new EOFException("Unable to discard " + i10 + " bytes due to end of packet");
    }

    @Nullable
    public final is.a r(@NotNull is.a current) {
        Intrinsics.checkNotNullParameter(current, "current");
        return s(current, is.a.f60072j.a());
    }

    public final void release() {
        is.a R = R();
        is.a a10 = is.a.f60072j.a();
        if (R != a10) {
            t0(a10);
            s0(0L);
            h.b(R, this.f53237a);
        }
    }

    public final void s0(long j10) {
        if (j10 >= 0) {
            this.f53242f = j10;
            return;
        }
        throw new IllegalArgumentException(("tailRemaining shouldn't be negative: " + j10).toString());
    }

    @Nullable
    public final is.a t(@NotNull is.a current) {
        Intrinsics.checkNotNullParameter(current, "current");
        return r(current);
    }

    @Nullable
    protected is.a u() {
        is.a p02 = this.f53237a.p0();
        try {
            p02.o(8);
            int v10 = v(p02.g(), p02.j(), p02.f() - p02.j());
            if (v10 == 0) {
                this.f53243g = true;
                if (p02.j() <= p02.h()) {
                    p02.A(this.f53237a);
                    return null;
                }
            }
            p02.a(v10);
            return p02;
        } catch (Throwable th2) {
            p02.A(this.f53237a);
            throw th2;
        }
    }

    protected abstract int v(@NotNull ByteBuffer byteBuffer, int i10, int i11);

    public final void w(@NotNull is.a current) {
        Intrinsics.checkNotNullParameter(current, "current");
        is.a x10 = current.x();
        if (x10 == null) {
            x(current);
            return;
        }
        int j10 = current.j() - current.h();
        int min = Math.min(j10, 8 - (current.e() - current.f()));
        if (x10.i() < min) {
            x(current);
            return;
        }
        d.f(x10, min);
        if (j10 > min) {
            current.l();
            this.f53241e = current.j();
            s0(this.f53242f + min);
            return;
        }
        t0(x10);
        s0(this.f53242f - ((x10.j() - x10.h()) - min));
        current.w();
        current.A(this.f53237a);
    }

    @Nullable
    public final is.a w0() {
        is.a R = R();
        is.a x10 = R.x();
        is.a a10 = is.a.f60072j.a();
        if (R == a10) {
            return null;
        }
        if (x10 == null) {
            t0(a10);
            s0(0L);
        } else {
            t0(x10);
            s0(this.f53242f - (x10.j() - x10.h()));
        }
        R.C(null);
        return R;
    }

    @Nullable
    public final is.a y0() {
        is.a R = R();
        is.a a10 = is.a.f60072j.a();
        if (R == a10) {
            return null;
        }
        t0(a10);
        s0(0L);
        return R;
    }

    public final boolean z0(@NotNull is.a chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        is.a a10 = h.a(R());
        int j10 = chain.j() - chain.h();
        if (j10 != 0 && a10.f() - a10.j() >= j10) {
            b.a(a10, chain, j10);
            if (R() == a10) {
                this.f53241e = a10.j();
                return true;
            }
            s0(this.f53242f + j10);
            return true;
        }
        return false;
    }

    public l(@NotNull is.a head, long j10, @NotNull io.ktor.utils.io.pool.b<is.a> pool) {
        Intrinsics.checkNotNullParameter(head, "head");
        Intrinsics.checkNotNullParameter(pool, "pool");
        this.f53237a = pool;
        this.f53238b = head;
        this.f53239c = head.g();
        this.f53240d = head.h();
        int j11 = head.j();
        this.f53241e = j11;
        this.f53242f = j10 - (j11 - this.f53240d);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ l(is.a r1, long r2, io.ktor.utils.io.pool.b<is.a> r4, int r5, kotlin.jvm.internal.DefaultConstructorMarker r6) {
        /*
            r0 = this;
            r6 = r5 & 1
            if (r6 == 0) goto La
            is.a$d r1 = is.a.f60072j
            is.a r1 = r1.a()
        La:
            r6 = r5 & 2
            if (r6 == 0) goto L12
            long r2 = hs.h.c(r1)
        L12:
            r5 = r5 & 4
            if (r5 == 0) goto L1c
            is.a$d r4 = is.a.f60072j
            io.ktor.utils.io.pool.b r4 = r4.c()
        L1c:
            r0.<init>(r1, r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: hs.l.<init>(is.a, long, io.ktor.utils.io.pool.b, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
