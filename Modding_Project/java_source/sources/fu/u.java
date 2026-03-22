package fu;

import android.annotation.TargetApi;
import fu.h;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import okhttp3.ResponseBody;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
/* compiled from: OptionalConverterFactory.java */
@TargetApi(24)
@IgnoreJRERequirement
/* loaded from: classes8.dex */
public final class u extends h.a {

    /* compiled from: OptionalConverterFactory.java */
    @IgnoreJRERequirement
    /* loaded from: classes8.dex */
    static final class a<T> implements h<ResponseBody, Optional<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final h<ResponseBody, T> f52081a;

        a(h<ResponseBody, T> hVar) {
            this.f52081a = hVar;
        }

        @Override // fu.h
        /* renamed from: a */
        public Optional<T> convert(ResponseBody responseBody) throws IOException {
            return Optional.ofNullable(this.f52081a.convert(responseBody));
        }
    }

    @Override // fu.h.a
    public h<ResponseBody, ?> d(Type type, Annotation[] annotationArr, d0 d0Var) {
        if (h.a.b(type) != Optional.class) {
            return null;
        }
        return new a(d0Var.h(h.a.a(0, (ParameterizedType) type), annotationArr));
    }
}
