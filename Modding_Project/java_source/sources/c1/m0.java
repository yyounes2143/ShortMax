package c1;

import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: ShapeTrimPathParser.java */
/* loaded from: classes2.dex */
class m0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2889a = JsonReader.a.a("s", "e", "o", "nm", "m", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ShapeTrimPath a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        String str = null;
        ShapeTrimPath.Type type = null;
        y0.b bVar = null;
        y0.b bVar2 = null;
        y0.b bVar3 = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2889a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        if (x10 != 3) {
                            if (x10 != 4) {
                                if (x10 != 5) {
                                    jsonReader.P();
                                } else {
                                    z10 = jsonReader.p();
                                }
                            } else {
                                type = ShapeTrimPath.Type.forId(jsonReader.r());
                            }
                        } else {
                            str = jsonReader.t();
                        }
                    } else {
                        bVar3 = d.f(jsonReader, iVar, false);
                    }
                } else {
                    bVar2 = d.f(jsonReader, iVar, false);
                }
            } else {
                bVar = d.f(jsonReader, iVar, false);
            }
        }
        return new ShapeTrimPath(str, type, bVar, bVar2, bVar3, z10);
    }
}
