package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.StrictMode;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import w7.a0;
import w7.t;
@SuppressLint({"ThreadPoolCreation"})
/* loaded from: classes5.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {

    /* renamed from: a  reason: collision with root package name */
    static final t<ScheduledExecutorService> f20605a = new t<>(new w8.b() { // from class: x7.b
        @Override // w8.b
        public final Object get() {
            ScheduledExecutorService p10;
            p10 = ExecutorsRegistrar.p();
            return p10;
        }
    });

    /* renamed from: b  reason: collision with root package name */
    static final t<ScheduledExecutorService> f20606b = new t<>(new w8.b() { // from class: x7.c
        @Override // w8.b
        public final Object get() {
            ScheduledExecutorService q10;
            q10 = ExecutorsRegistrar.q();
            return q10;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    static final t<ScheduledExecutorService> f20607c = new t<>(new w8.b() { // from class: x7.d
        @Override // w8.b
        public final Object get() {
            ScheduledExecutorService r10;
            r10 = ExecutorsRegistrar.r();
            return r10;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    static final t<ScheduledExecutorService> f20608d = new t<>(new w8.b() { // from class: x7.e
        @Override // w8.b
        public final Object get() {
            ScheduledExecutorService s10;
            s10 = ExecutorsRegistrar.s();
            return s10;
        }
    });

    private static StrictMode.ThreadPolicy i() {
        StrictMode.ThreadPolicy.Builder detectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
        int i10 = Build.VERSION.SDK_INT;
        detectNetwork.detectResourceMismatches();
        if (i10 >= 26) {
            detectNetwork.detectUnbufferedIo();
        }
        return detectNetwork.penaltyLog().build();
    }

    private static ThreadFactory j(String str, int i10) {
        return new b(str, i10, null);
    }

    private static ThreadFactory k(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        return new b(str, i10, threadPolicy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService l(w7.d dVar) {
        return f20605a.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService m(w7.d dVar) {
        return f20607c.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService n(w7.d dVar) {
        return f20606b.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Executor o(w7.d dVar) {
        return UiExecutor.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService p() {
        return u(Executors.newFixedThreadPool(4, k("Firebase Background", 10, i())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService q() {
        return u(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), k("Firebase Lite", 0, t())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService r() {
        return u(Executors.newCachedThreadPool(j("Firebase Blocking", 11)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService s() {
        return Executors.newSingleThreadScheduledExecutor(j("Firebase Scheduler", 0));
    }

    private static StrictMode.ThreadPolicy t() {
        return new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build();
    }

    private static ScheduledExecutorService u(ExecutorService executorService) {
        return new o(executorService, f20608d.get());
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<w7.c<?>> getComponents() {
        return Arrays.asList(w7.c.f(a0.a(o7.a.class, ScheduledExecutorService.class), a0.a(o7.a.class, ExecutorService.class), a0.a(o7.a.class, Executor.class)).f(new w7.g() { // from class: x7.f
            @Override // w7.g
            public final Object a(w7.d dVar) {
                ScheduledExecutorService l10;
                l10 = ExecutorsRegistrar.l(dVar);
                return l10;
            }
        }).d(), w7.c.f(a0.a(o7.b.class, ScheduledExecutorService.class), a0.a(o7.b.class, ExecutorService.class), a0.a(o7.b.class, Executor.class)).f(new w7.g() { // from class: x7.g
            @Override // w7.g
            public final Object a(w7.d dVar) {
                ScheduledExecutorService m10;
                m10 = ExecutorsRegistrar.m(dVar);
                return m10;
            }
        }).d(), w7.c.f(a0.a(o7.c.class, ScheduledExecutorService.class), a0.a(o7.c.class, ExecutorService.class), a0.a(o7.c.class, Executor.class)).f(new w7.g() { // from class: x7.h
            @Override // w7.g
            public final Object a(w7.d dVar) {
                ScheduledExecutorService n10;
                n10 = ExecutorsRegistrar.n(dVar);
                return n10;
            }
        }).d(), w7.c.e(a0.a(o7.d.class, Executor.class)).f(new w7.g() { // from class: x7.i
            @Override // w7.g
            public final Object a(w7.d dVar) {
                Executor o10;
                o10 = ExecutorsRegistrar.o(dVar);
                return o10;
            }
        }).d());
    }
}
