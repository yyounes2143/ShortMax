package c1;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: ColorParser.java */
/* loaded from: classes2.dex */
public class g implements n0<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public static final g f2862a = new g();

    private g() {
    }

    @Override // c1.n0
    /* renamed from: b */
    public Integer a(JsonReader jsonReader, float f10) throws IOException {
        boolean z10;
        double d10;
        if (jsonReader.v() == JsonReader.Token.BEGIN_ARRAY) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            jsonReader.d();
        }
        double q10 = jsonReader.q();
        double q11 = jsonReader.q();
        double q12 = jsonReader.q();
        if (jsonReader.v() == JsonReader.Token.NUMBER) {
            d10 = jsonReader.q();
        } else {
            d10 = 1.0d;
        }
        if (z10) {
            jsonReader.l();
        }
        if (q10 <= 1.0d && q11 <= 1.0d && q12 <= 1.0d) {
            q10 *= 255.0d;
            q11 *= 255.0d;
            q12 *= 255.0d;
            if (d10 <= 1.0d) {
                d10 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) d10, (int) q10, (int) q11, (int) q12));
    }
}
