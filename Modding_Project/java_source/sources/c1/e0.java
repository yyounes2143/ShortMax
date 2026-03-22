package c1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: RepeaterParser.java */
/* loaded from: classes2.dex */
class e0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2859a = JsonReader.a.a("nm", "c", "o", "tr", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z0.g a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        String str = null;
        y0.b bVar = null;
        y0.b bVar2 = null;
        y0.n nVar = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2859a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        if (x10 != 3) {
                            if (x10 != 4) {
                                jsonReader.P();
                            } else {
                                z10 = jsonReader.p();
                            }
                        } else {
                            nVar = c.h(jsonReader, iVar);
                        }
                    } else {
                        bVar2 = d.f(jsonReader, iVar, false);
                    }
                } else {
                    bVar = d.f(jsonReader, iVar, false);
                }
            } else {
                str = jsonReader.t();
            }
        }
        return new z0.g(str, bVar, bVar2, nVar, z10);
    }
}
