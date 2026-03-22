package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class JobScheduler {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f15703a;

    /* renamed from: b  reason: collision with root package name */
    private final d f15704b;

    /* renamed from: e  reason: collision with root package name */
    private final int f15707e;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f15705c = new a();

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f15706d = new b();
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    y3.k f15708f = null;
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    int f15709g = 0;
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    JobState f15710h = JobState.IDLE;
    @VisibleForTesting

    /* renamed from: i  reason: collision with root package name */
    long f15711i = 0;
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    long f15712j = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public enum JobState {
        IDLE,
        QUEUED,
        RUNNING,
        RUNNING_AND_PENDING
    }

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            JobScheduler.this.d();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            JobScheduler.this.j();
        }
    }

    /* loaded from: classes3.dex */
    static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15715a;

        static {
            int[] iArr = new int[JobState.values().length];
            f15715a = iArr;
            try {
                iArr[JobState.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15715a[JobState.QUEUED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15715a[JobState.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15715a[JobState.RUNNING_AND_PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(y3.k kVar, int i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private static ScheduledExecutorService f15716a;

        static ScheduledExecutorService a() {
            if (f15716a == null) {
                f15716a = Executors.newSingleThreadScheduledExecutor();
            }
            return f15716a;
        }
    }

    public JobScheduler(Executor executor, d dVar, int i10) {
        this.f15703a = executor;
        this.f15704b = dVar;
        this.f15707e = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        y3.k kVar;
        int i10;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            kVar = this.f15708f;
            i10 = this.f15709g;
            this.f15708f = null;
            this.f15709g = 0;
            this.f15710h = JobState.RUNNING;
            this.f15712j = uptimeMillis;
        }
        try {
            if (i(kVar, i10)) {
                this.f15704b.a(kVar, i10);
            }
        } finally {
            y3.k.i(kVar);
            g();
        }
    }

    private void e(long j10) {
        Runnable a10 = z3.a.a(this.f15706d, "JobScheduler_enqueueJob");
        if (j10 > 0) {
            e.a().schedule(a10, j10, TimeUnit.MILLISECONDS);
        } else {
            a10.run();
        }
    }

    private void g() {
        long j10;
        boolean z10;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            try {
                if (this.f15710h == JobState.RUNNING_AND_PENDING) {
                    j10 = Math.max(this.f15712j + this.f15707e, uptimeMillis);
                    this.f15711i = uptimeMillis;
                    this.f15710h = JobState.QUEUED;
                    z10 = true;
                } else {
                    this.f15710h = JobState.IDLE;
                    j10 = 0;
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            e(j10 - uptimeMillis);
        }
    }

    private static boolean i(y3.k kVar, int i10) {
        if (!com.facebook.imagepipeline.producers.c.d(i10) && !com.facebook.imagepipeline.producers.c.m(i10, 4) && !y3.k.T(kVar)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.f15703a.execute(z3.a.a(this.f15705c, "JobScheduler_submitJob"));
    }

    public void c() {
        y3.k kVar;
        synchronized (this) {
            kVar = this.f15708f;
            this.f15708f = null;
            this.f15709g = 0;
        }
        y3.k.i(kVar);
    }

    public synchronized long f() {
        return this.f15712j - this.f15711i;
    }

    public boolean h() {
        long max;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            try {
                boolean z10 = false;
                if (!i(this.f15708f, this.f15709g)) {
                    return false;
                }
                int i10 = c.f15715a[this.f15710h.ordinal()];
                if (i10 != 1) {
                    if (i10 == 3) {
                        this.f15710h = JobState.RUNNING_AND_PENDING;
                    }
                    max = 0;
                } else {
                    max = Math.max(this.f15712j + this.f15707e, uptimeMillis);
                    this.f15711i = uptimeMillis;
                    this.f15710h = JobState.QUEUED;
                    z10 = true;
                }
                if (z10) {
                    e(max - uptimeMillis);
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean k(y3.k kVar, int i10) {
        y3.k kVar2;
        if (!i(kVar, i10)) {
            return false;
        }
        synchronized (this) {
            kVar2 = this.f15708f;
            this.f15708f = y3.k.g(kVar);
            this.f15709g = i10;
        }
        y3.k.i(kVar2);
        return true;
    }
}
