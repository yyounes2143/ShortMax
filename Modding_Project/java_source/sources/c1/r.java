package c1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: IntegerParser.java */
/* loaded from: classes2.dex */
public class r implements n0<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public static final r f2897a = new r();

    private r() {
    }

    @Override // c1.n0
    /* renamed from: b */
    public Integer a(JsonReader jsonReader, float f10) throws IOException {
        return Integer.valueOf(Math.round(s.g(jsonReader) * f10));
    }
}
