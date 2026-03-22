package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.Color;
import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import com.ss.texturerender.TextureRenderKeys;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
class RZ {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.adsdk.ZYk.Pfn.RZ$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[JsonToken.values().length];
            oJ = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[JsonToken.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                oJ[JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static PointF Pfn(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.beginObject();
        float f11 = 0.0f;
        float f12 = 0.0f;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals(TextureRenderKeys.KEY_IS_X)) {
                if (!nextName.equals(TextureRenderKeys.KEY_IS_Y)) {
                    jsonReader.skipValue();
                } else {
                    f12 = ZYk(jsonReader);
                }
            } else {
                f11 = ZYk(jsonReader);
            }
        }
        jsonReader.endObject();
        return new PointF(f11 * f10, f12 * f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PointF ZYk(JsonReader jsonReader, float f10) throws IOException {
        int i10 = AnonymousClass1.oJ[jsonReader.peek().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return Pfn(jsonReader, f10);
                }
                throw new IllegalArgumentException("Unknown point starts with " + jsonReader.peek());
            }
            return ex(jsonReader, f10);
        }
        return tB(jsonReader, f10);
    }

    private static PointF ex(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.beginArray();
        float nextDouble = (float) jsonReader.nextDouble();
        float nextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.peek() != JsonToken.END_ARRAY) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return new PointF(nextDouble * f10, nextDouble2 * f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int oJ(JsonReader jsonReader) throws IOException {
        jsonReader.beginArray();
        int nextDouble = (int) (jsonReader.nextDouble() * 255.0d);
        int nextDouble2 = (int) (jsonReader.nextDouble() * 255.0d);
        int nextDouble3 = (int) (jsonReader.nextDouble() * 255.0d);
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return Color.argb(255, nextDouble, nextDouble2, nextDouble3);
    }

    private static PointF tB(JsonReader jsonReader, float f10) throws IOException {
        float nextDouble = (float) jsonReader.nextDouble();
        float nextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        return new PointF(nextDouble * f10, nextDouble2 * f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float ZYk(JsonReader jsonReader) throws IOException {
        JsonToken peek = jsonReader.peek();
        int i10 = AnonymousClass1.oJ[peek.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                jsonReader.beginArray();
                float nextDouble = (float) jsonReader.nextDouble();
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                jsonReader.endArray();
                return nextDouble;
            }
            throw new IllegalArgumentException("Unknown value for token of type ".concat(String.valueOf(peek)));
        }
        return (float) jsonReader.nextDouble();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<PointF> oJ(JsonReader jsonReader, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            arrayList.add(ZYk(jsonReader, f10));
            jsonReader.endArray();
        }
        jsonReader.endArray();
        return arrayList;
    }
}
