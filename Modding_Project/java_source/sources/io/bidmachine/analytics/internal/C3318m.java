package io.bidmachine.analytics.internal;

import android.content.Context;
import gt.r1;
import io.bidmachine.analytics.AnalyticsConfig;
import io.bidmachine.analytics.MonitorConfig;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.X;
import io.bidmachine.analytics.internal.g0;
import io.bidmachine.analytics.internal.h0;
import io.bidmachine.analytics.internal.n0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: io.bidmachine.analytics.internal.m  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public final class C3318m {

    /* renamed from: a  reason: collision with root package name */
    public static final C3318m f54161a = new C3318m();

    /* renamed from: b  reason: collision with root package name */
    private static final p0 f54162b;

    /* renamed from: c  reason: collision with root package name */
    private static final gt.g0 f54163c;

    /* renamed from: d  reason: collision with root package name */
    private static C3308c f54164d;

    /* renamed from: e  reason: collision with root package name */
    private static V f54165e;

    /* renamed from: f  reason: collision with root package name */
    private static l0 f54166f;

    /* renamed from: g  reason: collision with root package name */
    private static Map f54167g;

    /* renamed from: h  reason: collision with root package name */
    private static Map f54168h;

    /* renamed from: i  reason: collision with root package name */
    private static final List f54169i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.analytics.internal.m$a */
    /* loaded from: classes7.dex */
    public static final class a extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f54170a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ V f54171b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f54172c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ List f54173d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(V v10, String str, List list, rs.c cVar) {
            super(2, cVar);
            this.f54171b = v10;
            this.f54172c = str;
            this.f54173d = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            return new a(this.f54171b, this.f54172c, this.f54173d, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f54170a == 0) {
                kotlin.f.b(obj);
                this.f54171b.a(this.f54172c, this.f54173d);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.analytics.internal.m$b */
    /* loaded from: classes7.dex */
    public static final class b extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f54174a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l0 f54175b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f54176c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ List f54177d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(l0 l0Var, List list, List list2, rs.c cVar) {
            super(2, cVar);
            this.f54175b = l0Var;
            this.f54176c = list;
            this.f54177d = list2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            return new b(this.f54175b, this.f54176c, this.f54177d, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f54174a == 0) {
                kotlin.f.b(obj);
                this.f54175b.a(this.f54176c, this.f54177d);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static {
        p0 a10 = p0.f54302g.a();
        f54162b = a10;
        f54163c = kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(a10.b()));
        f54167g = kotlin.collections.p0.i();
        f54168h = kotlin.collections.p0.i();
        f54169i = Collections.synchronizedList(new ArrayList());
    }

    private C3318m() {
    }

    private final synchronized l0 b(C3308c c3308c) {
        m0 m0Var;
        l0 l0Var = f54166f;
        m0Var = l0Var;
        if (l0Var == null) {
            m0 m0Var2 = new m0(c3308c);
            m0Var2.b();
            f54166f = m0Var2;
            m0Var = m0Var2;
        }
        return m0Var;
    }

    public final void a(Context context, AnalyticsConfig analyticsConfig) {
        synchronized (this) {
            try {
                C3318m c3318m = f54161a;
                C3308c a10 = c3318m.a(context);
                V a11 = c3318m.a(a10);
                l0 b10 = c3318m.b(a10);
                c3318m.a(f54167g);
                f54167g = c3318m.a(analyticsConfig, a11);
                f54168h = c3318m.a(context, analyticsConfig, b10);
                c3318m.a(analyticsConfig.getSessionId());
                String sessionId = analyticsConfig.getSessionId();
                List<MonitorConfig> monitorConfigList = analyticsConfig.getMonitorConfigList();
                ArrayList arrayList = new ArrayList(CollectionsKt.z(monitorConfigList, 10));
                for (MonitorConfig monitorConfig : monitorConfigList) {
                    arrayList.add(monitorConfig.getName());
                }
                c3318m.a(a11, sessionId, arrayList);
                C3318m c3318m2 = f54161a;
                List<ReaderConfig> readerConfigList = analyticsConfig.getReaderConfigList();
                ArrayList arrayList2 = new ArrayList(CollectionsKt.z(readerConfigList, 10));
                for (ReaderConfig readerConfig : readerConfigList) {
                    arrayList2.add(readerConfig.getName());
                }
                List<ReaderConfig> readerConfigList2 = analyticsConfig.getReaderConfigList();
                ArrayList<List> arrayList3 = new ArrayList(CollectionsKt.z(readerConfigList2, 10));
                for (ReaderConfig readerConfig2 : readerConfigList2) {
                    arrayList3.add(readerConfig2.getRules());
                }
                ArrayList arrayList4 = new ArrayList();
                for (List<ReaderConfig.Rule> list : arrayList3) {
                    ArrayList arrayList5 = new ArrayList(CollectionsKt.z(list, 10));
                    for (ReaderConfig.Rule rule : list) {
                        arrayList5.add(new h0.a(rule.getTag(), rule.getPath()));
                    }
                    CollectionsKt.E(arrayList4, arrayList5);
                }
                c3318m2.a(b10, arrayList2, arrayList4);
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void a(Map map) {
        for (X x10 : map.values()) {
            x10.a();
        }
    }

    private final V a(C3308c c3308c) {
        V v10 = f54165e;
        if (v10 == null) {
            W w10 = new W(c3308c);
            w10.b();
            f54165e = w10;
            return w10;
        }
        return v10;
    }

    private final synchronized C3308c a(Context context) {
        C3308c c3308c;
        c3308c = f54164d;
        if (c3308c == null) {
            c3308c = new C3308c(context);
            f54164d = c3308c;
        }
        return c3308c;
    }

    private final Map a(AnalyticsConfig analyticsConfig, V v10) {
        List<MonitorConfig> monitorConfigList = analyticsConfig.getMonitorConfigList();
        ArrayList<MonitorConfig> arrayList = new ArrayList();
        for (Object obj : monitorConfigList) {
            if (((MonitorConfig) obj).isReportEnabled()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
        for (MonitorConfig monitorConfig : arrayList) {
            arrayList2.add(new X(p0.f54302g.a(), new X.b(monitorConfig, analyticsConfig.getSessionId(), analyticsConfig.getExtras()), v10));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(kotlin.collections.p0.e(CollectionsKt.z(arrayList2, 10)), 16));
        for (Object obj2 : arrayList2) {
            linkedHashMap.put(((X) obj2).b(), obj2);
        }
        return linkedHashMap;
    }

    private final Map a(Context context, AnalyticsConfig analyticsConfig, l0 l0Var) {
        g0.a c3325u;
        n0 n0Var;
        List<ReaderConfig> readerConfigList = analyticsConfig.getReaderConfigList();
        ArrayList arrayList = new ArrayList();
        for (ReaderConfig readerConfig : readerConfigList) {
            String name = readerConfig.getName();
            int hashCode = name.hashCode();
            if (hashCode == 2990623) {
                if (name.equals("aexs")) {
                    c3325u = new C3325u();
                    n0Var = new n0(p0.f54302g.a(), new n0.a(readerConfig, analyticsConfig.getSessionId(), analyticsConfig.getExtras(), c3325u), l0Var);
                }
                n0Var = null;
            } else if (hashCode == 2997059) {
                if (name.equals("alog")) {
                    c3325u = new E(C3316k.f54150a.a().a());
                    n0Var = new n0(p0.f54302g.a(), new n0.a(readerConfig, analyticsConfig.getSessionId(), analyticsConfig.getExtras(), c3325u), l0Var);
                }
                n0Var = null;
            } else if (hashCode != 3001100) {
                if (hashCode == 92819013 && name.equals("aints")) {
                    c3325u = new C3329y(context.getFilesDir().getParentFile());
                    n0Var = new n0(p0.f54302g.a(), new n0.a(readerConfig, analyticsConfig.getSessionId(), analyticsConfig.getExtras(), c3325u), l0Var);
                }
                n0Var = null;
            } else {
                if (name.equals("apur")) {
                    c3325u = new c0(C3316k.f54150a.a().b());
                    n0Var = new n0(p0.f54302g.a(), new n0.a(readerConfig, analyticsConfig.getSessionId(), analyticsConfig.getExtras(), c3325u), l0Var);
                }
                n0Var = null;
            }
            if (n0Var != null) {
                arrayList.add(n0Var);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(kotlin.collections.p0.e(CollectionsKt.z(arrayList, 10)), 16));
        for (Object obj : arrayList) {
            linkedHashMap.put(((n0) obj).a(), obj);
        }
        return linkedHashMap;
    }

    private final void a(String str) {
        List list = f54169i;
        List<Q> d12 = CollectionsKt.d1(list);
        list.clear();
        for (Q q10 : d12) {
            f54161a.a(Q.a(q10, null, null, str, 0L, null, null, 59, null));
        }
    }

    private final void a(V v10, String str, List list) {
        gt.g.d(f54163c, f54162b.c(), null, new a(v10, str, list, null), 2, null);
    }

    private final void a(l0 l0Var, List list, List list2) {
        gt.g.d(f54163c, f54162b.c(), null, new b(l0Var, list, list2, null), 2, null);
    }

    public final void a(Q q10) {
        if (Intrinsics.areEqual(q10.e(), "")) {
            f54169i.add(q10);
            return;
        }
        X x10 = (X) f54167g.get(q10.d());
        if (x10 != null) {
            x10.b(q10);
        }
    }

    public final void a(h0 h0Var) {
        a(h0Var.d(), CollectionsKt.e(h0Var));
    }

    public final void a(String str, List list) {
        n0 n0Var = (n0) f54168h.get(str);
        if (n0Var != null) {
            n0Var.b(str, list);
        }
    }
}
