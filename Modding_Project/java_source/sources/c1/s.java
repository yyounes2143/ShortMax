package c1;

import android.graphics.Color;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.ss.texturerender.TextureRenderKeys;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: JsonUtils.java */
/* loaded from: classes2.dex */
class s {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2898a = JsonReader.a.a(TextureRenderKeys.KEY_IS_X, TextureRenderKeys.KEY_IS_Y);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JsonUtils.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2899a;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            f2899a = iArr;
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2899a[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2899a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static PointF a(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.d();
        float q10 = (float) jsonReader.q();
        float q11 = (float) jsonReader.q();
        while (jsonReader.v() != JsonReader.Token.END_ARRAY) {
            jsonReader.P();
        }
        jsonReader.l();
        return new PointF(q10 * f10, q11 * f10);
    }

    private static PointF b(JsonReader jsonReader, float f10) throws IOException {
        float q10 = (float) jsonReader.q();
        float q11 = (float) jsonReader.q();
        while (jsonReader.o()) {
            jsonReader.P();
        }
        return new PointF(q10 * f10, q11 * f10);
    }

    private static PointF c(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.k();
        float f11 = 0.0f;
        float f12 = 0.0f;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2898a);
            if (x10 != 0) {
                if (x10 != 1) {
                    jsonReader.F();
                    jsonReader.P();
                } else {
                    f12 = g(jsonReader);
                }
            } else {
                f11 = g(jsonReader);
            }
        }
        jsonReader.m();
        return new PointF(f11 * f10, f12 * f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public static int d(JsonReader jsonReader) throws IOException {
        jsonReader.d();
        int q10 = (int) (jsonReader.q() * 255.0d);
        int q11 = (int) (jsonReader.q() * 255.0d);
        int q12 = (int) (jsonReader.q() * 255.0d);
        while (jsonReader.o()) {
            jsonReader.P();
        }
        jsonReader.l();
        return Color.argb(255, q10, q11, q12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PointF e(JsonReader jsonReader, float f10) throws IOException {
        int i10 = a.f2899a[jsonReader.v().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return c(jsonReader, f10);
                }
                throw new IllegalArgumentException("Unknown point starts with " + jsonReader.v());
            }
            return a(jsonReader, f10);
        }
        return b(jsonReader, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<PointF> f(JsonReader jsonReader, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.d();
        while (jsonReader.v() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.d();
            arrayList.add(e(jsonReader, f10));
            jsonReader.l();
        }
        jsonReader.l();
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float g(JsonReader jsonReader) throws IOException {
        JsonReader.Token v10 = jsonReader.v();
        int i10 = a.f2899a[v10.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                jsonReader.d();
                float q10 = (float) jsonReader.q();
                while (jsonReader.o()) {
                    jsonReader.P();
                }
                jsonReader.l();
                return q10;
            }
            throw new IllegalArgumentException("Unknown value for token of type " + v10);
        }
        return (float) jsonReader.q();
    }
}
