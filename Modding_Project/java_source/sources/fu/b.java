package fu;

import fu.h;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.Unit;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BuiltInConverters.java */
/* loaded from: classes8.dex */
public final class b extends h.a {

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes8.dex */
    static final class a implements h<ResponseBody, ResponseBody> {

        /* renamed from: a  reason: collision with root package name */
        static final a f51956a = new a();

        a() {
        }

        @Override // fu.h
        /* renamed from: a */
        public ResponseBody convert(ResponseBody responseBody) throws IOException {
            try {
                return h0.a(responseBody);
            } finally {
                responseBody.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes8.dex */
    public static final class d implements h<Object, String> {

        /* renamed from: a  reason: collision with root package name */
        static final d f51959a = new d();

        d() {
        }

        @Override // fu.h
        /* renamed from: a */
        public String convert(Object obj) {
            return obj.toString();
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes8.dex */
    static final class e implements h<ResponseBody, Unit> {

        /* renamed from: a  reason: collision with root package name */
        static final e f51960a = new e();

        e() {
        }

        @Override // fu.h
        /* renamed from: a */
        public Unit convert(ResponseBody responseBody) {
            responseBody.close();
            return Unit.f60915a;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes8.dex */
    static final class f implements h<ResponseBody, Void> {

        /* renamed from: a  reason: collision with root package name */
        static final f f51961a = new f();

        f() {
        }

        @Override // fu.h
        /* renamed from: a */
        public Void convert(ResponseBody responseBody) {
            responseBody.close();
            return null;
        }
    }

    @Override // fu.h.a
    public h<?, RequestBody> c(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, d0 d0Var) {
        if (RequestBody.class.isAssignableFrom(h0.h(type))) {
            return C0747b.f51957a;
        }
        return null;
    }

    @Override // fu.h.a
    public h<ResponseBody, ?> d(Type type, Annotation[] annotationArr, d0 d0Var) {
        if (type == ResponseBody.class) {
            if (h0.l(annotationArr, ju.w.class)) {
                return c.f51958a;
            }
            return a.f51956a;
        } else if (type == Void.class) {
            return f.f51961a;
        } else {
            if (h0.m(type)) {
                return e.f51960a;
            }
            return null;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* renamed from: fu.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    static final class C0747b implements h<RequestBody, RequestBody> {

        /* renamed from: a  reason: collision with root package name */
        static final C0747b f51957a = new C0747b();

        C0747b() {
        }

        @Override // fu.h
        /* renamed from: a */
        public RequestBody convert(RequestBody requestBody) {
            return requestBody;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes8.dex */
    static final class c implements h<ResponseBody, ResponseBody> {

        /* renamed from: a  reason: collision with root package name */
        static final c f51958a = new c();

        c() {
        }

        @Override // fu.h
        /* renamed from: a */
        public ResponseBody convert(ResponseBody responseBody) {
            return responseBody;
        }
    }
}
