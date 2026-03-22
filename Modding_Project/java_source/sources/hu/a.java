package hu;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import fu.d0;
import fu.h;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
/* compiled from: GsonConverterFactory.java */
/* loaded from: classes8.dex */
public final class a extends h.a {

    /* renamed from: a  reason: collision with root package name */
    private final Gson f53264a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f53265b;

    private a(Gson gson, boolean z10) {
        this.f53264a = gson;
        this.f53265b = z10;
    }

    public static a f() {
        return g(new Gson());
    }

    public static a g(Gson gson) {
        if (gson != null) {
            return new a(gson, false);
        }
        throw new NullPointerException("gson == null");
    }

    @Override // fu.h.a
    public h<?, RequestBody> c(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, d0 d0Var) {
        return new b(this.f53264a, this.f53264a.getAdapter(TypeToken.get(type)), this.f53265b);
    }

    @Override // fu.h.a
    public h<ResponseBody, ?> d(Type type, Annotation[] annotationArr, d0 d0Var) {
        return new c(this.f53264a, this.f53264a.getAdapter(TypeToken.get(type)));
    }
}
