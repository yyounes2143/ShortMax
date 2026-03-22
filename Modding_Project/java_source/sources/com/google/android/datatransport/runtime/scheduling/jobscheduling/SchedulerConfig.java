package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import androidx.annotation.RequiresApi;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.b;
import com.google.auto.value.AutoValue;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
@AutoValue
/* loaded from: classes4.dex */
public abstract class SchedulerConfig {

    /* loaded from: classes4.dex */
    public enum Flag {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private m5.a f17162a;

        /* renamed from: b  reason: collision with root package name */
        private Map<Priority, b> f17163b = new HashMap();

        public a a(Priority priority, b bVar) {
            this.f17163b.put(priority, bVar);
            return this;
        }

        public SchedulerConfig b() {
            if (this.f17162a != null) {
                if (this.f17163b.keySet().size() >= Priority.values().length) {
                    Map<Priority, b> map = this.f17163b;
                    this.f17163b = new HashMap();
                    return SchedulerConfig.d(this.f17162a, map);
                }
                throw new IllegalStateException("Not all priorities have been configured");
            }
            throw new NullPointerException("missing required property: clock");
        }

        public a c(m5.a aVar) {
            this.f17162a = aVar;
            return this;
        }
    }

    @AutoValue
    /* loaded from: classes4.dex */
    public static abstract class b {

        @AutoValue.Builder
        /* loaded from: classes4.dex */
        public static abstract class a {
            public abstract b a();

            public abstract a b(long j10);

            public abstract a c(Set<Flag> set);

            public abstract a d(long j10);
        }

        public static a a() {
            return new b.C0285b().c(Collections.emptySet());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long b();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Set<Flag> c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long d();
    }

    private long a(int i10, long j10) {
        long j11;
        int i11 = i10 - 1;
        if (j10 > 1) {
            j11 = j10;
        } else {
            j11 = 2;
        }
        return (long) (Math.pow(3.0d, i11) * j10 * Math.max(1.0d, Math.log(10000.0d) / Math.log(j11 * i11)));
    }

    public static a b() {
        return new a();
    }

    static SchedulerConfig d(m5.a aVar, Map<Priority, b> map) {
        return new com.google.android.datatransport.runtime.scheduling.jobscheduling.a(aVar, map);
    }

    public static SchedulerConfig f(m5.a aVar) {
        return b().a(Priority.DEFAULT, b.a().b(30000L).d(SignalManager.TWENTY_FOUR_HOURS_MILLIS).a()).a(Priority.HIGHEST, b.a().b(1000L).d(SignalManager.TWENTY_FOUR_HOURS_MILLIS).a()).a(Priority.VERY_LOW, b.a().b(SignalManager.TWENTY_FOUR_HOURS_MILLIS).d(SignalManager.TWENTY_FOUR_HOURS_MILLIS).c(i(Flag.DEVICE_IDLE)).a()).c(aVar).b();
    }

    private static <T> Set<T> i(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    @RequiresApi(api = 21)
    private void j(JobInfo.Builder builder, Set<Flag> set) {
        if (set.contains(Flag.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(Flag.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(Flag.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    @RequiresApi(api = 21)
    public JobInfo.Builder c(JobInfo.Builder builder, Priority priority, long j10, int i10) {
        builder.setMinimumLatency(g(priority, j10, i10));
        j(builder, h().get(priority).c());
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract m5.a e();

    public long g(Priority priority, long j10, int i10) {
        long time = j10 - e().getTime();
        b bVar = h().get(priority);
        return Math.min(Math.max(a(i10, bVar.b()), time), bVar.d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Map<Priority, b> h();
}
