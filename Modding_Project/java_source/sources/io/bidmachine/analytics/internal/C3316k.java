package io.bidmachine.analytics.internal;

import android.content.Context;
import io.bidmachine.analytics.AnalyticsConfig;
import io.bidmachine.analytics.MonitorConfig;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.AbstractC3310e;
import io.bidmachine.analytics.internal.AbstractC3312g;
import io.bidmachine.analytics.internal.AbstractC3314i;
import io.bidmachine.analytics.internal.InterfaceC3313h;
import io.bidmachine.analytics.internal.h0;
import io.bidmachine.analytics.internal.q0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
/* renamed from: io.bidmachine.analytics.internal.k  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public final class C3316k {

    /* renamed from: a  reason: collision with root package name */
    public static final C3316k f54150a = new C3316k();

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f54151b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private static Map f54152c = kotlin.collections.p0.i();

    /* renamed from: d  reason: collision with root package name */
    private static final C3317l f54153d = new C3317l();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.bidmachine.analytics.internal.k$b */
    /* loaded from: classes7.dex */
    public static final class b implements InterfaceC3313h {

        /* renamed from: a  reason: collision with root package name */
        private final String f54156a;

        public b(String str) {
            this.f54156a = str;
        }

        @Override // io.bidmachine.analytics.internal.InterfaceC3313h
        public void a(List list) {
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                InterfaceC3313h.a aVar = (InterfaceC3313h.a) it.next();
                String str = this.f54156a;
                String a10 = aVar.a();
                if (a10 == null) {
                    a10 = "";
                }
                arrayList.add(new h0(null, str, 0L, a10, new h0.a(aVar.c().getTag(), aVar.c().getPath()), aVar.b(), false, 69, null));
            }
            C3318m.f54161a.a(this.f54156a, arrayList);
        }
    }

    private C3316k() {
    }

    public final void b(Context context) {
        if (f54151b.compareAndSet(false, true) && !s0.a(context)) {
            f54152c = a(context);
        }
    }

    public final C3317l a() {
        return f54153d;
    }

    private final void b(Context context, String str, Set set) {
        Object d10;
        Context applicationContext = context.getApplicationContext();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            AbstractC3315j abstractC3315j = (AbstractC3315j) f54152c.get((String) it.next());
            if (abstractC3315j != null) {
                try {
                    Result.a aVar = Result.f60901b;
                    abstractC3315j.c(applicationContext);
                    d10 = Result.d(Unit.f60915a);
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(kotlin.f.a(th2));
                }
                Throwable g10 = Result.g(d10);
                if (g10 != null) {
                    f54150a.a(abstractC3315j, str, g10);
                }
            }
        }
    }

    public final Map a(Context context) {
        Object d10;
        Object d11;
        Object d12;
        Object d13;
        Object d14;
        Object d15;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Result.a aVar = Result.f60901b;
            O o10 = new O();
            o10.a(context);
            linkedHashMap.put(o10.a(), o10);
            d10 = Result.d(Unit.f60915a);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        Throwable g10 = Result.g(d10);
        if (g10 != null) {
            f54150a.a("mimp", "", g10);
        }
        try {
            A a10 = new A();
            a10.a(context);
            linkedHashMap.put(a10.a(), a10);
            d11 = Result.d(Unit.f60915a);
        } catch (Throwable th3) {
            Result.a aVar3 = Result.f60901b;
            d11 = Result.d(kotlin.f.a(th3));
        }
        Throwable g11 = Result.g(d11);
        if (g11 != null) {
            f54150a.a("isimp", "", g11);
        }
        try {
            C3330z c3330z = new C3330z(context.getFilesDir().getParentFile());
            c3330z.a(context);
            linkedHashMap.put(c3330z.a(), c3330z);
            d12 = Result.d(Unit.f60915a);
        } catch (Throwable th4) {
            Result.a aVar4 = Result.f60901b;
            d12 = Result.d(kotlin.f.a(th4));
        }
        Throwable g12 = Result.g(d12);
        if (g12 != null) {
            f54150a.a("aints", g12);
        }
        try {
            C3326v c3326v = new C3326v();
            c3326v.a(context);
            linkedHashMap.put(c3326v.a(), c3326v);
            d13 = Result.d(Unit.f60915a);
        } catch (Throwable th5) {
            Result.a aVar5 = Result.f60901b;
            d13 = Result.d(kotlin.f.a(th5));
        }
        Throwable g13 = Result.g(d13);
        if (g13 != null) {
            f54150a.a("aexs", g13);
        }
        try {
            H h10 = new H(f54153d.a(), null, 2, null);
            h10.a(context);
            linkedHashMap.put(h10.a(), h10);
            d14 = Result.d(Unit.f60915a);
        } catch (Throwable th6) {
            Result.a aVar6 = Result.f60901b;
            d14 = Result.d(kotlin.f.a(th6));
        }
        Throwable g14 = Result.g(d14);
        if (g14 != null) {
            f54150a.a("alog", g14);
        }
        try {
            d0 d0Var = new d0(f54153d.b(), null, 2, null);
            d0Var.a(context);
            linkedHashMap.put(d0Var.a(), d0Var);
            d15 = Result.d(Unit.f60915a);
        } catch (Throwable th7) {
            Result.a aVar7 = Result.f60901b;
            d15 = Result.d(kotlin.f.a(th7));
        }
        Throwable g15 = Result.g(d15);
        if (g15 != null) {
            f54150a.a("apur", g15);
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.bidmachine.analytics.internal.k$a */
    /* loaded from: classes7.dex */
    public static final class a implements InterfaceC3311f {

        /* renamed from: a  reason: collision with root package name */
        private final String f54154a;

        /* renamed from: b  reason: collision with root package name */
        private final String f54155b;

        public a(String str, String str2) {
            this.f54154a = str;
            this.f54155b = str2;
        }

        @Override // io.bidmachine.analytics.internal.InterfaceC3311f
        public void a(Map map) {
            C3318m.f54161a.a(new Q(null, this.f54154a, this.f54155b, 0L, map, null, 41, null));
        }

        @Override // io.bidmachine.analytics.internal.InterfaceC3311f
        public void a(q0 q0Var) {
            C3318m.f54161a.a(new Q(null, this.f54154a, this.f54155b, 0L, null, q0Var, 25, null));
        }
    }

    public final void a(Context context, AnalyticsConfig analyticsConfig) {
        a(context, analyticsConfig.getSessionId(), f54152c.keySet());
        HashSet hashSet = new HashSet();
        a(analyticsConfig.getSessionId(), analyticsConfig.getMonitorConfigList(), hashSet);
        a(analyticsConfig.getReaderConfigList(), hashSet);
        b(context, analyticsConfig.getSessionId(), hashSet);
    }

    public final Map a(AbstractC3310e.a aVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : f54152c.entrySet()) {
            String str = (String) entry.getKey();
            AbstractC3315j abstractC3315j = (AbstractC3315j) entry.getValue();
            if (abstractC3315j instanceof AbstractC3310e) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                AbstractC3310e abstractC3310e = (AbstractC3310e) abstractC3315j;
                AbstractC3310e.b b10 = abstractC3310e.b();
                if (b10 != null) {
                    linkedHashMap2.put("imd", Integer.valueOf(b10.a()));
                    linkedHashMap2.put("wp", Float.valueOf(b10.b()));
                    linkedHashMap2.put("agency", b10.c());
                }
                AbstractC3310e.b a10 = abstractC3310e.a(aVar);
                if (a10 != null) {
                    linkedHashMap2.put("imimd", Integer.valueOf(a10.a()));
                    linkedHashMap2.put("imwp", Float.valueOf(a10.b()));
                    linkedHashMap2.put("imagency", a10.c());
                }
                linkedHashMap.put(str, linkedHashMap2);
            }
        }
        return linkedHashMap;
    }

    private final void a(String str, List list, Set set) {
        Object d10;
        Unit unit;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String name = ((MonitorConfig) it.next()).getName();
            try {
                Result.a aVar = Result.f60901b;
                AbstractC3315j abstractC3315j = (AbstractC3315j) f54152c.get(name);
                if (abstractC3315j != null) {
                    if (abstractC3315j instanceof AbstractC3312g) {
                        ((AbstractC3312g) abstractC3315j).a(new AbstractC3312g.a(new a(name, str)));
                    }
                    unit = Unit.f60915a;
                } else {
                    unit = null;
                }
                d10 = Result.d(unit);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            if (Result.j(d10)) {
                Unit unit2 = (Unit) d10;
                set.add(name);
            }
            Throwable g10 = Result.g(d10);
            if (g10 != null) {
                f54150a.a(name, str, g10);
            }
        }
    }

    private final void a(List list, Set set) {
        Object d10;
        Unit unit;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ReaderConfig readerConfig = (ReaderConfig) it.next();
            String name = readerConfig.getName();
            try {
                Result.a aVar = Result.f60901b;
                AbstractC3315j abstractC3315j = (AbstractC3315j) f54152c.get(name);
                if (abstractC3315j != null) {
                    if (abstractC3315j instanceof AbstractC3314i) {
                        ((AbstractC3314i) abstractC3315j).a((Object) new AbstractC3314i.a(readerConfig.getInterval(), readerConfig.getRules(), new b(name)));
                    }
                    unit = Unit.f60915a;
                } else {
                    unit = null;
                }
                d10 = Result.d(unit);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            if (Result.j(d10)) {
                Unit unit2 = (Unit) d10;
                set.add(name);
            }
            Throwable g10 = Result.g(d10);
            if (g10 != null) {
                f54150a.a(name, g10);
            }
        }
    }

    private final void a(Context context, String str, Set set) {
        Object d10;
        Context applicationContext = context.getApplicationContext();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            AbstractC3315j abstractC3315j = (AbstractC3315j) f54152c.get((String) it.next());
            if (abstractC3315j != null) {
                try {
                    Result.a aVar = Result.f60901b;
                    abstractC3315j.b(applicationContext);
                    d10 = Result.d(Unit.f60915a);
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(kotlin.f.a(th2));
                }
                Throwable g10 = Result.g(d10);
                if (g10 != null) {
                    f54150a.a(abstractC3315j, str, g10);
                }
            }
        }
    }

    private final void a(AbstractC3315j abstractC3315j, String str, Throwable th2) {
        if (abstractC3315j instanceof AbstractC3312g) {
            a(abstractC3315j.a(), str, th2);
        } else if (abstractC3315j instanceof AbstractC3314i) {
            a(abstractC3315j.a(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, String str2, Throwable th2) {
        C3318m.f54161a.a(new Q(null, str, str2, 0L, null, new q0(str, q0.a.MONITOR_INVALID, s0.a(th2)), 25, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, Throwable th2) {
        C3318m.f54161a.a(new h0(null, str, 0L, "", new h0.a("", ""), new q0(str, q0.a.READER_INVALID, s0.a(th2)), false, 69, null));
    }
}
