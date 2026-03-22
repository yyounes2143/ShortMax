package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Map;
/* compiled from: AutoValue_SchedulerConfig.java */
/* loaded from: classes4.dex */
final class a extends SchedulerConfig {

    /* renamed from: a  reason: collision with root package name */
    private final m5.a f17164a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Priority, SchedulerConfig.b> f17165b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(m5.a aVar, Map<Priority, SchedulerConfig.b> map) {
        if (aVar != null) {
            this.f17164a = aVar;
            if (map != null) {
                this.f17165b = map;
                return;
            }
            throw new NullPointerException("Null values");
        }
        throw new NullPointerException("Null clock");
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    m5.a e() {
        return this.f17164a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig)) {
            return false;
        }
        SchedulerConfig schedulerConfig = (SchedulerConfig) obj;
        if (this.f17164a.equals(schedulerConfig.e()) && this.f17165b.equals(schedulerConfig.h())) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    Map<Priority, SchedulerConfig.b> h() {
        return this.f17165b;
    }

    public int hashCode() {
        return ((this.f17164a.hashCode() ^ 1000003) * 1000003) ^ this.f17165b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f17164a + ", values=" + this.f17165b + "}";
    }
}
