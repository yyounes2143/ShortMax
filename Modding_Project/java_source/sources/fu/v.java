package fu;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ParameterHandler.java */
/* loaded from: classes8.dex */
public abstract class v<T> {

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    class a extends v<Iterable<T>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // fu.v
        /* renamed from: d */
        public void a(a0 a0Var, Iterable<T> iterable) throws IOException {
            if (iterable == null) {
                return;
            }
            for (T t10 : iterable) {
                v.this.a(a0Var, t10);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    class b extends v<Object> {
        b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // fu.v
        void a(a0 a0Var, Object obj) throws IOException {
            if (obj == null) {
                return;
            }
            int length = Array.getLength(obj);
            for (int i10 = 0; i10 < length; i10++) {
                v.this.a(a0Var, Array.get(obj, i10));
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class c<T> extends v<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f52084a;

        /* renamed from: b  reason: collision with root package name */
        private final int f52085b;

        /* renamed from: c  reason: collision with root package name */
        private final fu.h<T, RequestBody> f52086c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Method method, int i10, fu.h<T, RequestBody> hVar) {
            this.f52084a = method;
            this.f52085b = i10;
            this.f52086c = hVar;
        }

        @Override // fu.v
        void a(a0 a0Var, T t10) {
            if (t10 != null) {
                try {
                    a0Var.l(this.f52086c.convert(t10));
                    return;
                } catch (IOException e10) {
                    Method method = this.f52084a;
                    int i10 = this.f52085b;
                    throw h0.q(method, e10, i10, "Unable to convert " + t10 + " to RequestBody", new Object[0]);
                }
            }
            throw h0.p(this.f52084a, this.f52085b, "Body parameter value must not be null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class d<T> extends v<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f52087a;

        /* renamed from: b  reason: collision with root package name */
        private final fu.h<T, String> f52088b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f52089c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(String str, fu.h<T, String> hVar, boolean z10) {
            Objects.requireNonNull(str, "name == null");
            this.f52087a = str;
            this.f52088b = hVar;
            this.f52089c = z10;
        }

        @Override // fu.v
        void a(a0 a0Var, T t10) throws IOException {
            String convert;
            if (t10 == null || (convert = this.f52088b.convert(t10)) == null) {
                return;
            }
            a0Var.a(this.f52087a, convert, this.f52089c);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class e<T> extends v<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f52090a;

        /* renamed from: b  reason: collision with root package name */
        private final int f52091b;

        /* renamed from: c  reason: collision with root package name */
        private final fu.h<T, String> f52092c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f52093d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(Method method, int i10, fu.h<T, String> hVar, boolean z10) {
            this.f52090a = method;
            this.f52091b = i10;
            this.f52092c = hVar;
            this.f52093d = z10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // fu.v
        /* renamed from: d */
        public void a(a0 a0Var, Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            String convert = this.f52092c.convert(value);
                            if (convert != null) {
                                a0Var.a(key, convert, this.f52093d);
                            } else {
                                Method method = this.f52090a;
                                int i10 = this.f52091b;
                                throw h0.p(method, i10, "Field map value '" + value + "' converted to null by " + this.f52092c.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.f52090a;
                            int i11 = this.f52091b;
                            throw h0.p(method2, i11, "Field map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw h0.p(this.f52090a, this.f52091b, "Field map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw h0.p(this.f52090a, this.f52091b, "Field map was null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class f<T> extends v<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f52094a;

        /* renamed from: b  reason: collision with root package name */
        private final fu.h<T, String> f52095b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f52096c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public f(String str, fu.h<T, String> hVar, boolean z10) {
            Objects.requireNonNull(str, "name == null");
            this.f52094a = str;
            this.f52095b = hVar;
            this.f52096c = z10;
        }

        @Override // fu.v
        void a(a0 a0Var, T t10) throws IOException {
            String convert;
            if (t10 == null || (convert = this.f52095b.convert(t10)) == null) {
                return;
            }
            a0Var.b(this.f52094a, convert, this.f52096c);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class g<T> extends v<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f52097a;

        /* renamed from: b  reason: collision with root package name */
        private final int f52098b;

        /* renamed from: c  reason: collision with root package name */
        private final fu.h<T, String> f52099c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f52100d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public g(Method method, int i10, fu.h<T, String> hVar, boolean z10) {
            this.f52097a = method;
            this.f52098b = i10;
            this.f52099c = hVar;
            this.f52100d = z10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // fu.v
        /* renamed from: d */
        public void a(a0 a0Var, Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            a0Var.b(key, this.f52099c.convert(value), this.f52100d);
                        } else {
                            Method method = this.f52097a;
                            int i10 = this.f52098b;
                            throw h0.p(method, i10, "Header map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw h0.p(this.f52097a, this.f52098b, "Header map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw h0.p(this.f52097a, this.f52098b, "Header map was null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class h extends v<Headers> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f52101a;

        /* renamed from: b  reason: collision with root package name */
        private final int f52102b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public h(Method method, int i10) {
            this.f52101a = method;
            this.f52102b = i10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // fu.v
        /* renamed from: d */
        public void a(a0 a0Var, Headers headers) {
            if (headers != null) {
                a0Var.c(headers);
                return;
            }
            throw h0.p(this.f52101a, this.f52102b, "Headers parameter must not be null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class i<T> extends v<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f52103a;

        /* renamed from: b  reason: collision with root package name */
        private final int f52104b;

        /* renamed from: c  reason: collision with root package name */
        private final Headers f52105c;

        /* renamed from: d  reason: collision with root package name */
        private final fu.h<T, RequestBody> f52106d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public i(Method method, int i10, Headers headers, fu.h<T, RequestBody> hVar) {
            this.f52103a = method;
            this.f52104b = i10;
            this.f52105c = headers;
            this.f52106d = hVar;
        }

        @Override // fu.v
        void a(a0 a0Var, T t10) {
            if (t10 == null) {
                return;
            }
            try {
                a0Var.d(this.f52105c, this.f52106d.convert(t10));
            } catch (IOException e10) {
                Method method = this.f52103a;
                int i10 = this.f52104b;
                throw h0.p(method, i10, "Unable to convert " + t10 + " to RequestBody", e10);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class j<T> extends v<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f52107a;

        /* renamed from: b  reason: collision with root package name */
        private final int f52108b;

        /* renamed from: c  reason: collision with root package name */
        private final fu.h<T, RequestBody> f52109c;

        /* renamed from: d  reason: collision with root package name */
        private final String f52110d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public j(Method method, int i10, fu.h<T, RequestBody> hVar, String str) {
            this.f52107a = method;
            this.f52108b = i10;
            this.f52109c = hVar;
            this.f52110d = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // fu.v
        /* renamed from: d */
        public void a(a0 a0Var, Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            a0Var.d(Headers.f("Content-Disposition", "form-data; name=\"" + key + "\"", "Content-Transfer-Encoding", this.f52110d), this.f52109c.convert(value));
                        } else {
                            Method method = this.f52107a;
                            int i10 = this.f52108b;
                            throw h0.p(method, i10, "Part map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw h0.p(this.f52107a, this.f52108b, "Part map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw h0.p(this.f52107a, this.f52108b, "Part map was null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class k<T> extends v<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f52111a;

        /* renamed from: b  reason: collision with root package name */
        private final int f52112b;

        /* renamed from: c  reason: collision with root package name */
        private final String f52113c;

        /* renamed from: d  reason: collision with root package name */
        private final fu.h<T, String> f52114d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f52115e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public k(Method method, int i10, String str, fu.h<T, String> hVar, boolean z10) {
            this.f52111a = method;
            this.f52112b = i10;
            Objects.requireNonNull(str, "name == null");
            this.f52113c = str;
            this.f52114d = hVar;
            this.f52115e = z10;
        }

        @Override // fu.v
        void a(a0 a0Var, T t10) throws IOException {
            if (t10 != null) {
                a0Var.f(this.f52113c, this.f52114d.convert(t10), this.f52115e);
                return;
            }
            Method method = this.f52111a;
            int i10 = this.f52112b;
            throw h0.p(method, i10, "Path parameter \"" + this.f52113c + "\" value must not be null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class l<T> extends v<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f52116a;

        /* renamed from: b  reason: collision with root package name */
        private final fu.h<T, String> f52117b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f52118c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public l(String str, fu.h<T, String> hVar, boolean z10) {
            Objects.requireNonNull(str, "name == null");
            this.f52116a = str;
            this.f52117b = hVar;
            this.f52118c = z10;
        }

        @Override // fu.v
        void a(a0 a0Var, T t10) throws IOException {
            String convert;
            if (t10 == null || (convert = this.f52117b.convert(t10)) == null) {
                return;
            }
            a0Var.g(this.f52116a, convert, this.f52118c);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class m<T> extends v<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f52119a;

        /* renamed from: b  reason: collision with root package name */
        private final int f52120b;

        /* renamed from: c  reason: collision with root package name */
        private final fu.h<T, String> f52121c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f52122d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public m(Method method, int i10, fu.h<T, String> hVar, boolean z10) {
            this.f52119a = method;
            this.f52120b = i10;
            this.f52121c = hVar;
            this.f52122d = z10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // fu.v
        /* renamed from: d */
        public void a(a0 a0Var, Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            String convert = this.f52121c.convert(value);
                            if (convert != null) {
                                a0Var.g(key, convert, this.f52122d);
                            } else {
                                Method method = this.f52119a;
                                int i10 = this.f52120b;
                                throw h0.p(method, i10, "Query map value '" + value + "' converted to null by " + this.f52121c.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.f52119a;
                            int i11 = this.f52120b;
                            throw h0.p(method2, i11, "Query map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw h0.p(this.f52119a, this.f52120b, "Query map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw h0.p(this.f52119a, this.f52120b, "Query map was null", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class n<T> extends v<T> {

        /* renamed from: a  reason: collision with root package name */
        private final fu.h<T, String> f52123a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f52124b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public n(fu.h<T, String> hVar, boolean z10) {
            this.f52123a = hVar;
            this.f52124b = z10;
        }

        @Override // fu.v
        void a(a0 a0Var, T t10) throws IOException {
            if (t10 == null) {
                return;
            }
            a0Var.g(this.f52123a.convert(t10), null, this.f52124b);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class o extends v<MultipartBody.Part> {

        /* renamed from: a  reason: collision with root package name */
        static final o f52125a = new o();

        private o() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // fu.v
        /* renamed from: d */
        public void a(a0 a0Var, MultipartBody.Part part) {
            if (part != null) {
                a0Var.e(part);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class p extends v<Object> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f52126a;

        /* renamed from: b  reason: collision with root package name */
        private final int f52127b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public p(Method method, int i10) {
            this.f52126a = method;
            this.f52127b = i10;
        }

        @Override // fu.v
        void a(a0 a0Var, Object obj) {
            if (obj != null) {
                a0Var.m(obj);
                return;
            }
            throw h0.p(this.f52126a, this.f52127b, "@Url parameter is null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes8.dex */
    static final class q<T> extends v<T> {

        /* renamed from: a  reason: collision with root package name */
        final Class<T> f52128a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public q(Class<T> cls) {
            this.f52128a = cls;
        }

        @Override // fu.v
        void a(a0 a0Var, T t10) {
            a0Var.h(this.f52128a, t10);
        }
    }

    v() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(a0 a0Var, T t10) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final v<Object> b() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final v<Iterable<T>> c() {
        return new a();
    }
}
