package com.applovin.shadow.okhttp3;

import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okhttp3.internal.connection.RealCall;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Dispatcher.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n1#2:242\n615#3,4:243\n1549#4:247\n1620#4,3:248\n1549#4:251\n1620#4,3:252\n*S KotlinDebug\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n*L\n162#1:243,4\n222#1:247\n222#1:248,3\n227#1:251\n227#1:252,3\n*E\n"})
/* loaded from: classes2.dex */
public final class Dispatcher {
    @Nullable
    private ExecutorService executorServiceOrNull;
    @Nullable
    private Runnable idleCallback;
    private int maxRequests;
    private int maxRequestsPerHost;
    @NotNull
    private final ArrayDeque<RealCall.AsyncCall> readyAsyncCalls;
    @NotNull
    private final ArrayDeque<RealCall.AsyncCall> runningAsyncCalls;
    @NotNull
    private final ArrayDeque<RealCall> runningSyncCalls;

    public Dispatcher() {
        this.maxRequests = 64;
        this.maxRequestsPerHost = 5;
        this.readyAsyncCalls = new ArrayDeque<>();
        this.runningAsyncCalls = new ArrayDeque<>();
        this.runningSyncCalls = new ArrayDeque<>();
    }

    private final RealCall.AsyncCall findExistingCallWithHost(String str) {
        Iterator<RealCall.AsyncCall> it = this.runningAsyncCalls.iterator();
        while (it.hasNext()) {
            RealCall.AsyncCall next = it.next();
            if (Intrinsics.areEqual(next.getHost(), str)) {
                return next;
            }
        }
        Iterator<RealCall.AsyncCall> it2 = this.readyAsyncCalls.iterator();
        while (it2.hasNext()) {
            RealCall.AsyncCall next2 = it2.next();
            if (Intrinsics.areEqual(next2.getHost(), str)) {
                return next2;
            }
        }
        return null;
    }

    private final <T> void finished(Deque<T> deque, T t10) {
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t10)) {
                runnable = this.idleCallback;
                Unit unit = Unit.f60915a;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (!promoteAndExecute() && runnable != null) {
            runnable.run();
        }
    }

    private final boolean promoteAndExecute() {
        int i10;
        boolean z10;
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<RealCall.AsyncCall> it = this.readyAsyncCalls.iterator();
                Intrinsics.checkNotNullExpressionValue(it, "readyAsyncCalls.iterator()");
                while (it.hasNext()) {
                    RealCall.AsyncCall asyncCall = it.next();
                    if (this.runningAsyncCalls.size() >= this.maxRequests) {
                        break;
                    } else if (asyncCall.getCallsPerHost().get() < this.maxRequestsPerHost) {
                        it.remove();
                        asyncCall.getCallsPerHost().incrementAndGet();
                        Intrinsics.checkNotNullExpressionValue(asyncCall, "asyncCall");
                        arrayList.add(asyncCall);
                        this.runningAsyncCalls.add(asyncCall);
                    }
                }
                if (runningCallsCount() > 0) {
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
            ((RealCall.AsyncCall) arrayList.get(i10)).executeOn(executorService());
        }
        return z10;
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_executorService  reason: not valid java name */
    public final ExecutorService m4507deprecated_executorService() {
        return executorService();
    }

    public final synchronized void cancelAll() {
        try {
            Iterator<RealCall.AsyncCall> it = this.readyAsyncCalls.iterator();
            while (it.hasNext()) {
                it.next().getCall().cancel();
            }
            Iterator<RealCall.AsyncCall> it2 = this.runningAsyncCalls.iterator();
            while (it2.hasNext()) {
                it2.next().getCall().cancel();
            }
            Iterator<RealCall> it3 = this.runningSyncCalls.iterator();
            while (it3.hasNext()) {
                it3.next().cancel();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void enqueue$okhttp(@NotNull RealCall.AsyncCall call) {
        RealCall.AsyncCall findExistingCallWithHost;
        Intrinsics.checkNotNullParameter(call, "call");
        synchronized (this) {
            try {
                this.readyAsyncCalls.add(call);
                if (!call.getCall().getForWebSocket() && (findExistingCallWithHost = findExistingCallWithHost(call.getHost())) != null) {
                    call.reuseCallsPerHostFrom(findExistingCallWithHost);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        promoteAndExecute();
    }

    public final synchronized void executed$okhttp(@NotNull RealCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.runningSyncCalls.add(call);
    }

    @NotNull
    public final synchronized ExecutorService executorService() {
        ExecutorService executorService;
        try {
            if (this.executorServiceOrNull == null) {
                TimeUnit timeUnit = TimeUnit.SECONDS;
                SynchronousQueue synchronousQueue = new SynchronousQueue();
                this.executorServiceOrNull = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, timeUnit, synchronousQueue, Util.threadFactory(Util.okHttpName + " Dispatcher", false));
            }
            executorService = this.executorServiceOrNull;
            Intrinsics.checkNotNull(executorService);
        } catch (Throwable th2) {
            throw th2;
        }
        return executorService;
    }

    public final void finished$okhttp(@NotNull RealCall.AsyncCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        call.getCallsPerHost().decrementAndGet();
        finished(this.runningAsyncCalls, call);
    }

    @Nullable
    public final synchronized Runnable getIdleCallback() {
        return this.idleCallback;
    }

    public final synchronized int getMaxRequests() {
        return this.maxRequests;
    }

    public final synchronized int getMaxRequestsPerHost() {
        return this.maxRequestsPerHost;
    }

    @NotNull
    public final synchronized List<Call> queuedCalls() {
        List<Call> unmodifiableList;
        try {
            ArrayDeque<RealCall.AsyncCall> arrayDeque = this.readyAsyncCalls;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(arrayDeque, 10));
            for (RealCall.AsyncCall asyncCall : arrayDeque) {
                arrayList.add(asyncCall.getCall());
            }
            unmodifiableList = Collections.unmodifiableList(arrayList);
            Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(readyAsyncCalls.map { it.call })");
        } catch (Throwable th2) {
            throw th2;
        }
        return unmodifiableList;
    }

    public final synchronized int queuedCallsCount() {
        return this.readyAsyncCalls.size();
    }

    @NotNull
    public final synchronized List<Call> runningCalls() {
        List<Call> unmodifiableList;
        try {
            ArrayDeque<RealCall> arrayDeque = this.runningSyncCalls;
            ArrayDeque<RealCall.AsyncCall> arrayDeque2 = this.runningAsyncCalls;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(arrayDeque2, 10));
            for (RealCall.AsyncCall asyncCall : arrayDeque2) {
                arrayList.add(asyncCall.getCall());
            }
            unmodifiableList = Collections.unmodifiableList(CollectionsKt.K0(arrayDeque, arrayList));
            Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(running…yncCalls.map { it.call })");
        } catch (Throwable th2) {
            throw th2;
        }
        return unmodifiableList;
    }

    public final synchronized int runningCallsCount() {
        return this.runningAsyncCalls.size() + this.runningSyncCalls.size();
    }

    public final synchronized void setIdleCallback(@Nullable Runnable runnable) {
        this.idleCallback = runnable;
    }

    public final void setMaxRequests(int i10) {
        if (i10 >= 1) {
            synchronized (this) {
                this.maxRequests = i10;
                Unit unit = Unit.f60915a;
            }
            promoteAndExecute();
            return;
        }
        throw new IllegalArgumentException(("max < 1: " + i10).toString());
    }

    public final void setMaxRequestsPerHost(int i10) {
        if (i10 >= 1) {
            synchronized (this) {
                this.maxRequestsPerHost = i10;
                Unit unit = Unit.f60915a;
            }
            promoteAndExecute();
            return;
        }
        throw new IllegalArgumentException(("max < 1: " + i10).toString());
    }

    public final void finished$okhttp(@NotNull RealCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        finished(this.runningSyncCalls, call);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Dispatcher(@NotNull ExecutorService executorService) {
        this();
        Intrinsics.checkNotNullParameter(executorService, "executorService");
        this.executorServiceOrNull = executorService;
    }
}
