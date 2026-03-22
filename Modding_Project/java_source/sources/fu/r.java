package fu;

import fu.h0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import okhttp3.Call;
import okhttp3.Response;
import okhttp3.ResponseBody;
import retrofit2.KotlinExtensions;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpServiceMethod.java */
/* loaded from: classes8.dex */
public abstract class r<ResponseT, ReturnT> extends e0<ReturnT> {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f52052a;

    /* renamed from: b  reason: collision with root package name */
    private final Call.Factory f52053b;

    /* renamed from: c  reason: collision with root package name */
    private final h<ResponseBody, ResponseT> f52054c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HttpServiceMethod.java */
    /* loaded from: classes8.dex */
    public static final class a<ResponseT, ReturnT> extends r<ResponseT, ReturnT> {

        /* renamed from: d  reason: collision with root package name */
        private final e<ResponseT, ReturnT> f52055d;

        a(b0 b0Var, Call.Factory factory, h<ResponseBody, ResponseT> hVar, e<ResponseT, ReturnT> eVar) {
            super(b0Var, factory, hVar);
            this.f52055d = eVar;
        }

        @Override // fu.r
        protected ReturnT c(d<ResponseT> dVar, Object[] objArr) {
            return this.f52055d.a(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HttpServiceMethod.java */
    /* loaded from: classes8.dex */
    public static final class b<ResponseT> extends r<ResponseT, Object> {

        /* renamed from: d  reason: collision with root package name */
        private final e<ResponseT, d<ResponseT>> f52056d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f52057e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f52058f;

        b(b0 b0Var, Call.Factory factory, h<ResponseBody, ResponseT> hVar, e<ResponseT, d<ResponseT>> eVar, boolean z10, boolean z11) {
            super(b0Var, factory, hVar);
            this.f52056d = eVar;
            this.f52057e = z10;
            this.f52058f = z11;
        }

        @Override // fu.r
        protected Object c(d<ResponseT> dVar, Object[] objArr) {
            d<ResponseT> a10 = this.f52056d.a(dVar);
            rs.c cVar = (rs.c) objArr[objArr.length - 1];
            try {
                if (this.f52058f) {
                    return KotlinExtensions.d(a10, cVar);
                }
                if (this.f52057e) {
                    return KotlinExtensions.b(a10, cVar);
                }
                return KotlinExtensions.a(a10, cVar);
            } catch (LinkageError e10) {
                e = e10;
                throw e;
            } catch (ThreadDeath e11) {
                e = e11;
                throw e;
            } catch (VirtualMachineError e12) {
                e = e12;
                throw e;
            } catch (Throwable th2) {
                return KotlinExtensions.e(th2, cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HttpServiceMethod.java */
    /* loaded from: classes8.dex */
    public static final class c<ResponseT> extends r<ResponseT, Object> {

        /* renamed from: d  reason: collision with root package name */
        private final e<ResponseT, d<ResponseT>> f52059d;

        c(b0 b0Var, Call.Factory factory, h<ResponseBody, ResponseT> hVar, e<ResponseT, d<ResponseT>> eVar) {
            super(b0Var, factory, hVar);
            this.f52059d = eVar;
        }

        @Override // fu.r
        protected Object c(d<ResponseT> dVar, Object[] objArr) {
            d<ResponseT> a10 = this.f52059d.a(dVar);
            rs.c cVar = (rs.c) objArr[objArr.length - 1];
            try {
                return KotlinExtensions.c(a10, cVar);
            } catch (Exception e10) {
                return KotlinExtensions.e(e10, cVar);
            }
        }
    }

    r(b0 b0Var, Call.Factory factory, h<ResponseBody, ResponseT> hVar) {
        this.f52052a = b0Var;
        this.f52053b = factory;
        this.f52054c = hVar;
    }

    private static <ResponseT, ReturnT> e<ResponseT, ReturnT> d(d0 d0Var, Method method, Type type, Annotation[] annotationArr) {
        try {
            return (e<ResponseT, ReturnT>) d0Var.a(type, annotationArr);
        } catch (RuntimeException e10) {
            throw h0.o(method, e10, "Unable to create call adapter for %s", type);
        }
    }

    private static <ResponseT> h<ResponseBody, ResponseT> e(d0 d0Var, Method method, Type type) {
        try {
            return d0Var.h(type, method.getAnnotations());
        } catch (RuntimeException e10) {
            throw h0.o(method, e10, "Unable to create converter for %s", type);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <ResponseT, ReturnT> r<ResponseT, ReturnT> f(d0 d0Var, Method method, b0 b0Var) {
        Type genericReturnType;
        boolean z10;
        boolean z11;
        boolean m10;
        boolean z12 = b0Var.f51973l;
        Annotation[] annotations = method.getAnnotations();
        if (z12) {
            Type[] genericParameterTypes = method.getGenericParameterTypes();
            Type f10 = h0.f(0, (ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]);
            if (h0.h(f10) == c0.class && (f10 instanceof ParameterizedType)) {
                f10 = h0.g(0, (ParameterizedType) f10);
                z10 = true;
                m10 = false;
            } else if (h0.h(f10) != d.class) {
                m10 = h0.m(f10);
                z10 = false;
            } else {
                throw h0.n(method, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s", h0.g(0, (ParameterizedType) f10));
            }
            genericReturnType = new h0.b(null, d.class, f10);
            annotations = g0.a(annotations);
            z11 = m10;
        } else {
            genericReturnType = method.getGenericReturnType();
            z10 = false;
            z11 = false;
        }
        e d10 = d(d0Var, method, genericReturnType, annotations);
        Type b10 = d10.b();
        if (b10 != Response.class) {
            if (b10 != c0.class) {
                if (b0Var.f51965d.equals("HEAD") && !Void.class.equals(b10) && !h0.m(b10)) {
                    throw h0.n(method, "HEAD method must use Void or Unit as response type.", new Object[0]);
                }
                h e10 = e(d0Var, method, b10);
                Call.Factory factory = d0Var.f52004b;
                if (!z12) {
                    return new a(b0Var, factory, e10, d10);
                }
                if (z10) {
                    return new c(b0Var, factory, e10, d10);
                }
                return new b(b0Var, factory, e10, d10, false, z11);
            }
            throw h0.n(method, "Response must include generic type (e.g., Response<String>)", new Object[0]);
        }
        throw h0.n(method, "'" + h0.h(b10).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // fu.e0
    public final ReturnT a(Object obj, Object[] objArr) {
        return c(new t(this.f52052a, obj, objArr, this.f52053b, this.f52054c), objArr);
    }

    protected abstract ReturnT c(d<ResponseT> dVar, Object[] objArr);
}
