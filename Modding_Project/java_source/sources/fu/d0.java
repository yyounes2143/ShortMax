package fu;

import fu.b;
import fu.e;
import fu.h;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
/* compiled from: Retrofit.java */
/* loaded from: classes8.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<Method, Object> f52003a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    final Call.Factory f52004b;

    /* renamed from: c  reason: collision with root package name */
    final HttpUrl f52005c;

    /* renamed from: d  reason: collision with root package name */
    final List<h.a> f52006d;

    /* renamed from: e  reason: collision with root package name */
    final int f52007e;

    /* renamed from: f  reason: collision with root package name */
    final List<e.a> f52008f;

    /* renamed from: g  reason: collision with root package name */
    final int f52009g;

    /* renamed from: h  reason: collision with root package name */
    final Executor f52010h;

    /* renamed from: i  reason: collision with root package name */
    final boolean f52011i;

    /* compiled from: Retrofit.java */
    /* loaded from: classes8.dex */
    class a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        private final Object[] f52012a = new Object[0];

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f52013b;

        a(Class cls) {
            this.f52013b = cls;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (objArr == null) {
                objArr = this.f52012a;
            }
            x xVar = w.f52130b;
            if (xVar.c(method)) {
                return xVar.b(method, this.f52013b, obj, objArr);
            }
            return d0.this.c(this.f52013b, method).a(obj, objArr);
        }
    }

    /* compiled from: Retrofit.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Call.Factory f52015a;

        /* renamed from: b  reason: collision with root package name */
        private HttpUrl f52016b;

        /* renamed from: c  reason: collision with root package name */
        private final List<h.a> f52017c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private final List<e.a> f52018d = new ArrayList();

        /* renamed from: e  reason: collision with root package name */
        private Executor f52019e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f52020f;

        public b a(e.a aVar) {
            List<e.a> list = this.f52018d;
            Objects.requireNonNull(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        public b b(h.a aVar) {
            List<h.a> list = this.f52017c;
            Objects.requireNonNull(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        public b c(String str) {
            Objects.requireNonNull(str, "baseUrl == null");
            return d(HttpUrl.h(str));
        }

        public b d(HttpUrl httpUrl) {
            Objects.requireNonNull(httpUrl, "baseUrl == null");
            List<String> n10 = httpUrl.n();
            if ("".equals(n10.get(n10.size() - 1))) {
                this.f52016b = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + httpUrl);
        }

        public d0 e() {
            if (this.f52016b != null) {
                Call.Factory factory = this.f52015a;
                if (factory == null) {
                    factory = new OkHttpClient();
                }
                Call.Factory factory2 = factory;
                Executor executor = this.f52019e;
                if (executor == null) {
                    executor = w.f52129a;
                }
                Executor executor2 = executor;
                c cVar = w.f52131c;
                ArrayList arrayList = new ArrayList(this.f52018d);
                List<? extends e.a> a10 = cVar.a(executor2);
                arrayList.addAll(a10);
                List<? extends h.a> b10 = cVar.b();
                int size = b10.size();
                ArrayList arrayList2 = new ArrayList(this.f52017c.size() + 1 + size);
                arrayList2.add(new fu.b());
                arrayList2.addAll(this.f52017c);
                arrayList2.addAll(b10);
                return new d0(factory2, this.f52016b, Collections.unmodifiableList(arrayList2), size, Collections.unmodifiableList(arrayList), a10.size(), executor2, this.f52020f);
            }
            throw new IllegalStateException("Base URL required.");
        }

        public b f(Call.Factory factory) {
            Objects.requireNonNull(factory, "factory == null");
            this.f52015a = factory;
            return this;
        }

        public b g(OkHttpClient okHttpClient) {
            Objects.requireNonNull(okHttpClient, "client == null");
            return f(okHttpClient);
        }
    }

    d0(Call.Factory factory, HttpUrl httpUrl, List<h.a> list, int i10, List<e.a> list2, int i11, Executor executor, boolean z10) {
        this.f52004b = factory;
        this.f52005c = httpUrl;
        this.f52006d = list;
        this.f52007e = i10;
        this.f52008f = list2;
        this.f52009g = i11;
        this.f52010h = executor;
        this.f52011i = z10;
    }

    private void j(Class<?> cls) {
        Method[] declaredMethods;
        if (cls.isInterface()) {
            ArrayDeque arrayDeque = new ArrayDeque(1);
            arrayDeque.add(cls);
            while (!arrayDeque.isEmpty()) {
                Class<?> cls2 = (Class) arrayDeque.removeFirst();
                if (cls2.getTypeParameters().length != 0) {
                    StringBuilder sb2 = new StringBuilder("Type parameters are unsupported on ");
                    sb2.append(cls2.getName());
                    if (cls2 != cls) {
                        sb2.append(" which is an interface of ");
                        sb2.append(cls.getName());
                    }
                    throw new IllegalArgumentException(sb2.toString());
                }
                Collections.addAll(arrayDeque, cls2.getInterfaces());
            }
            if (this.f52011i) {
                x xVar = w.f52130b;
                for (Method method : cls.getDeclaredMethods()) {
                    if (!xVar.c(method) && !Modifier.isStatic(method.getModifiers()) && !method.isSynthetic()) {
                        c(cls, method);
                    }
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("API declarations must be interfaces.");
    }

    public e<?, ?> a(Type type, Annotation[] annotationArr) {
        return d(null, type, annotationArr);
    }

    public <T> T b(Class<T> cls) {
        j(cls);
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(cls));
    }

    e0<?> c(Class<?> cls, Method method) {
        while (true) {
            Object obj = this.f52003a.get(method);
            if (obj instanceof e0) {
                return (e0) obj;
            }
            if (obj == null) {
                Object obj2 = new Object();
                synchronized (obj2) {
                    try {
                        obj = this.f52003a.putIfAbsent(method, obj2);
                        if (obj == null) {
                            e0<?> b10 = e0.b(this, cls, method);
                            this.f52003a.put(method, b10);
                            return b10;
                        }
                    } finally {
                    }
                }
            }
            synchronized (obj) {
                try {
                    Object obj3 = this.f52003a.get(method);
                    if (obj3 != null) {
                        return (e0) obj3;
                    }
                } finally {
                }
            }
        }
    }

    public e<?, ?> d(e.a aVar, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int indexOf = this.f52008f.indexOf(aVar) + 1;
        int size = this.f52008f.size();
        for (int i10 = indexOf; i10 < size; i10++) {
            e<?, ?> a10 = this.f52008f.get(i10).a(type, annotationArr, this);
            if (a10 != null) {
                return a10;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate call adapter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i11 = 0; i11 < indexOf; i11++) {
                sb2.append("\n   * ");
                sb2.append(this.f52008f.get(i11).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f52008f.size();
        while (indexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(this.f52008f.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public <T> h<T, RequestBody> e(h.a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "parameterAnnotations == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        int indexOf = this.f52006d.indexOf(aVar) + 1;
        int size = this.f52006d.size();
        for (int i10 = indexOf; i10 < size; i10++) {
            h<T, RequestBody> hVar = (h<T, RequestBody>) this.f52006d.get(i10).c(type, annotationArr, annotationArr2, this);
            if (hVar != null) {
                return hVar;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate RequestBody converter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i11 = 0; i11 < indexOf; i11++) {
                sb2.append("\n   * ");
                sb2.append(this.f52006d.get(i11).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f52006d.size();
        while (indexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(this.f52006d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public <T> h<ResponseBody, T> f(h.a aVar, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int indexOf = this.f52006d.indexOf(aVar) + 1;
        int size = this.f52006d.size();
        for (int i10 = indexOf; i10 < size; i10++) {
            h<ResponseBody, T> hVar = (h<ResponseBody, T>) this.f52006d.get(i10).d(type, annotationArr, this);
            if (hVar != null) {
                return hVar;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate ResponseBody converter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i11 = 0; i11 < indexOf; i11++) {
                sb2.append("\n   * ");
                sb2.append(this.f52006d.get(i11).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f52006d.size();
        while (indexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(this.f52006d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public <T> h<T, RequestBody> g(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return e(null, type, annotationArr, annotationArr2);
    }

    public <T> h<ResponseBody, T> h(Type type, Annotation[] annotationArr) {
        return f(null, type, annotationArr);
    }

    public <T> h<T, String> i(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int size = this.f52006d.size();
        for (int i10 = 0; i10 < size; i10++) {
            h<T, String> hVar = (h<T, String>) this.f52006d.get(i10).e(type, annotationArr, this);
            if (hVar != null) {
                return hVar;
            }
        }
        return b.d.f51959a;
    }
}
