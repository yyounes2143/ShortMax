package retrofit2.adapter.rxjava;

import fu.c0;
import fu.d0;
import fu.e;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import ku.g;
/* compiled from: RxJavaCallAdapterFactory.java */
/* loaded from: classes8.dex */
public final class f extends e.a {

    /* renamed from: a  reason: collision with root package name */
    private final ku.f f65840a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f65841b;

    private f(ku.f fVar, boolean z10) {
        this.f65840a = fVar;
        this.f65841b = z10;
    }

    public static f d() {
        return new f(null, false);
    }

    @Override // fu.e.a
    public fu.e<?, ?> a(Type type, Annotation[] annotationArr, d0 d0Var) {
        boolean z10;
        boolean z11;
        Type type2;
        boolean z12;
        boolean z13;
        String str;
        Class<?> c10 = e.a.c(type);
        if (c10 == g.class) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (c10 == ku.a.class) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (c10 != ku.c.class && !z10 && !z11) {
            return null;
        }
        if (z11) {
            return new e(Void.class, this.f65840a, this.f65841b, false, true, false, true);
        }
        if (!(type instanceof ParameterizedType)) {
            if (z10) {
                str = "Single";
            } else {
                str = "Observable";
            }
            throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
        }
        Type b10 = e.a.b(0, (ParameterizedType) type);
        Class<?> c11 = e.a.c(b10);
        if (c11 == c0.class) {
            if (b10 instanceof ParameterizedType) {
                type2 = e.a.b(0, (ParameterizedType) b10);
                z13 = false;
                z12 = false;
            } else {
                throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
            }
        } else if (c11 == gu.a.class) {
            if (b10 instanceof ParameterizedType) {
                type2 = e.a.b(0, (ParameterizedType) b10);
                z13 = true;
                z12 = false;
            } else {
                throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
            }
        } else {
            type2 = b10;
            z12 = true;
            z13 = false;
        }
        return new e(type2, this.f65840a, this.f65841b, z13, z12, z10, false);
    }
}
