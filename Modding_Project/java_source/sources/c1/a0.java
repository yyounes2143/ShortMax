package c1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: PathParser.java */
/* loaded from: classes2.dex */
public class a0 implements n0<PointF> {

    /* renamed from: a  reason: collision with root package name */
    public static final a0 f2848a = new a0();

    private a0() {
    }

    @Override // c1.n0
    /* renamed from: b */
    public PointF a(JsonReader jsonReader, float f10) throws IOException {
        return s.e(jsonReader, f10);
    }
}
