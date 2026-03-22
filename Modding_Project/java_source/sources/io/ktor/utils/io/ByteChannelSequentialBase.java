package io.ktor.utils.io;

import io.ktor.utils.io.internal.AwaitingSlot;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteChannelSequential.kt */
@Metadata
@SourceDebugExtension({"SMAP\nByteChannelSequential.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase\n+ 2 AtomicFU.kt\nkotlinx/atomicfu/AtomicInt\n+ 3 AtomicFU.kt\nkotlinx/atomicfu/AtomicRef\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 6 Packet.kt\nio/ktor/utils/io/core/PacketKt\n*L\n1#1,855:1\n207#2,3:856\n302#2,2:874\n302#2,2:876\n295#2,2:878\n87#3,3:859\n1#4:862\n69#5:863\n69#5:864\n74#5:867\n74#5:868\n74#5:869\n69#5:870\n69#5:873\n43#6:865\n43#6:866\n43#6:871\n39#6:872\n*S KotlinDebug\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase\n*L\n42#1:856,3\n838#1:874,2\n840#1:876,2\n849#1:878,2\n43#1:859,3\n194#1:863\n229#1:864\n483#1:867\n493#1:868\n504#1:869\n576#1:870\n651#1:873\n293#1:865\n315#1:866\n602#1:871\n640#1:872\n*E\n"})
/* loaded from: classes8.dex */
public abstract class ByteChannelSequentialBase implements b, ByteReadChannel, e {

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f59415h = AtomicLongFieldUpdater.newUpdater(ByteChannelSequentialBase.class, "_totalBytesRead");

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f59416i = AtomicLongFieldUpdater.newUpdater(ByteChannelSequentialBase.class, "_totalBytesWritten");

    /* renamed from: j  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f59417j = AtomicIntegerFieldUpdater.newUpdater(ByteChannelSequentialBase.class, "_availableForRead");

    /* renamed from: k  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f59418k = AtomicIntegerFieldUpdater.newUpdater(ByteChannelSequentialBase.class, "channelSize");

    /* renamed from: l  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f59419l = AtomicReferenceFieldUpdater.newUpdater(ByteChannelSequentialBase.class, Object.class, "_closed");
    @NotNull
    private volatile /* synthetic */ int _availableForRead;
    @NotNull
    private volatile /* synthetic */ Object _closed;
    @NotNull
    private volatile /* synthetic */ Object _lastReadView;
    @NotNull
    private volatile /* synthetic */ long _totalBytesRead;
    @NotNull
    private volatile /* synthetic */ long _totalBytesWritten;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f59420b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final hs.i f59421c;
    @NotNull
    private volatile /* synthetic */ int channelSize;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final hs.j f59422d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final AwaitingSlot f59423e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Object f59424f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final hs.i f59425g;
    @NotNull
    private volatile /* synthetic */ int lastReadAvailable$delegate;
    @NotNull
    private volatile /* synthetic */ Object lastReadView$delegate;

    private final void A() {
        synchronized (this.f59424f) {
            int i02 = this.f59421c.i0();
            is.a Y = this.f59421c.Y();
            Intrinsics.checkNotNull(Y);
            this.f59425g.Z(Y);
            f59417j.addAndGet(this, i02);
        }
    }

    private final boolean D() {
        Throwable th2;
        i iVar = (i) this._closed;
        if (iVar != null) {
            th2 = iVar.a();
        } else {
            th2 = null;
        }
        if (th2 != null) {
            return true;
        }
        return false;
    }

    static /* synthetic */ Object G(ByteChannelSequentialBase byteChannelSequentialBase, is.a aVar, rs.c<? super Integer> cVar) {
        Intrinsics.checkNotNull(aVar, "null cannot be cast to non-null type io.ktor.utils.io.core.Buffer");
        return byteChannelSequentialBase.F(aVar, cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object H(io.ktor.utils.io.ByteChannelSequentialBase r4, byte[] r5, int r6, int r7, rs.c<? super java.lang.Integer> r8) {
        /*
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteChannelSequentialBase$readAvailable$4
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.utils.io.ByteChannelSequentialBase$readAvailable$4 r0 = (io.ktor.utils.io.ByteChannelSequentialBase$readAvailable$4) r0
            int r1 = r0.f59456n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59456n = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteChannelSequentialBase$readAvailable$4 r0 = new io.ktor.utils.io.ByteChannelSequentialBase$readAvailable$4
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f59454l
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59456n
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            int r7 = r0.f59453k
            int r6 = r0.f59452j
            java.lang.Object r4 = r0.f59451i
            r5 = r4
            byte[] r5 = (byte[]) r5
            java.lang.Object r4 = r0.f59450h
            io.ktor.utils.io.ByteChannelSequentialBase r4 = (io.ktor.utils.io.ByteChannelSequentialBase) r4
            kotlin.f.b(r8)
            goto L78
        L36:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3e:
            kotlin.f.b(r8)
            java.lang.Throwable r8 = r4.h()
            if (r8 != 0) goto L9c
            boolean r8 = r4.C()
            if (r8 == 0) goto L59
            int r8 = r4.c()
            if (r8 != 0) goto L59
            r4 = -1
            java.lang.Integer r4 = kotlin.coroutines.jvm.internal.a.d(r4)
            return r4
        L59:
            if (r7 != 0) goto L61
            r4 = 0
            java.lang.Integer r4 = kotlin.coroutines.jvm.internal.a.d(r4)
            return r4
        L61:
            int r8 = r4.c()
            if (r8 != 0) goto L78
            r0.f59450h = r4
            r0.f59451i = r5
            r0.f59452j = r6
            r0.f59453k = r7
            r0.f59456n = r3
            java.lang.Object r8 = r4.v(r3, r0)
            if (r8 != r1) goto L78
            return r1
        L78:
            hs.j r8 = r4.f59422d
            boolean r8 = r8.k()
            if (r8 != 0) goto L83
            r4.E()
        L83:
            long r7 = (long) r7
            hs.j r0 = r4.f59422d
            long r0 = r0.a0()
            long r7 = java.lang.Math.min(r7, r0)
            int r7 = (int) r7
            hs.j r8 = r4.f59422d
            hs.m.b(r8, r5, r6, r7)
            r4.q(r7)
            java.lang.Integer r4 = kotlin.coroutines.jvm.internal.a.d(r7)
            return r4
        L9c:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannelSequentialBase.H(io.ktor.utils.io.ByteChannelSequentialBase, byte[], int, int, rs.c):java.lang.Object");
    }

    static /* synthetic */ Object I(ByteChannelSequentialBase byteChannelSequentialBase, long j10, rs.c<? super hs.j> cVar) {
        byteChannelSequentialBase.x();
        hs.i iVar = new hs.i(null, 1, null);
        long min = Math.min(j10, byteChannelSequentialBase.f59422d.a0());
        iVar.b0(byteChannelSequentialBase.f59422d, min);
        byteChannelSequentialBase.q((int) min);
        if (j10 - iVar.i0() != 0 && !byteChannelSequentialBase.l()) {
            return byteChannelSequentialBase.J(iVar, j10, cVar);
        }
        byteChannelSequentialBase.y(iVar);
        return iVar.h0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object J(hs.i r11, long r12, rs.c<? super hs.j> r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof io.ktor.utils.io.ByteChannelSequentialBase$readRemainingSuspend$1
            if (r0 == 0) goto L13
            r0 = r14
            io.ktor.utils.io.ByteChannelSequentialBase$readRemainingSuspend$1 r0 = (io.ktor.utils.io.ByteChannelSequentialBase$readRemainingSuspend$1) r0
            int r1 = r0.f59462m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59462m = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteChannelSequentialBase$readRemainingSuspend$1 r0 = new io.ktor.utils.io.ByteChannelSequentialBase$readRemainingSuspend$1
            r0.<init>(r10, r14)
        L18:
            java.lang.Object r14 = r0.f59460k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59462m
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            long r11 = r0.f59459j
            java.lang.Object r13 = r0.f59458i
            hs.i r13 = (hs.i) r13
            java.lang.Object r2 = r0.f59457h
            io.ktor.utils.io.ByteChannelSequentialBase r2 = (io.ktor.utils.io.ByteChannelSequentialBase) r2
            kotlin.f.b(r14)
            r8 = r11
            r11 = r13
            r12 = r8
            goto L42
        L36:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3e:
            kotlin.f.b(r14)
            r2 = r10
        L42:
            int r14 = r11.i0()
            long r4 = (long) r14
            int r14 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
            if (r14 >= 0) goto L85
            int r14 = r11.i0()
            long r4 = (long) r14
            long r4 = r12 - r4
            hs.j r14 = r2.f59422d
            long r6 = r14.a0()
            long r4 = java.lang.Math.min(r4, r6)
            hs.j r14 = r2.f59422d
            r11.b0(r14, r4)
            int r14 = (int) r4
            r2.q(r14)
            r2.y(r11)
            boolean r14 = r2.l()
            if (r14 != 0) goto L85
            int r14 = r11.i0()
            int r4 = (int) r12
            if (r14 != r4) goto L76
            goto L85
        L76:
            r0.f59457h = r2
            r0.f59458i = r11
            r0.f59459j = r12
            r0.f59462m = r3
            java.lang.Object r14 = r2.v(r3, r0)
            if (r14 != r1) goto L42
            return r1
        L85:
            r2.y(r11)
            hs.j r11 = r11.h0()
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannelSequentialBase.J(hs.i, long, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object L(io.ktor.utils.io.ByteChannelSequentialBase r4, hs.a r5, rs.c<? super kotlin.Unit> r6) {
        /*
            boolean r0 = r6 instanceof io.ktor.utils.io.ByteChannelSequentialBase$writeFully$1
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.utils.io.ByteChannelSequentialBase$writeFully$1 r0 = (io.ktor.utils.io.ByteChannelSequentialBase$writeFully$1) r0
            int r1 = r0.f59467l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59467l = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteChannelSequentialBase$writeFully$1 r0 = new io.ktor.utils.io.ByteChannelSequentialBase$writeFully$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f59465j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59467l
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r4 = r0.f59464i
            r5 = r4
            hs.a r5 = (hs.a) r5
            java.lang.Object r4 = r0.f59463h
            io.ktor.utils.io.ByteChannelSequentialBase r4 = (io.ktor.utils.io.ByteChannelSequentialBase) r4
            kotlin.f.b(r6)
            goto L4a
        L32:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3a:
            kotlin.f.b(r6)
            r0.f59463h = r4
            r0.f59464i = r5
            r0.f59467l = r3
            java.lang.Object r6 = r4.t(r3, r0)
            if (r6 != r1) goto L4a
            return r1
        L4a:
            int r6 = r5.j()
            int r0 = r5.h()
            int r6 = r6 - r0
            hs.i r0 = r4.f59421c
            r1 = 2
            r2 = 0
            r3 = 0
            hs.o.c(r0, r5, r3, r1, r2)
            r4.r(r6)
            kotlin.Unit r4 = kotlin.Unit.f60915a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannelSequentialBase.L(io.ktor.utils.io.ByteChannelSequentialBase, hs.a, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:19:0x005c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object M(io.ktor.utils.io.ByteChannelSequentialBase r5, byte[] r6, int r7, int r8, rs.c<? super kotlin.Unit> r9) {
        /*
            boolean r0 = r9 instanceof io.ktor.utils.io.ByteChannelSequentialBase$writeFully$2
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.utils.io.ByteChannelSequentialBase$writeFully$2 r0 = (io.ktor.utils.io.ByteChannelSequentialBase$writeFully$2) r0
            int r1 = r0.f59474n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59474n = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteChannelSequentialBase$writeFully$2 r0 = new io.ktor.utils.io.ByteChannelSequentialBase$writeFully$2
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.f59472l
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59474n
            r3 = 1
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            int r5 = r0.f59471k
            int r6 = r0.f59470j
            java.lang.Object r7 = r0.f59469i
            byte[] r7 = (byte[]) r7
            java.lang.Object r8 = r0.f59468h
            io.ktor.utils.io.ByteChannelSequentialBase r8 = (io.ktor.utils.io.ByteChannelSequentialBase) r8
            kotlin.f.b(r9)
            r4 = r8
            r8 = r6
            r6 = r4
            goto L5c
        L38:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L40:
            kotlin.f.b(r9)
            int r8 = r8 + r7
            r4 = r6
            r6 = r5
            r5 = r8
            r8 = r7
            r7 = r4
        L49:
            if (r8 >= r5) goto L70
            r0.f59468h = r6
            r0.f59469i = r7
            r0.f59470j = r8
            r0.f59471k = r5
            r0.f59474n = r3
            java.lang.Object r9 = r6.t(r3, r0)
            if (r9 != r1) goto L5c
            return r1
        L5c:
            int r9 = r6.B()
            int r2 = r5 - r8
            int r9 = java.lang.Math.min(r9, r2)
            hs.i r2 = r6.f59421c
            hs.o.b(r2, r7, r8, r9)
            int r8 = r8 + r9
            r6.r(r9)
            goto L49
        L70:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannelSequentialBase.M(io.ktor.utils.io.ByteChannelSequentialBase, byte[], int, int, rs.c):java.lang.Object");
    }

    private final void o(int i10) {
        if (i10 >= 0) {
            int i11 = -i10;
            f59418k.getAndAdd(this, i11);
            f59415h.addAndGet(this, i10);
            f59417j.getAndAdd(this, i11);
            if (this.channelSize >= 0) {
                if (c() >= 0) {
                    return;
                }
                throw new IllegalStateException(("Readable bytes count is negative: " + c() + ", " + i10 + " in " + this).toString());
            }
            throw new IllegalStateException(("Readable bytes count is negative: " + c() + ", " + i10 + " in " + this).toString());
        }
        throw new IllegalArgumentException(("Can't read negative amount of bytes: " + i10).toString());
    }

    private final void p(int i10) {
        if (i10 >= 0) {
            f59418k.getAndAdd(this, i10);
            f59416i.addAndGet(this, i10);
            if (this.channelSize >= 0) {
                return;
            }
            throw new IllegalStateException(("Readable bytes count is negative: " + this.channelSize + ", " + i10 + " in " + this).toString());
        }
        throw new IllegalArgumentException(("Can't write negative amount of bytes: " + i10).toString());
    }

    private final void w() {
        if (C()) {
            Throwable h10 = h();
            if (h10 == null) {
                throw new ClosedWriteChannelException("Channel " + this + " is already closed");
            }
        }
    }

    private final void x() {
        Throwable h10 = h();
        if (h10 == null) {
            return;
        }
        throw h10;
    }

    private final void y(hs.i iVar) {
        Throwable h10 = h();
        if (h10 == null) {
            return;
        }
        iVar.release();
        throw h10;
    }

    private final boolean z() {
        if (this.f59421c.j0()) {
            this.f59423e.c();
            return false;
        }
        A();
        this.f59423e.c();
        return true;
    }

    public int B() {
        return Math.max(0, 4088 - this.channelSize);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean C() {
        if (this._closed != null) {
            return true;
        }
        return false;
    }

    protected final void E() {
        synchronized (this.f59424f) {
            is.f.e(this.f59422d, this.f59425g);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0081  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object F(@org.jetbrains.annotations.NotNull hs.a r6, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Integer> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteChannelSequentialBase$readAvailable$2
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.ByteChannelSequentialBase$readAvailable$2 r0 = (io.ktor.utils.io.ByteChannelSequentialBase$readAvailable$2) r0
            int r1 = r0.f59449l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59449l = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteChannelSequentialBase$readAvailable$2 r0 = new io.ktor.utils.io.ByteChannelSequentialBase$readAvailable$2
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f59447j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59449l
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.f59446i
            hs.a r6 = (hs.a) r6
            java.lang.Object r0 = r0.f59445h
            io.ktor.utils.io.ByteChannelSequentialBase r0 = (io.ktor.utils.io.ByteChannelSequentialBase) r0
            kotlin.f.b(r7)
            goto L79
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.f.b(r7)
            java.lang.Throwable r7 = r5.h()
            if (r7 != 0) goto La6
            boolean r7 = r5.C()
            if (r7 == 0) goto L54
            int r7 = r5.c()
            if (r7 != 0) goto L54
            r6 = -1
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.a.d(r6)
            return r6
        L54:
            int r7 = r6.f()
            int r2 = r6.j()
            int r7 = r7 - r2
            if (r7 != 0) goto L65
            r6 = 0
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.a.d(r6)
            return r6
        L65:
            int r7 = r5.c()
            if (r7 != 0) goto L78
            r0.f59445h = r5
            r0.f59446i = r6
            r0.f59449l = r3
            java.lang.Object r7 = r5.v(r3, r0)
            if (r7 != r1) goto L78
            return r1
        L78:
            r0 = r5
        L79:
            hs.j r7 = r0.f59422d
            boolean r7 = r7.k()
            if (r7 != 0) goto L84
            r0.E()
        L84:
            int r7 = r6.f()
            int r1 = r6.j()
            int r7 = r7 - r1
            long r1 = (long) r7
            hs.j r7 = r0.f59422d
            long r3 = r7.a0()
            long r1 = java.lang.Math.min(r1, r3)
            int r7 = (int) r1
            hs.j r1 = r0.f59422d
            hs.m.a(r1, r6, r7)
            r0.q(r7)
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.a.d(r7)
            return r6
        La6:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannelSequentialBase.F(hs.a, rs.c):java.lang.Object");
    }

    public final long K(@NotNull ByteChannelSequentialBase dst, long j10) {
        Intrinsics.checkNotNullParameter(dst, "dst");
        long a02 = this.f59422d.a0();
        if (a02 <= j10) {
            dst.f59421c.a0(this.f59422d);
            int i10 = (int) a02;
            dst.r(i10);
            q(i10);
            return a02;
        }
        return 0L;
    }

    @Override // io.ktor.utils.io.e
    public boolean a(@Nullable Throwable th2) {
        i iVar;
        if (th2 == null) {
            iVar = j.a();
        } else {
            iVar = new i(th2);
        }
        if (!androidx.concurrent.futures.a.a(f59419l, this, null, iVar)) {
            return false;
        }
        if (th2 != null) {
            this.f59422d.release();
            this.f59421c.release();
            this.f59425g.release();
        } else {
            flush();
            this.f59421c.release();
        }
        this.f59423e.b(th2);
        return true;
    }

    @Override // io.ktor.utils.io.e
    @Nullable
    public Object b(@NotNull byte[] bArr, int i10, int i11, @NotNull rs.c<? super Unit> cVar) {
        return M(this, bArr, i10, i11, cVar);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public int c() {
        return this._availableForRead;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public boolean cancel(@Nullable Throwable th2) {
        if (h() == null && !C()) {
            if (th2 == null) {
                th2 = new CancellationException("Channel cancelled");
            }
            return a(th2);
        }
        return false;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Nullable
    public Object e(@NotNull byte[] bArr, int i10, int i11, @NotNull rs.c<? super Integer> cVar) {
        return H(this, bArr, i10, i11, cVar);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Nullable
    public Object f(@NotNull is.a aVar, @NotNull rs.c<? super Integer> cVar) {
        return G(this, aVar, cVar);
    }

    @Override // io.ktor.utils.io.e
    public void flush() {
        z();
    }

    @Override // io.ktor.utils.io.e
    public boolean g() {
        return this.f59420b;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Nullable
    public final Throwable h() {
        i iVar = (i) this._closed;
        if (iVar != null) {
            return iVar.a();
        }
        return null;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Nullable
    public Object k(long j10, @NotNull rs.c<? super hs.j> cVar) {
        return I(this, j10, cVar);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public boolean l() {
        if (!D() && (!C() || this.channelSize != 0)) {
            return false;
        }
        return true;
    }

    @Override // io.ktor.utils.io.e
    @Nullable
    public Object m(@NotNull hs.a aVar, @NotNull rs.c<? super Unit> cVar) {
        return L(this, aVar, cVar);
    }

    protected final void q(int i10) {
        o(i10);
        this.f59423e.c();
    }

    protected final void r(int i10) {
        p(i10);
        if (C()) {
            this.f59421c.release();
            w();
        }
        if (g() || B() == 0) {
            flush();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005a A[SYNTHETIC] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(final int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1 r0 = (io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1) r0
            int r1 = r0.f59430l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59430l = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1 r0 = new io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f59428j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59430l
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            int r6 = r0.f59427i
            java.lang.Object r2 = r0.f59426h
            io.ktor.utils.io.ByteChannelSequentialBase r2 = (io.ktor.utils.io.ByteChannelSequentialBase) r2
            kotlin.f.b(r7)
            goto L3b
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r7)
            r2 = r5
        L3b:
            int r7 = r2.c()
            if (r7 >= r6) goto L5b
            boolean r7 = r2.l()
            if (r7 != 0) goto L5b
            io.ktor.utils.io.internal.AwaitingSlot r7 = r2.f59423e
            io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2 r4 = new io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2
            r4.<init>()
            r0.f59426h = r2
            r0.f59427i = r6
            r0.f59430l = r3
            java.lang.Object r7 = r7.d(r4, r0)
            if (r7 != r1) goto L3b
            return r1
        L5b:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannelSequentialBase.s(int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003b A[SYNTHETIC] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object t(final int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1 r0 = (io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1) r0
            int r1 = r0.f59437l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59437l = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1 r0 = new io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f59435j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59437l
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            int r6 = r0.f59434i
            java.lang.Object r2 = r0.f59433h
            io.ktor.utils.io.ByteChannelSequentialBase r2 = (io.ktor.utils.io.ByteChannelSequentialBase) r2
            kotlin.f.b(r7)
            goto L3b
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r7)
            r2 = r5
        L3b:
            int r7 = r2.B()
            if (r7 >= r6) goto L61
            boolean r7 = r2.C()
            if (r7 != 0) goto L61
            boolean r7 = r2.z()
            if (r7 != 0) goto L3b
            io.ktor.utils.io.internal.AwaitingSlot r7 = r2.f59423e
            io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$2 r4 = new io.ktor.utils.io.ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$2
            r4.<init>()
            r0.f59433h = r2
            r0.f59434i = r6
            r0.f59437l = r3
            java.lang.Object r7 = r7.d(r4, r0)
            if (r7 != r1) goto L3b
            return r1
        L61:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannelSequentialBase.t(int, rs.c):java.lang.Object");
    }

    @Nullable
    public final Object u(@NotNull rs.c<? super Boolean> cVar) {
        if (!this.f59422d.P()) {
            return kotlin.coroutines.jvm.internal.a.a(true);
        }
        return v(1, cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0066  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object v(int r5, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.ktor.utils.io.ByteChannelSequentialBase$awaitSuspend$1
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.utils.io.ByteChannelSequentialBase$awaitSuspend$1 r0 = (io.ktor.utils.io.ByteChannelSequentialBase$awaitSuspend$1) r0
            int r1 = r0.f59444l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59444l = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteChannelSequentialBase$awaitSuspend$1 r0 = new io.ktor.utils.io.ByteChannelSequentialBase$awaitSuspend$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f59442j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59444l
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            int r5 = r0.f59441i
            java.lang.Object r0 = r0.f59440h
            io.ktor.utils.io.ByteChannelSequentialBase r0 = (io.ktor.utils.io.ByteChannelSequentialBase) r0
            kotlin.f.b(r6)
            goto L4a
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r6)
            if (r5 < 0) goto L67
            r0.f59440h = r4
            r0.f59441i = r5
            r0.f59444l = r3
            java.lang.Object r6 = r4.s(r5, r0)
            if (r6 != r1) goto L49
            return r1
        L49:
            r0 = r4
        L4a:
            r0.E()
            java.lang.Throwable r6 = r0.h()
            if (r6 != 0) goto L66
            boolean r6 = r0.l()
            if (r6 != 0) goto L60
            int r6 = r0.c()
            if (r6 < r5) goto L60
            goto L61
        L60:
            r3 = 0
        L61:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r3)
            return r5
        L66:
            throw r6
        L67:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Failed requirement."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannelSequentialBase.v(int, rs.c):java.lang.Object");
    }
}
