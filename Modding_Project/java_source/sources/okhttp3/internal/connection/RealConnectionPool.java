package okhttp3.internal.connection;

import java.lang.ref.Reference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Address;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.platform.Platform;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealConnectionPool.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRealConnectionPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealConnectionPool.kt\nokhttp3/internal/connection/RealConnectionPool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Util.kt\nokhttp3/internal/Util\n*L\n1#1,250:1\n1#2:251\n1774#3,4:252\n608#4,4:256\n608#4,4:260\n608#4,4:264\n*S KotlinDebug\n*F\n+ 1 RealConnectionPool.kt\nokhttp3/internal/connection/RealConnectionPool\n*L\n60#1:252,4\n95#1:256,4\n106#1:260,4\n215#1:264,4\n*E\n"})
/* loaded from: classes8.dex */
public final class RealConnectionPool {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final Companion f63838f = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f63839a;

    /* renamed from: b  reason: collision with root package name */
    private final long f63840b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final TaskQueue f63841c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final RealConnectionPool$cleanupTask$1 f63842d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final ConcurrentLinkedQueue<RealConnection> f63843e;

    /* compiled from: RealConnectionPool.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [okhttp3.internal.connection.RealConnectionPool$cleanupTask$1] */
    public RealConnectionPool(@NotNull TaskRunner taskRunner, int i10, long j10, @NotNull TimeUnit timeUnit) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        this.f63839a = i10;
        this.f63840b = timeUnit.toNanos(j10);
        this.f63841c = taskRunner.i();
        final String str = Util.f63635i + " ConnectionPool";
        this.f63842d = new Task(str) { // from class: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                return RealConnectionPool.this.b(System.nanoTime());
            }
        };
        this.f63843e = new ConcurrentLinkedQueue<>();
        if (j10 > 0) {
            return;
        }
        throw new IllegalArgumentException(("keepAliveDuration <= 0: " + j10).toString());
    }

    private final int d(RealConnection realConnection, long j10) {
        if (Util.f63634h && !Thread.holdsLock(realConnection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + realConnection);
        }
        List<Reference<RealCall>> n10 = realConnection.n();
        int i10 = 0;
        while (i10 < n10.size()) {
            Reference<RealCall> reference = n10.get(i10);
            if (reference.get() != null) {
                i10++;
            } else {
                Intrinsics.checkNotNull(reference, "null cannot be cast to non-null type okhttp3.internal.connection.RealCall.CallReference");
                Platform.f64128a.g().m("A connection to " + realConnection.A().a().l() + " was leaked. Did you forget to close a response body?", ((RealCall.CallReference) reference).a());
                n10.remove(i10);
                realConnection.D(true);
                if (n10.isEmpty()) {
                    realConnection.C(j10 - this.f63840b);
                    return 0;
                }
            }
        }
        return n10.size();
    }

    public final boolean a(@NotNull Address address, @NotNull RealCall call, @Nullable List<Route> list, boolean z10) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(call, "call");
        Iterator<RealConnection> it = this.f63843e.iterator();
        while (it.hasNext()) {
            RealConnection connection = it.next();
            Intrinsics.checkNotNullExpressionValue(connection, "connection");
            synchronized (connection) {
                if (z10) {
                    try {
                        if (connection.v()) {
                        }
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (connection.t(address, list)) {
                    call.c(connection);
                    return true;
                }
                Unit unit2 = Unit.f60915a;
            }
        }
        return false;
    }

    public final long b(long j10) {
        Iterator<RealConnection> it = this.f63843e.iterator();
        int i10 = 0;
        long j11 = Long.MIN_VALUE;
        RealConnection realConnection = null;
        int i11 = 0;
        while (it.hasNext()) {
            RealConnection connection = it.next();
            Intrinsics.checkNotNullExpressionValue(connection, "connection");
            synchronized (connection) {
                if (d(connection, j10) > 0) {
                    i11++;
                } else {
                    i10++;
                    long o10 = j10 - connection.o();
                    if (o10 > j11) {
                        realConnection = connection;
                        j11 = o10;
                    }
                    Unit unit = Unit.f60915a;
                }
            }
        }
        long j12 = this.f63840b;
        if (j11 < j12 && i10 <= this.f63839a) {
            if (i10 > 0) {
                return j12 - j11;
            }
            if (i11 > 0) {
                return j12;
            }
            return -1L;
        }
        Intrinsics.checkNotNull(realConnection);
        synchronized (realConnection) {
            if (!realConnection.n().isEmpty()) {
                return 0L;
            }
            if (realConnection.o() + j11 != j10) {
                return 0L;
            }
            realConnection.D(true);
            this.f63843e.remove(realConnection);
            Util.n(realConnection.E());
            if (this.f63843e.isEmpty()) {
                this.f63841c.a();
            }
            return 0L;
        }
    }

    public final boolean c(@NotNull RealConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (Util.f63634h && !Thread.holdsLock(connection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + connection);
        } else if (!connection.p() && this.f63839a != 0) {
            TaskQueue.j(this.f63841c, this.f63842d, 0L, 2, null);
            return false;
        } else {
            connection.D(true);
            this.f63843e.remove(connection);
            if (this.f63843e.isEmpty()) {
                this.f63841c.a();
            }
            return true;
        }
    }

    public final void e(@NotNull RealConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (Util.f63634h && !Thread.holdsLock(connection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + connection);
        }
        this.f63843e.add(connection);
        TaskQueue.j(this.f63841c, this.f63842d, 0L, 2, null);
    }
}
