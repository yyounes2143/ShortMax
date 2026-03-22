package c1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: ShapePathParser.java */
/* loaded from: classes2.dex */
class k0 {

    /* renamed from: a  reason: collision with root package name */
    static JsonReader.a f2883a = JsonReader.a.a("nm", "ind", "ks", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z0.l a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        String str = null;
        int i10 = 0;
        boolean z10 = false;
        y0.h hVar = null;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2883a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        if (x10 != 3) {
                            jsonReader.P();
                        } else {
                            z10 = jsonReader.p();
                        }
                    } else {
                        hVar = d.k(jsonReader, iVar);
                    }
                } else {
                    i10 = jsonReader.r();
                }
            } else {
                str = jsonReader.t();
            }
        }
        return new z0.l(str, i10, hVar, z10);
    }
}
