package dd;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
@Metadata
/* loaded from: classes6.dex */
public final class k implements b {

    /* renamed from: b  reason: collision with root package name */
    public static b f50342b;

    /* renamed from: c  reason: collision with root package name */
    public static d f50343c;

    /* renamed from: a  reason: collision with root package name */
    public static final k f50341a = new k();

    /* renamed from: d  reason: collision with root package name */
    public static final Object f50344d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public static final ms.i f50345e = kotlin.c.b(new Function0() { // from class: dd.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return k.f();
        }
    });

    public static final HashMap f() {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Function0() { // from class: dd.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k.h();
            }
        });
        arrayList.add(new Function0() { // from class: dd.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k.j();
            }
        });
        Unit unit = Unit.f60915a;
        hashMap.put("v1", arrayList);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Function0() { // from class: dd.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k.k();
            }
        });
        arrayList2.add(new Function0() { // from class: dd.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k.l();
            }
        });
        hashMap.put("v2", arrayList2);
        return hashMap;
    }

    public static void g(String str, Object obj) {
        String str2;
        d dVar = f50343c;
        if (dVar != null) {
            StringBuilder sb2 = new StringBuilder("tag=");
            b bVar = f50342b;
            if (bVar != null) {
                str2 = bVar.tag();
            } else {
                str2 = null;
            }
            sb2.append(str2);
            sb2.append(",value=");
            sb2.append(obj);
            sb2.append('.');
            dVar.b(str, sb2.toString());
        }
    }

    public static final b h() {
        return new y.a();
    }

    public static void i(String str, Object obj) {
        String str2;
        if (f50342b == null) {
            d dVar = f50343c;
            if (dVar != null) {
                dVar.onError("error_persistentCache_no_init");
                return;
            }
            return;
        }
        d dVar2 = f50343c;
        if (dVar2 != null) {
            StringBuilder sb2 = new StringBuilder("tag=");
            b bVar = f50342b;
            if (bVar != null) {
                str2 = bVar.tag();
            } else {
                str2 = null;
            }
            sb2.append(str2);
            sb2.append(",value=");
            sb2.append(obj);
            sb2.append('.');
            dVar2.c(str, sb2.toString());
        }
    }

    public static final b j() {
        return new y.b();
    }

    public static final b k() {
        return new z.b();
    }

    public static final b l() {
        return new y.b();
    }

    @Override // dd.b
    public <T> List<T> a(String key, Class<T> clazz, List<? extends T> list) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        b bVar = f50342b;
        Collection collection = list;
        if (bVar != null) {
            Collection a10 = bVar.a(key, clazz, list);
            collection = list;
            if (a10 != null) {
                collection = (List<T>) a10;
            }
        }
        f50341a.getClass();
        g(key, collection);
        return (List<T>) collection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // dd.b
    public <T> T b(String key, Class<T> clazz, T t10) {
        Object b10;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        b bVar = f50342b;
        if (bVar != null && (b10 = bVar.b(key, clazz, t10)) != 0) {
            t10 = b10;
        }
        f50341a.getClass();
        g(key, t10);
        return t10;
    }

    @Override // dd.b
    public boolean c(Context context, boolean z10, d dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        return m(context, "v1", z10, dVar);
    }

    @Override // dd.b
    public void d(String key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        b bVar = f50342b;
        if (bVar != null) {
            bVar.d(key, obj);
            Unit unit = Unit.f60915a;
            f50341a.getClass();
            i(key, obj);
        }
    }

    @Override // dd.b
    public void e(String key, List<? extends Object> list) {
        Intrinsics.checkNotNullParameter(key, "key");
        b bVar = f50342b;
        if (bVar != null) {
            bVar.e(key, list);
            Unit unit = Unit.f60915a;
            f50341a.getClass();
            i(key, list);
        }
    }

    @Override // dd.a
    public boolean getBoolean(String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        b bVar = f50342b;
        if (bVar != null) {
            z10 = bVar.getBoolean(key, z10);
        }
        k kVar = f50341a;
        Boolean valueOf = Boolean.valueOf(z10);
        kVar.getClass();
        g(key, valueOf);
        return z10;
    }

    @Override // dd.a
    public int getInt(String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        b bVar = f50342b;
        if (bVar != null) {
            i10 = bVar.getInt(key, i10);
        }
        k kVar = f50341a;
        Integer valueOf = Integer.valueOf(i10);
        kVar.getClass();
        g(key, valueOf);
        return i10;
    }

    @Override // dd.a
    public long getLong(String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        b bVar = f50342b;
        if (bVar != null) {
            j10 = bVar.getLong(key, j10);
        }
        k kVar = f50341a;
        Long valueOf = Long.valueOf(j10);
        kVar.getClass();
        g(key, valueOf);
        return j10;
    }

    @Override // dd.a
    public String getString(String key, String str) {
        String string;
        Intrinsics.checkNotNullParameter(key, "key");
        b bVar = f50342b;
        if (bVar != null && (string = bVar.getString(key, str)) != null) {
            str = string;
        }
        f50341a.getClass();
        g(key, str);
        return str;
    }

    public final boolean m(Context context, String cacheVersion, boolean z10, d dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cacheVersion, "cacheVersion");
        if (f50342b != null) {
            return true;
        }
        synchronized (f50344d) {
            try {
                f50343c = dVar;
                if (f50342b != null) {
                    return true;
                }
                f50341a.getClass();
                ms.i iVar = f50345e;
                Object obj = ((HashMap) iVar.getValue()).get(cacheVersion);
                if (obj == null) {
                    obj = CollectionsKt.n();
                }
                List<Function0> list = (List) obj;
                if (list.isEmpty()) {
                    String str = "init failed -> cacheVersion=" + cacheVersion + " no found, use CacheVersion.v1 instead.";
                    d dVar2 = f50343c;
                    if (dVar2 != null) {
                        dVar2.onError(str);
                    }
                    Object obj2 = ((HashMap) iVar.getValue()).get("v1");
                    if (obj2 == null) {
                        obj2 = CollectionsKt.n();
                    }
                    list = (List) obj2;
                }
                if (list.isEmpty()) {
                    d dVar3 = f50343c;
                    if (dVar3 != null) {
                        dVar3.onError("init failed -> cacheVersion=v1, mCacheList.isEmpty()");
                    }
                    return false;
                }
                for (Function0 function0 : list) {
                    b bVar = (b) function0.invoke();
                    if (bVar.c(context, z10, dVar)) {
                        f50342b = bVar;
                        d dVar4 = f50343c;
                        if (dVar4 != null) {
                            dVar4.a(cacheVersion, bVar.tag());
                        }
                        return true;
                    }
                }
                f50341a.getClass();
                d dVar5 = f50343c;
                if (dVar5 != null) {
                    dVar5.onError("init PersistentCache fail -> all cache init failed.");
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // dd.a
    public void putBoolean(String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        b bVar = f50342b;
        if (bVar != null) {
            bVar.putBoolean(key, z10);
            Unit unit = Unit.f60915a;
            k kVar = f50341a;
            Boolean valueOf = Boolean.valueOf(z10);
            kVar.getClass();
            i(key, valueOf);
        }
    }

    @Override // dd.a
    public void putInt(String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        b bVar = f50342b;
        if (bVar != null) {
            bVar.putInt(key, i10);
            Unit unit = Unit.f60915a;
            k kVar = f50341a;
            Integer valueOf = Integer.valueOf(i10);
            kVar.getClass();
            i(key, valueOf);
        }
    }

    @Override // dd.a
    public void putLong(String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        b bVar = f50342b;
        if (bVar != null) {
            bVar.putLong(key, j10);
            Unit unit = Unit.f60915a;
            k kVar = f50341a;
            Long valueOf = Long.valueOf(j10);
            kVar.getClass();
            i(key, valueOf);
        }
    }

    @Override // dd.a
    public void putString(String key, String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        b bVar = f50342b;
        if (bVar != null) {
            bVar.putString(key, str);
            Unit unit = Unit.f60915a;
            f50341a.getClass();
            i(key, str);
        }
    }

    @Override // dd.b
    public String tag() {
        return "PersistentCache";
    }
}
