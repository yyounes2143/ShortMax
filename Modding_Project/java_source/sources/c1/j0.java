package c1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShapeGroupParser.java */
/* loaded from: classes2.dex */
public class j0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2875a = JsonReader.a.a("nm", "hd", "it");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z0.k a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        String str = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2875a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        jsonReader.P();
                    } else {
                        jsonReader.d();
                        while (jsonReader.o()) {
                            z0.c a10 = h.a(jsonReader, iVar);
                            if (a10 != null) {
                                arrayList.add(a10);
                            }
                        }
                        jsonReader.l();
                    }
                } else {
                    z10 = jsonReader.p();
                }
            } else {
                str = jsonReader.t();
            }
        }
        return new z0.k(str, arrayList, z10);
    }
}
