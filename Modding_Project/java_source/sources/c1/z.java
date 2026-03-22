package c1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: PathKeyframeParser.java */
/* loaded from: classes2.dex */
class z {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static u0.i a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        boolean z10;
        if (jsonReader.v() == JsonReader.Token.BEGIN_OBJECT) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new u0.i(iVar, t.c(jsonReader, iVar, d1.p.e(), a0.f2848a, z10, false));
    }
}
