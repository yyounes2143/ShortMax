package dd;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata
/* loaded from: classes6.dex */
public final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    public static final c f50337a = new c();

    /* renamed from: b  reason: collision with root package name */
    public static final ConcurrentHashMap f50338b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    public static d f50339c;

    public static Object f(String str, Object obj) {
        Object obj2 = f50338b.get(str);
        if (obj2 != null) {
            obj = obj2;
        }
        d dVar = f50339c;
        if (dVar != null) {
            dVar.b(str, obj);
        }
        return obj;
    }

    public static void g(String str, Object obj) {
        if (obj == null) {
            f50338b.remove(str);
        } else {
            f50338b.put(str, obj);
        }
        d dVar = f50339c;
        if (dVar != null) {
            dVar.c(str, obj);
        }
    }

    public void d(String key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, obj);
    }

    public void e(String key, List<? extends Object> list) {
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, list);
    }

    @Override // dd.a
    public boolean getBoolean(String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Boolean bool = (Boolean) f(key, Boolean.valueOf(z10));
        if (bool != null) {
            return bool.booleanValue();
        }
        return z10;
    }

    @Override // dd.a
    public int getInt(String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Integer num = (Integer) f(key, Integer.valueOf(i10));
        if (num != null) {
            return num.intValue();
        }
        return i10;
    }

    @Override // dd.a
    public long getLong(String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Long l10 = (Long) f(key, Long.valueOf(j10));
        if (l10 != null) {
            return l10.longValue();
        }
        return j10;
    }

    @Override // dd.a
    public String getString(String key, String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (String) f(key, str);
    }

    public Object h(String key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        return f(key, obj);
    }

    public <T> List<T> i(String key, List<? extends T> list) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            List<? extends T> list2 = (List) f50338b.get(key);
            if (list2 != null) {
                list = list2;
            }
        } catch (Exception unused) {
        }
        d dVar = f50339c;
        if (dVar != null) {
            dVar.b(key, list);
        }
        return (List<T>) list;
    }

    public final void j(d dVar) {
        f50339c = dVar;
    }

    @Override // dd.a
    public void putBoolean(String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, Boolean.valueOf(z10));
    }

    @Override // dd.a
    public void putInt(String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, Integer.valueOf(i10));
    }

    @Override // dd.a
    public void putLong(String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, Long.valueOf(j10));
    }

    @Override // dd.a
    public void putString(String key, String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, str);
    }
}
