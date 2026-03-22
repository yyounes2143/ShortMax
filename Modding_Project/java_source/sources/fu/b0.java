package fu;

import androidx.browser.trusted.sharing.ShareTarget;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import fu.v;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RequestFactory.java */
/* loaded from: classes8.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f51962a;

    /* renamed from: b  reason: collision with root package name */
    private final Method f51963b;

    /* renamed from: c  reason: collision with root package name */
    private final HttpUrl f51964c;

    /* renamed from: d  reason: collision with root package name */
    final String f51965d;

    /* renamed from: e  reason: collision with root package name */
    private final String f51966e;

    /* renamed from: f  reason: collision with root package name */
    private final Headers f51967f;

    /* renamed from: g  reason: collision with root package name */
    private final MediaType f51968g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f51969h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f51970i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f51971j;

    /* renamed from: k  reason: collision with root package name */
    private final v<?>[] f51972k;

    /* renamed from: l  reason: collision with root package name */
    final boolean f51973l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RequestFactory.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: y  reason: collision with root package name */
        private static final Pattern f51974y = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

        /* renamed from: z  reason: collision with root package name */
        private static final Pattern f51975z = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

        /* renamed from: a  reason: collision with root package name */
        final d0 f51976a;

        /* renamed from: b  reason: collision with root package name */
        final Class<?> f51977b;

        /* renamed from: c  reason: collision with root package name */
        final Method f51978c;

        /* renamed from: d  reason: collision with root package name */
        final Annotation[] f51979d;

        /* renamed from: e  reason: collision with root package name */
        final Annotation[][] f51980e;

        /* renamed from: f  reason: collision with root package name */
        final Type[] f51981f;

        /* renamed from: g  reason: collision with root package name */
        boolean f51982g;

        /* renamed from: h  reason: collision with root package name */
        boolean f51983h;

        /* renamed from: i  reason: collision with root package name */
        boolean f51984i;

        /* renamed from: j  reason: collision with root package name */
        boolean f51985j;

        /* renamed from: k  reason: collision with root package name */
        boolean f51986k;

        /* renamed from: l  reason: collision with root package name */
        boolean f51987l;

        /* renamed from: m  reason: collision with root package name */
        boolean f51988m;

        /* renamed from: n  reason: collision with root package name */
        boolean f51989n;

        /* renamed from: o  reason: collision with root package name */
        String f51990o;

        /* renamed from: p  reason: collision with root package name */
        boolean f51991p;

        /* renamed from: q  reason: collision with root package name */
        boolean f51992q;

        /* renamed from: r  reason: collision with root package name */
        boolean f51993r;

        /* renamed from: s  reason: collision with root package name */
        String f51994s;

        /* renamed from: t  reason: collision with root package name */
        Headers f51995t;

        /* renamed from: u  reason: collision with root package name */
        MediaType f51996u;

        /* renamed from: v  reason: collision with root package name */
        Set<String> f51997v;

        /* renamed from: w  reason: collision with root package name */
        v<?>[] f51998w;

        /* renamed from: x  reason: collision with root package name */
        boolean f51999x;

        a(d0 d0Var, Class<?> cls, Method method) {
            this.f51976a = d0Var;
            this.f51977b = cls;
            this.f51978c = method;
            this.f51979d = method.getAnnotations();
            this.f51981f = method.getGenericParameterTypes();
            this.f51980e = method.getParameterAnnotations();
        }

        private static Class<?> a(Class<?> cls) {
            if (Boolean.TYPE == cls) {
                return Boolean.class;
            }
            if (Byte.TYPE == cls) {
                return Byte.class;
            }
            if (Character.TYPE == cls) {
                return Character.class;
            }
            if (Double.TYPE == cls) {
                return Double.class;
            }
            if (Float.TYPE == cls) {
                return Float.class;
            }
            if (Integer.TYPE == cls) {
                return Integer.class;
            }
            if (Long.TYPE == cls) {
                return Long.class;
            }
            if (Short.TYPE == cls) {
                return Short.class;
            }
            return cls;
        }

        private Headers c(String[] strArr, boolean z10) {
            Headers.Builder builder = new Headers.Builder();
            for (String str : strArr) {
                int indexOf = str.indexOf(58);
                if (indexOf != -1 && indexOf != 0 && indexOf != str.length() - 1) {
                    String substring = str.substring(0, indexOf);
                    String trim = str.substring(indexOf + 1).trim();
                    if (CommonGatewayClient.HEADER_CONTENT_TYPE.equalsIgnoreCase(substring)) {
                        try {
                            this.f51996u = MediaType.e(trim);
                        } catch (IllegalArgumentException e10) {
                            throw h0.o(this.f51978c, e10, "Malformed content type: %s", trim);
                        }
                    } else if (z10) {
                        builder.e(substring, trim);
                    } else {
                        builder.a(substring, trim);
                    }
                } else {
                    throw h0.n(this.f51978c, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
            }
            return builder.f();
        }

        private void d(String str, String str2, boolean z10) {
            String str3 = this.f51990o;
            if (str3 == null) {
                this.f51990o = str;
                this.f51991p = z10;
                if (str2.isEmpty()) {
                    return;
                }
                int indexOf = str2.indexOf(63);
                if (indexOf != -1 && indexOf < str2.length() - 1) {
                    String substring = str2.substring(indexOf + 1);
                    if (f51974y.matcher(substring).find()) {
                        throw h0.n(this.f51978c, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
                    }
                }
                this.f51994s = str2;
                this.f51997v = h(str2);
                return;
            }
            throw h0.n(this.f51978c, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
        }

        private void e(Annotation annotation) {
            if (annotation instanceof ju.b) {
                d("DELETE", ((ju.b) annotation).value(), false);
            } else if (annotation instanceof ju.f) {
                d(ShareTarget.METHOD_GET, ((ju.f) annotation).value(), false);
            } else if (annotation instanceof ju.g) {
                d("HEAD", ((ju.g) annotation).value(), false);
            } else if (annotation instanceof ju.n) {
                d("PATCH", ((ju.n) annotation).value(), true);
            } else if (annotation instanceof ju.o) {
                d(ShareTarget.METHOD_POST, ((ju.o) annotation).value(), true);
            } else if (annotation instanceof ju.p) {
                d("PUT", ((ju.p) annotation).value(), true);
            } else if (annotation instanceof ju.m) {
                d("OPTIONS", ((ju.m) annotation).value(), false);
            } else if (annotation instanceof ju.h) {
                ju.h hVar = (ju.h) annotation;
                d(hVar.method(), hVar.path(), hVar.hasBody());
            } else if (annotation instanceof ju.k) {
                ju.k kVar = (ju.k) annotation;
                String[] value = kVar.value();
                if (value.length != 0) {
                    this.f51995t = c(value, kVar.allowUnsafeNonAsciiValues());
                    return;
                }
                throw h0.n(this.f51978c, "@Headers annotation is empty.", new Object[0]);
            } else if (annotation instanceof ju.l) {
                if (!this.f51992q) {
                    this.f51993r = true;
                    return;
                }
                throw h0.n(this.f51978c, "Only one encoding annotation is allowed.", new Object[0]);
            } else if (annotation instanceof ju.e) {
                if (!this.f51993r) {
                    this.f51992q = true;
                    return;
                }
                throw h0.n(this.f51978c, "Only one encoding annotation is allowed.", new Object[0]);
            }
        }

        private v<?> f(int i10, Type type, Annotation[] annotationArr, boolean z10) {
            v<?> vVar;
            if (annotationArr != null) {
                vVar = null;
                for (Annotation annotation : annotationArr) {
                    v<?> g10 = g(i10, type, annotationArr, annotation);
                    if (g10 != null) {
                        if (vVar == null) {
                            vVar = g10;
                        } else {
                            throw h0.p(this.f51978c, i10, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                        }
                    }
                }
            } else {
                vVar = null;
            }
            if (vVar == null) {
                if (z10) {
                    try {
                        if (h0.h(type) == rs.c.class) {
                            this.f51999x = true;
                            return null;
                        }
                    } catch (NoClassDefFoundError unused) {
                    }
                }
                throw h0.p(this.f51978c, i10, "No Retrofit annotation found.", new Object[0]);
            }
            return vVar;
        }

        private v<?> g(int i10, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof ju.y) {
                j(i10, type);
                if (!this.f51989n) {
                    if (!this.f51985j) {
                        if (!this.f51986k) {
                            if (!this.f51987l) {
                                if (!this.f51988m) {
                                    if (this.f51994s == null) {
                                        this.f51989n = true;
                                        if (type != HttpUrl.class && type != String.class && type != URI.class && (!(type instanceof Class) || !"android.net.Uri".equals(((Class) type).getName()))) {
                                            throw h0.p(this.f51978c, i10, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                                        }
                                        return new v.p(this.f51978c, i10);
                                    }
                                    throw h0.p(this.f51978c, i10, "@Url cannot be used with @%s URL", this.f51990o);
                                }
                                throw h0.p(this.f51978c, i10, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                            }
                            throw h0.p(this.f51978c, i10, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                        }
                        throw h0.p(this.f51978c, i10, "A @Url parameter must not come after a @Query.", new Object[0]);
                    }
                    throw h0.p(this.f51978c, i10, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                throw h0.p(this.f51978c, i10, "Multiple @Url method annotations found.", new Object[0]);
            } else if (annotation instanceof ju.s) {
                j(i10, type);
                if (!this.f51986k) {
                    if (!this.f51987l) {
                        if (!this.f51988m) {
                            if (!this.f51989n) {
                                if (this.f51994s != null) {
                                    this.f51985j = true;
                                    ju.s sVar = (ju.s) annotation;
                                    String value = sVar.value();
                                    i(i10, value);
                                    return new v.k(this.f51978c, i10, value, this.f51976a.i(type, annotationArr), sVar.encoded());
                                }
                                throw h0.p(this.f51978c, i10, "@Path can only be used with relative url on @%s", this.f51990o);
                            }
                            throw h0.p(this.f51978c, i10, "@Path parameters may not be used with @Url.", new Object[0]);
                        }
                        throw h0.p(this.f51978c, i10, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                    }
                    throw h0.p(this.f51978c, i10, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                }
                throw h0.p(this.f51978c, i10, "A @Path parameter must not come after a @Query.", new Object[0]);
            } else if (annotation instanceof ju.t) {
                j(i10, type);
                ju.t tVar = (ju.t) annotation;
                String value2 = tVar.value();
                boolean encoded = tVar.encoded();
                Class<?> h10 = h0.h(type);
                this.f51986k = true;
                if (Iterable.class.isAssignableFrom(h10)) {
                    if (type instanceof ParameterizedType) {
                        return new v.l(value2, this.f51976a.i(h0.g(0, (ParameterizedType) type), annotationArr), encoded).c();
                    }
                    throw h0.p(this.f51978c, i10, h10.getSimpleName() + " must include generic type (e.g., " + h10.getSimpleName() + "<String>)", new Object[0]);
                } else if (h10.isArray()) {
                    return new v.l(value2, this.f51976a.i(a(h10.getComponentType()), annotationArr), encoded).b();
                } else {
                    return new v.l(value2, this.f51976a.i(type, annotationArr), encoded);
                }
            } else if (annotation instanceof ju.v) {
                j(i10, type);
                boolean encoded2 = ((ju.v) annotation).encoded();
                Class<?> h11 = h0.h(type);
                this.f51987l = true;
                if (Iterable.class.isAssignableFrom(h11)) {
                    if (type instanceof ParameterizedType) {
                        return new v.n(this.f51976a.i(h0.g(0, (ParameterizedType) type), annotationArr), encoded2).c();
                    }
                    throw h0.p(this.f51978c, i10, h11.getSimpleName() + " must include generic type (e.g., " + h11.getSimpleName() + "<String>)", new Object[0]);
                } else if (h11.isArray()) {
                    return new v.n(this.f51976a.i(a(h11.getComponentType()), annotationArr), encoded2).b();
                } else {
                    return new v.n(this.f51976a.i(type, annotationArr), encoded2);
                }
            } else if (annotation instanceof ju.u) {
                j(i10, type);
                Class<?> h12 = h0.h(type);
                this.f51988m = true;
                if (Map.class.isAssignableFrom(h12)) {
                    Type i11 = h0.i(type, h12, Map.class);
                    if (i11 instanceof ParameterizedType) {
                        ParameterizedType parameterizedType = (ParameterizedType) i11;
                        Type g10 = h0.g(0, parameterizedType);
                        if (String.class == g10) {
                            return new v.m(this.f51978c, i10, this.f51976a.i(h0.g(1, parameterizedType), annotationArr), ((ju.u) annotation).encoded());
                        }
                        throw h0.p(this.f51978c, i10, "@QueryMap keys must be of type String: " + g10, new Object[0]);
                    }
                    throw h0.p(this.f51978c, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                throw h0.p(this.f51978c, i10, "@QueryMap parameter type must be Map.", new Object[0]);
            } else if (annotation instanceof ju.i) {
                j(i10, type);
                ju.i iVar = (ju.i) annotation;
                String value3 = iVar.value();
                Class<?> h13 = h0.h(type);
                if (Iterable.class.isAssignableFrom(h13)) {
                    if (type instanceof ParameterizedType) {
                        return new v.f(value3, this.f51976a.i(h0.g(0, (ParameterizedType) type), annotationArr), iVar.allowUnsafeNonAsciiValues()).c();
                    }
                    throw h0.p(this.f51978c, i10, h13.getSimpleName() + " must include generic type (e.g., " + h13.getSimpleName() + "<String>)", new Object[0]);
                } else if (h13.isArray()) {
                    return new v.f(value3, this.f51976a.i(a(h13.getComponentType()), annotationArr), iVar.allowUnsafeNonAsciiValues()).b();
                } else {
                    return new v.f(value3, this.f51976a.i(type, annotationArr), iVar.allowUnsafeNonAsciiValues());
                }
            } else if (annotation instanceof ju.j) {
                if (type == Headers.class) {
                    return new v.h(this.f51978c, i10);
                }
                j(i10, type);
                Class<?> h14 = h0.h(type);
                if (Map.class.isAssignableFrom(h14)) {
                    Type i12 = h0.i(type, h14, Map.class);
                    if (i12 instanceof ParameterizedType) {
                        ParameterizedType parameterizedType2 = (ParameterizedType) i12;
                        Type g11 = h0.g(0, parameterizedType2);
                        if (String.class == g11) {
                            return new v.g(this.f51978c, i10, this.f51976a.i(h0.g(1, parameterizedType2), annotationArr), ((ju.j) annotation).allowUnsafeNonAsciiValues());
                        }
                        throw h0.p(this.f51978c, i10, "@HeaderMap keys must be of type String: " + g11, new Object[0]);
                    }
                    throw h0.p(this.f51978c, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                throw h0.p(this.f51978c, i10, "@HeaderMap parameter type must be Map or Headers.", new Object[0]);
            } else if (annotation instanceof ju.c) {
                j(i10, type);
                if (this.f51992q) {
                    ju.c cVar = (ju.c) annotation;
                    String value4 = cVar.value();
                    boolean encoded3 = cVar.encoded();
                    this.f51982g = true;
                    Class<?> h15 = h0.h(type);
                    if (Iterable.class.isAssignableFrom(h15)) {
                        if (type instanceof ParameterizedType) {
                            return new v.d(value4, this.f51976a.i(h0.g(0, (ParameterizedType) type), annotationArr), encoded3).c();
                        }
                        throw h0.p(this.f51978c, i10, h15.getSimpleName() + " must include generic type (e.g., " + h15.getSimpleName() + "<String>)", new Object[0]);
                    } else if (h15.isArray()) {
                        return new v.d(value4, this.f51976a.i(a(h15.getComponentType()), annotationArr), encoded3).b();
                    } else {
                        return new v.d(value4, this.f51976a.i(type, annotationArr), encoded3);
                    }
                }
                throw h0.p(this.f51978c, i10, "@Field parameters can only be used with form encoding.", new Object[0]);
            } else if (annotation instanceof ju.d) {
                j(i10, type);
                if (this.f51992q) {
                    Class<?> h16 = h0.h(type);
                    if (Map.class.isAssignableFrom(h16)) {
                        Type i13 = h0.i(type, h16, Map.class);
                        if (i13 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType3 = (ParameterizedType) i13;
                            Type g12 = h0.g(0, parameterizedType3);
                            if (String.class == g12) {
                                h i14 = this.f51976a.i(h0.g(1, parameterizedType3), annotationArr);
                                this.f51982g = true;
                                return new v.e(this.f51978c, i10, i14, ((ju.d) annotation).encoded());
                            }
                            throw h0.p(this.f51978c, i10, "@FieldMap keys must be of type String: " + g12, new Object[0]);
                        }
                        throw h0.p(this.f51978c, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw h0.p(this.f51978c, i10, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                throw h0.p(this.f51978c, i10, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
            } else if (annotation instanceof ju.q) {
                j(i10, type);
                if (this.f51993r) {
                    ju.q qVar = (ju.q) annotation;
                    this.f51983h = true;
                    String value5 = qVar.value();
                    Class<?> h17 = h0.h(type);
                    if (value5.isEmpty()) {
                        if (Iterable.class.isAssignableFrom(h17)) {
                            if (type instanceof ParameterizedType) {
                                if (MultipartBody.Part.class.isAssignableFrom(h0.h(h0.g(0, (ParameterizedType) type)))) {
                                    return v.o.f52125a.c();
                                }
                                throw h0.p(this.f51978c, i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                            }
                            throw h0.p(this.f51978c, i10, h17.getSimpleName() + " must include generic type (e.g., " + h17.getSimpleName() + "<String>)", new Object[0]);
                        } else if (h17.isArray()) {
                            if (MultipartBody.Part.class.isAssignableFrom(h17.getComponentType())) {
                                return v.o.f52125a.b();
                            }
                            throw h0.p(this.f51978c, i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        } else if (MultipartBody.Part.class.isAssignableFrom(h17)) {
                            return v.o.f52125a;
                        } else {
                            throw h0.p(this.f51978c, i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        }
                    }
                    Headers f10 = Headers.f("Content-Disposition", "form-data; name=\"" + value5 + "\"", "Content-Transfer-Encoding", qVar.encoding());
                    if (Iterable.class.isAssignableFrom(h17)) {
                        if (type instanceof ParameterizedType) {
                            Type g13 = h0.g(0, (ParameterizedType) type);
                            if (!MultipartBody.Part.class.isAssignableFrom(h0.h(g13))) {
                                return new v.i(this.f51978c, i10, f10, this.f51976a.g(g13, annotationArr, this.f51979d)).c();
                            }
                            throw h0.p(this.f51978c, i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        }
                        throw h0.p(this.f51978c, i10, h17.getSimpleName() + " must include generic type (e.g., " + h17.getSimpleName() + "<String>)", new Object[0]);
                    } else if (h17.isArray()) {
                        Class<?> a10 = a(h17.getComponentType());
                        if (!MultipartBody.Part.class.isAssignableFrom(a10)) {
                            return new v.i(this.f51978c, i10, f10, this.f51976a.g(a10, annotationArr, this.f51979d)).b();
                        }
                        throw h0.p(this.f51978c, i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    } else if (!MultipartBody.Part.class.isAssignableFrom(h17)) {
                        return new v.i(this.f51978c, i10, f10, this.f51976a.g(type, annotationArr, this.f51979d));
                    } else {
                        throw h0.p(this.f51978c, i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                }
                throw h0.p(this.f51978c, i10, "@Part parameters can only be used with multipart encoding.", new Object[0]);
            } else if (annotation instanceof ju.r) {
                j(i10, type);
                if (this.f51993r) {
                    this.f51983h = true;
                    Class<?> h18 = h0.h(type);
                    if (Map.class.isAssignableFrom(h18)) {
                        Type i15 = h0.i(type, h18, Map.class);
                        if (i15 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType4 = (ParameterizedType) i15;
                            Type g14 = h0.g(0, parameterizedType4);
                            if (String.class == g14) {
                                Type g15 = h0.g(1, parameterizedType4);
                                if (!MultipartBody.Part.class.isAssignableFrom(h0.h(g15))) {
                                    return new v.j(this.f51978c, i10, this.f51976a.g(g15, annotationArr, this.f51979d), ((ju.r) annotation).encoding());
                                }
                                throw h0.p(this.f51978c, i10, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                            }
                            throw h0.p(this.f51978c, i10, "@PartMap keys must be of type String: " + g14, new Object[0]);
                        }
                        throw h0.p(this.f51978c, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw h0.p(this.f51978c, i10, "@PartMap parameter type must be Map.", new Object[0]);
                }
                throw h0.p(this.f51978c, i10, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
            } else if (annotation instanceof ju.a) {
                j(i10, type);
                if (!this.f51992q && !this.f51993r) {
                    if (!this.f51984i) {
                        try {
                            h g16 = this.f51976a.g(type, annotationArr, this.f51979d);
                            this.f51984i = true;
                            return new v.c(this.f51978c, i10, g16);
                        } catch (RuntimeException e10) {
                            throw h0.q(this.f51978c, e10, i10, "Unable to create @Body converter for %s", type);
                        }
                    }
                    throw h0.p(this.f51978c, i10, "Multiple @Body method annotations found.", new Object[0]);
                }
                throw h0.p(this.f51978c, i10, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
            } else if (annotation instanceof ju.x) {
                j(i10, type);
                Class<?> a11 = a(h0.h(type));
                for (int i16 = i10 - 1; i16 >= 0; i16--) {
                    v<?> vVar = this.f51998w[i16];
                    if ((vVar instanceof v.q) && ((v.q) vVar).f52128a.equals(a11)) {
                        throw h0.p(this.f51978c, i10, "@Tag type " + a11.getName() + " is duplicate of " + w.f52130b.a(this.f51978c, i16) + " and would always overwrite its value.", new Object[0]);
                    }
                }
                return new v.q(a11);
            } else {
                return null;
            }
        }

        static Set<String> h(String str) {
            Matcher matcher = f51974y.matcher(str);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            return linkedHashSet;
        }

        private void i(int i10, String str) {
            if (f51975z.matcher(str).matches()) {
                if (this.f51997v.contains(str)) {
                    return;
                }
                throw h0.p(this.f51978c, i10, "URL \"%s\" does not contain \"{%s}\".", this.f51994s, str);
            }
            throw h0.p(this.f51978c, i10, "@Path parameter name must match %s. Found: %s", f51974y.pattern(), str);
        }

        private void j(int i10, Type type) {
            if (!h0.j(type)) {
                return;
            }
            throw h0.p(this.f51978c, i10, "Parameter type must not include a type variable or wildcard: %s", type);
        }

        b0 b() {
            boolean z10;
            for (Annotation annotation : this.f51979d) {
                e(annotation);
            }
            if (this.f51990o != null) {
                if (!this.f51991p) {
                    if (!this.f51993r) {
                        if (this.f51992q) {
                            throw h0.n(this.f51978c, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                        }
                    } else {
                        throw h0.n(this.f51978c, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                }
                int length = this.f51980e.length;
                this.f51998w = new v[length];
                int i10 = length - 1;
                for (int i11 = 0; i11 < length; i11++) {
                    v<?>[] vVarArr = this.f51998w;
                    Type type = this.f51981f[i11];
                    Annotation[] annotationArr = this.f51980e[i11];
                    if (i11 == i10) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    vVarArr[i11] = f(i11, type, annotationArr, z10);
                }
                if (this.f51994s == null && !this.f51989n) {
                    throw h0.n(this.f51978c, "Missing either @%s URL or @Url parameter.", this.f51990o);
                }
                boolean z11 = this.f51992q;
                if (!z11 && !this.f51993r && !this.f51991p && this.f51984i) {
                    throw h0.n(this.f51978c, "Non-body HTTP method cannot contain @Body.", new Object[0]);
                }
                if (z11 && !this.f51982g) {
                    throw h0.n(this.f51978c, "Form-encoded method must contain at least one @Field.", new Object[0]);
                }
                if (this.f51993r && !this.f51983h) {
                    throw h0.n(this.f51978c, "Multipart method must contain at least one @Part.", new Object[0]);
                }
                return new b0(this);
            }
            throw h0.n(this.f51978c, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
        }
    }

    b0(a aVar) {
        this.f51962a = aVar.f51977b;
        this.f51963b = aVar.f51978c;
        this.f51964c = aVar.f51976a.f52005c;
        this.f51965d = aVar.f51990o;
        this.f51966e = aVar.f51994s;
        this.f51967f = aVar.f51995t;
        this.f51968g = aVar.f51996u;
        this.f51969h = aVar.f51991p;
        this.f51970i = aVar.f51992q;
        this.f51971j = aVar.f51993r;
        this.f51972k = aVar.f51998w;
        this.f51973l = aVar.f51999x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b0 b(d0 d0Var, Class<?> cls, Method method) {
        return new a(d0Var, cls, method).b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Request a(Object obj, Object[] objArr) throws IOException {
        v<?>[] vVarArr = this.f51972k;
        int length = objArr.length;
        if (length == vVarArr.length) {
            a0 a0Var = new a0(this.f51965d, this.f51964c, this.f51966e, this.f51967f, this.f51968g, this.f51969h, this.f51970i, this.f51971j);
            if (this.f51973l) {
                length--;
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i10 = 0; i10 < length; i10++) {
                arrayList.add(objArr[i10]);
                vVarArr[i10].a(a0Var, objArr[i10]);
            }
            return a0Var.k().j(s.class, new s(this.f51962a, obj, this.f51963b, arrayList)).b();
        }
        throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + vVarArr.length + ")");
    }
}
