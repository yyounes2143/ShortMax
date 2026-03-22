package okhttp3;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealCall;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Dispatcher.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n1#2:242\n615#3,4:243\n1549#4:247\n1620#4,3:248\n1549#4:251\n1620#4,3:252\n*S KotlinDebug\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n*L\n162#1:243,4\n222#1:247\n222#1:248,3\n227#1:251\n227#1:252,3\n*E\n"})
/* loaded from: classes8.dex */
public final class Dispatcher {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Runnable f63429c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ExecutorService f63430d;

    /* renamed from: a  reason: collision with root package name */
    private int f63427a = 64;

    /* renamed from: b  reason: collision with root package name */
    private int f63428b = 5;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final ArrayDeque<RealCall.AsyncCall> f63431e = new ArrayDeque<>();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<RealCall.AsyncCall> f63432f = new ArrayDeque<>();
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque<RealCall> f63433g = new ArrayDeque<>();

    private final RealCall.AsyncCall e(String str) {
        Iterator<RealCall.AsyncCall> it = this.f63432f.iterator();
        while (it.hasNext()) {
            RealCall.AsyncCall next = it.next();
            if (Intrinsics.areEqual(next.e(), str)) {
                return next;
            }
        }
        Iterator<RealCall.AsyncCall> it2 = this.f63431e.iterator();
        while (it2.hasNext()) {
            RealCall.AsyncCall next2 = it2.next();
            if (Intrinsics.areEqual(next2.e(), str)) {
                return next2;
            }
        }
        return null;
    }

    private final <T> void f(Deque<T> deque, T t10) {
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t10)) {
                runnable = this.f63429c;
                Unit unit = Unit.f60915a;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (!i() && runnable != null) {
            runnable.run();
        }
    }

    private final boolean i() {
        int i10;
        boolean z10;
        if (Util.f63634h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<RealCall.AsyncCall> it = this.f63431e.iterator();
                Intrinsics.checkNotNullExpressionValue(it, "readyAsyncCalls.iterator()");
                while (it.hasNext()) {
                    RealCall.AsyncCall asyncCall = it.next();
                    if (this.f63432f.size() >= this.f63427a) {
                        break;
                    } else if (asyncCall.d().get() < this.f63428b) {
                        it.remove();
                        asyncCall.d().incrementAndGet();
                        Intrinsics.checkNotNullExpressionValue(asyncCall, "asyncCall");
                        arrayList.add(asyncCall);
                        this.f63432f.add(asyncCall);
                    }
                }
                if (k() > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int size = arrayList.size();
        for (i10 = 0; i10 < size; i10++) {
            ((RealCall.AsyncCall) arrayList.get(i10)).a(d());
        }
        return z10;
    }

    public final synchronized void a() {
        try {
            Iterator<RealCall.AsyncCall> it = this.f63431e.iterator();
            while (it.hasNext()) {
                it.next().c().cancel();
            }
            Iterator<RealCall.AsyncCall> it2 = this.f63432f.iterator();
            while (it2.hasNext()) {
                it2.next().c().cancel();
            }
            Iterator<RealCall> it3 = this.f63433g.iterator();
            while (it3.hasNext()) {
                it3.next().cancel();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void b(@NotNull RealCall.AsyncCall call) {
        RealCall.AsyncCall e10;
        Intrinsics.checkNotNullParameter(call, "call");
        synchronized (this) {
            try {
                this.f63431e.add(call);
                if (!call.c().n() && (e10 = e(call.e())) != null) {
                    call.f(e10);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        i();
    }

    public final synchronized void c(@NotNull RealCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.f63433g.add(call);
    }

    @NotNull
    public final synchronized ExecutorService d() {
        ExecutorService executorService;
        try {
            if (this.f63430d == null) {
                TimeUnit timeUnit = TimeUnit.SECONDS;
                SynchronousQueue synchronousQueue = new SynchronousQueue();
                this.f63430d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, timeUnit, synchronousQueue, Util.N(Util.f63635i + " Dispatcher", false));
            }
            executorService = this.f63430d;
            Intrinsics.checkNotNull(executorService);
        } catch (Throwable th2) {
            throw th2;
        }
        return executorService;
    }

    public final void g(@NotNull RealCall.AsyncCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        call.d().decrementAndGet();
        f(this.f63432f, call);
    }

    public final void h(@NotNull RealCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        f(this.f63433g, call);
    }

    @NotNull
    public final synchronized List<Call> j() {
        List<Call> unmodifiableList;
        try {
            ArrayDeque<RealCall.AsyncCall> arrayDeque = this.f63431e;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(arrayDeque, 10));
            for (RealCall.AsyncCall asyncCall : arrayDeque) {
                arrayList.add(asyncCall.c());
            }
            unmodifiableList = Collections.unmodifiableList(arrayList);
            Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(readyAsyncCalls.map { it.call })");
        } catch (Throwable th2) {
            throw th2;
        }
        return unmodifiableList;
    }

    public final synchronized int k() {
        return this.f63432f.size() + this.f63433g.size();
    }

    public final void l(int i10) {
        if (i10 >= 1) {
            synchronized (this) {
                this.f63427a = i10;
                Unit unit = Unit.f60915a;
            }
            i();
            return;
        }
        throw new IllegalArgumentException(("max < 1: " + i10).toString());
    }
}
