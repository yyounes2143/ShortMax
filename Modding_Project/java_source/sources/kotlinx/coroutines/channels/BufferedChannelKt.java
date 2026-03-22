package kotlinx.coroutines.channels;

import androidx.collection.SieveCacheKt;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.reflect.KFunction;
import mt.a0;
import mt.d0;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferedChannel.kt */
@Metadata
/* loaded from: classes8.dex */
public final class BufferedChannelKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final b<Object> f61350a = new b<>(-1, null, null, 0);

    /* renamed from: b  reason: collision with root package name */
    public static final int f61351b;

    /* renamed from: c  reason: collision with root package name */
    private static final int f61352c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a0 f61353d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final a0 f61354e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final a0 f61355f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final a0 f61356g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final a0 f61357h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final a0 f61358i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final a0 f61359j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final a0 f61360k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final a0 f61361l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final a0 f61362m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private static final a0 f61363n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private static final a0 f61364o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final a0 f61365p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private static final a0 f61366q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private static final a0 f61367r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private static final a0 f61368s;

    static {
        int e10;
        int e11;
        e10 = d0.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);
        f61351b = e10;
        e11 = d0.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);
        f61352c = e11;
        f61353d = new a0("BUFFERED");
        f61354e = new a0("SHOULD_BUFFER");
        f61355f = new a0("S_RESUMING_BY_RCV");
        f61356g = new a0("RESUMING_BY_EB");
        f61357h = new a0("POISONED");
        f61358i = new a0("DONE_RCV");
        f61359j = new a0("INTERRUPTED_SEND");
        f61360k = new a0("INTERRUPTED_RCV");
        f61361l = new a0("CHANNEL_CLOSED");
        f61362m = new a0("SUSPEND");
        f61363n = new a0("SUSPEND_NO_WAITER");
        f61364o = new a0("FAILED");
        f61365p = new a0("NO_RECEIVE_RESULT");
        f61366q = new a0("CLOSE_HANDLER_CLOSED");
        f61367r = new a0("CLOSE_HANDLER_INVOKED");
        f61368s = new a0("NO_CLOSE_CAUSE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long A(int i10) {
        if (i10 != 0) {
            if (i10 != Integer.MAX_VALUE) {
                return i10;
            }
            return Long.MAX_VALUE;
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean B(gt.i<? super T> iVar, T t10, n<? super Throwable, ? super T, ? super CoroutineContext, Unit> nVar) {
        Object r10 = iVar.r(t10, null, nVar);
        if (r10 != null) {
            iVar.t(r10);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean C(gt.i iVar, Object obj, n nVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            nVar = null;
        }
        return B(iVar, obj, nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long v(long j10, boolean z10) {
        long j11;
        if (z10) {
            j11 = SieveCacheKt.NodeVisitedBit;
        } else {
            j11 = 0;
        }
        return j11 + j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long w(long j10, int i10) {
        return (i10 << 60) + j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E> b<E> x(long j10, b<E> bVar) {
        return new b<>(j10, bVar, bVar.y(), 0);
    }

    @NotNull
    public static final <E> KFunction<b<E>> y() {
        return BufferedChannelKt$createSegmentFunction$1.f61369a;
    }

    @NotNull
    public static final a0 z() {
        return f61361l;
    }
}
