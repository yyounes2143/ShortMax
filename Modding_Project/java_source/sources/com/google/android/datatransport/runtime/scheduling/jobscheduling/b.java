package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Set;
/* compiled from: AutoValue_SchedulerConfig_ConfigValue.java */
/* loaded from: classes4.dex */
final class b extends SchedulerConfig.b {

    /* renamed from: a  reason: collision with root package name */
    private final long f17166a;

    /* renamed from: b  reason: collision with root package name */
    private final long f17167b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<SchedulerConfig.Flag> f17168c;

    /* compiled from: AutoValue_SchedulerConfig_ConfigValue.java */
    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0285b extends SchedulerConfig.b.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f17169a;

        /* renamed from: b  reason: collision with root package name */
        private Long f17170b;

        /* renamed from: c  reason: collision with root package name */
        private Set<SchedulerConfig.Flag> f17171c;

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b a() {
            String str = "";
            if (this.f17169a == null) {
                str = " delta";
            }
            if (this.f17170b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f17171c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new b(this.f17169a.longValue(), this.f17170b.longValue(), this.f17171c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a b(long j10) {
            this.f17169a = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a c(Set<SchedulerConfig.Flag> set) {
            if (set != null) {
                this.f17171c = set;
                return this;
            }
            throw new NullPointerException("Null flags");
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a d(long j10) {
            this.f17170b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    long b() {
        return this.f17166a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    Set<SchedulerConfig.Flag> c() {
        return this.f17168c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    long d() {
        return this.f17167b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig.b)) {
            return false;
        }
        SchedulerConfig.b bVar = (SchedulerConfig.b) obj;
        if (this.f17166a == bVar.b() && this.f17167b == bVar.d() && this.f17168c.equals(bVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f17166a;
        long j11 = this.f17167b;
        return ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f17168c.hashCode();
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f17166a + ", maxAllowedDelay=" + this.f17167b + ", flags=" + this.f17168c + "}";
    }

    private b(long j10, long j11, Set<SchedulerConfig.Flag> set) {
        this.f17166a = j10;
        this.f17167b = j11;
        this.f17168c = set;
    }
}
