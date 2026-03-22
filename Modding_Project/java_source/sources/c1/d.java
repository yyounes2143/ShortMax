package c1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.List;
/* compiled from: AnimatableValueParser.java */
/* loaded from: classes2.dex */
public class d {
    private static <T> List<e1.a<T>> a(JsonReader jsonReader, float f10, com.airbnb.lottie.i iVar, n0<T> n0Var) throws IOException {
        return u.a(jsonReader, iVar, f10, n0Var, false);
    }

    private static <T> List<e1.a<T>> b(JsonReader jsonReader, com.airbnb.lottie.i iVar, n0<T> n0Var) throws IOException {
        return u.a(jsonReader, iVar, 1.0f, n0Var, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y0.a c(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        return new y0.a(b(jsonReader, iVar, g.f2862a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y0.j d(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        return new y0.j(a(jsonReader, d1.p.e(), iVar, i.f2867a));
    }

    public static y0.b e(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        return f(jsonReader, iVar, true);
    }

    public static y0.b f(JsonReader jsonReader, com.airbnb.lottie.i iVar, boolean z10) throws IOException {
        float f10;
        if (z10) {
            f10 = d1.p.e();
        } else {
            f10 = 1.0f;
        }
        return new y0.b(a(jsonReader, f10, iVar, l.f2884a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y0.c g(JsonReader jsonReader, com.airbnb.lottie.i iVar, int i10) throws IOException {
        return new y0.c(b(jsonReader, iVar, new o(i10)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y0.d h(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        return new y0.d(b(jsonReader, iVar, r.f2897a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y0.f i(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        return new y0.f(u.a(jsonReader, iVar, d1.p.e(), b0.f2852a, true));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y0.g j(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        return new y0.g(b(jsonReader, iVar, g0.f2863a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y0.h k(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        return new y0.h(a(jsonReader, d1.p.e(), iVar, h0.f2865a));
    }
}
