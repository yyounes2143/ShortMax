package i5;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
/* compiled from: SchedulingConfigModule_ConfigFactory.java */
/* loaded from: classes4.dex */
public final class g implements e5.b<SchedulerConfig> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<m5.a> f53312a;

    public g(ls.a<m5.a> aVar) {
        this.f53312a = aVar;
    }

    public static SchedulerConfig a(m5.a aVar) {
        return (SchedulerConfig) e5.d.d(f.a(aVar));
    }

    public static g b(ls.a<m5.a> aVar) {
        return new g(aVar);
    }

    @Override // ls.a
    /* renamed from: c */
    public SchedulerConfig get() {
        return a(this.f53312a.get());
    }
}
