package c1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: FloatParser.java */
/* loaded from: classes2.dex */
public class l implements n0<Float> {

    /* renamed from: a  reason: collision with root package name */
    public static final l f2884a = new l();

    private l() {
    }

    @Override // c1.n0
    /* renamed from: b */
    public Float a(JsonReader jsonReader, float f10) throws IOException {
        return Float.valueOf(s.g(jsonReader) * f10);
    }
}
