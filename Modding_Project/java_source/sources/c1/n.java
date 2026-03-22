package c1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: FontParser.java */
/* loaded from: classes2.dex */
class n {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2890a = JsonReader.a.a("fFamily", "fName", "fStyle", "ascent");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x0.b a(JsonReader jsonReader) throws IOException {
        jsonReader.k();
        String str = null;
        String str2 = null;
        float f10 = 0.0f;
        String str3 = null;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2890a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        if (x10 != 3) {
                            jsonReader.F();
                            jsonReader.P();
                        } else {
                            f10 = (float) jsonReader.q();
                        }
                    } else {
                        str2 = jsonReader.t();
                    }
                } else {
                    str3 = jsonReader.t();
                }
            } else {
                str = jsonReader.t();
            }
        }
        jsonReader.m();
        return new x0.b(str, str3, str2, f10);
    }
}
