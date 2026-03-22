package c1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: PointFParser.java */
/* loaded from: classes2.dex */
public class b0 implements n0<PointF> {

    /* renamed from: a  reason: collision with root package name */
    public static final b0 f2852a = new b0();

    private b0() {
    }

    @Override // c1.n0
    /* renamed from: b */
    public PointF a(JsonReader jsonReader, float f10) throws IOException {
        JsonReader.Token v10 = jsonReader.v();
        if (v10 == JsonReader.Token.BEGIN_ARRAY) {
            return s.e(jsonReader, f10);
        }
        if (v10 == JsonReader.Token.BEGIN_OBJECT) {
            return s.e(jsonReader, f10);
        }
        if (v10 == JsonReader.Token.NUMBER) {
            PointF pointF = new PointF(((float) jsonReader.q()) * f10, ((float) jsonReader.q()) * f10);
            while (jsonReader.o()) {
                jsonReader.P();
            }
            return pointF;
        }
        throw new IllegalArgumentException("Cannot convert json to point. Next token is " + v10);
    }
}
