package i5;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import j5.u;
/* compiled from: SchedulingModule_WorkSchedulerFactory.java */
/* loaded from: classes4.dex */
public final class i implements e5.b<u> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Context> f53313a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<k5.d> f53314b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<SchedulerConfig> f53315c;

    /* renamed from: d  reason: collision with root package name */
    private final ls.a<m5.a> f53316d;

    public i(ls.a<Context> aVar, ls.a<k5.d> aVar2, ls.a<SchedulerConfig> aVar3, ls.a<m5.a> aVar4) {
        this.f53313a = aVar;
        this.f53314b = aVar2;
        this.f53315c = aVar3;
        this.f53316d = aVar4;
    }

    public static i a(ls.a<Context> aVar, ls.a<k5.d> aVar2, ls.a<SchedulerConfig> aVar3, ls.a<m5.a> aVar4) {
        return new i(aVar, aVar2, aVar3, aVar4);
    }

    public static u c(Context context, k5.d dVar, SchedulerConfig schedulerConfig, m5.a aVar) {
        return (u) e5.d.d(h.a(context, dVar, schedulerConfig, aVar));
    }

    @Override // ls.a
    /* renamed from: b */
    public u get() {
        return c(this.f53313a.get(), this.f53314b.get(), this.f53315c.get(), this.f53316d.get());
    }
}
