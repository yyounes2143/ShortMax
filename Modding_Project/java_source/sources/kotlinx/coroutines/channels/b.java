package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import mt.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BufferedChannel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/ChannelSegment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3116:1\n1#2:3117\n*E\n"})
/* loaded from: classes8.dex */
public final class b<E> extends x<b<E>> {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final BufferedChannel<E> f61383e;

    /* renamed from: f  reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f61384f;

    public b(long j10, @Nullable b<E> bVar, @Nullable BufferedChannel<E> bufferedChannel, int i10) {
        super(j10, bVar, i10);
        this.f61383e = bufferedChannel;
        this.f61384f = new AtomicReferenceArray(BufferedChannelKt.f61351b * 2);
    }

    private final void E(int i10, Object obj) {
        z().set(i10 * 2, obj);
    }

    private final /* synthetic */ AtomicReferenceArray z() {
        return this.f61384f;
    }

    public final E A(int i10) {
        return (E) z().get(i10 * 2);
    }

    @Nullable
    public final Object B(int i10) {
        return z().get((i10 * 2) + 1);
    }

    public final void C(int i10, boolean z10) {
        if (z10) {
            y().r1((this.f62709c * BufferedChannelKt.f61351b) + i10);
        }
        t();
    }

    public final E D(int i10) {
        E A = A(i10);
        w(i10);
        return A;
    }

    public final void F(int i10, @Nullable Object obj) {
        z().set((i10 * 2) + 1, obj);
    }

    public final void G(int i10, E e10) {
        E(i10, e10);
    }

    @Override // mt.x
    public int r() {
        return BufferedChannelKt.f61351b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
        w(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0066, code lost:
        if (r0 == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0068, code lost:
        r4 = y().f61331b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006e, code lost:
        if (r4 == null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0070, code lost:
        mt.u.a(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0073, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
        return;
     */
    @Override // mt.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void s(int r4, @org.jetbrains.annotations.Nullable java.lang.Throwable r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.CoroutineContext r6) {
        /*
            r3 = this;
            int r5 = kotlinx.coroutines.channels.BufferedChannelKt.f61351b
            if (r4 < r5) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            if (r0 == 0) goto La
            int r4 = r4 - r5
        La:
            java.lang.Object r5 = r3.A(r4)
        Le:
            java.lang.Object r1 = r3.B(r4)
            boolean r2 = r1 instanceof gt.y1
            if (r2 != 0) goto L74
            boolean r2 = r1 instanceof kotlinx.coroutines.channels.i
            if (r2 == 0) goto L1b
            goto L74
        L1b:
            mt.a0 r2 = kotlinx.coroutines.channels.BufferedChannelKt.j()
            if (r1 == r2) goto L63
            mt.a0 r2 = kotlinx.coroutines.channels.BufferedChannelKt.i()
            if (r1 != r2) goto L28
            goto L63
        L28:
            mt.a0 r2 = kotlinx.coroutines.channels.BufferedChannelKt.p()
            if (r1 == r2) goto Le
            mt.a0 r2 = kotlinx.coroutines.channels.BufferedChannelKt.q()
            if (r1 != r2) goto L35
            goto Le
        L35:
            mt.a0 r4 = kotlinx.coroutines.channels.BufferedChannelKt.f()
            if (r1 == r4) goto L62
            mt.a0 r4 = kotlinx.coroutines.channels.BufferedChannelKt.f61353d
            if (r1 != r4) goto L40
            goto L62
        L40:
            mt.a0 r4 = kotlinx.coroutines.channels.BufferedChannelKt.z()
            if (r1 != r4) goto L47
            return
        L47:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "unexpected state: "
            r5.append(r6)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L62:
            return
        L63:
            r3.w(r4)
            if (r0 == 0) goto L73
            kotlinx.coroutines.channels.BufferedChannel r4 = r3.y()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r4 = r4.f61331b
            if (r4 == 0) goto L73
            mt.u.a(r4, r5, r6)
        L73:
            return
        L74:
            if (r0 == 0) goto L7b
            mt.a0 r2 = kotlinx.coroutines.channels.BufferedChannelKt.j()
            goto L7f
        L7b:
            mt.a0 r2 = kotlinx.coroutines.channels.BufferedChannelKt.i()
        L7f:
            boolean r1 = r3.v(r4, r1, r2)
            if (r1 == 0) goto Le
            r3.w(r4)
            r1 = r0 ^ 1
            r3.C(r4, r1)
            if (r0 == 0) goto L9a
            kotlinx.coroutines.channels.BufferedChannel r4 = r3.y()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r4 = r4.f61331b
            if (r4 == 0) goto L9a
            mt.u.a(r4, r5, r6)
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.b.s(int, java.lang.Throwable, kotlin.coroutines.CoroutineContext):void");
    }

    public final boolean v(int i10, @Nullable Object obj, @Nullable Object obj2) {
        return js.c.a(z(), (i10 * 2) + 1, obj, obj2);
    }

    public final void w(int i10) {
        E(i10, null);
    }

    @Nullable
    public final Object x(int i10, @Nullable Object obj) {
        return z().getAndSet((i10 * 2) + 1, obj);
    }

    @NotNull
    public final BufferedChannel<E> y() {
        BufferedChannel<E> bufferedChannel = this.f61383e;
        Intrinsics.checkNotNull(bufferedChannel);
        return bufferedChannel;
    }
}
