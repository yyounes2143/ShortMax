package c1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: ScaleXYParser.java */
/* loaded from: classes2.dex */
public class g0 implements n0<e1.d> {

    /* renamed from: a  reason: collision with root package name */
    public static final g0 f2863a = new g0();

    private g0() {
    }

    @Override // c1.n0
    /* renamed from: b */
    public e1.d a(JsonReader jsonReader, float f10) throws IOException {
        boolean z10;
        if (jsonReader.v() == JsonReader.Token.BEGIN_ARRAY) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            jsonReader.d();
        }
        float q10 = (float) jsonReader.q();
        float q11 = (float) jsonReader.q();
        while (jsonReader.o()) {
            jsonReader.P();
        }
        if (z10) {
            jsonReader.l();
        }
        return new e1.d((q10 / 100.0f) * f10, (q11 / 100.0f) * f10);
    }
}
