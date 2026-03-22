package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
/* loaded from: classes3.dex */
public class Ln implements Jm<PointF> {
    public static final Ln oJ = new Ln();

    private Ln() {
    }

    @Override // com.bytedance.adsdk.ZYk.Pfn.Jm
    /* renamed from: oJ */
    public PointF ZYk(JsonReader jsonReader, float f10) throws IOException {
        JsonToken peek = jsonReader.peek();
        if (peek == JsonToken.BEGIN_ARRAY) {
            return RZ.ZYk(jsonReader, f10);
        }
        if (peek == JsonToken.BEGIN_OBJECT) {
            return RZ.ZYk(jsonReader, f10);
        }
        if (peek == JsonToken.NUMBER) {
            PointF pointF = new PointF(((float) jsonReader.nextDouble()) * f10, ((float) jsonReader.nextDouble()) * f10);
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            return pointF;
        }
        throw new IllegalArgumentException("Cannot convert json to point. Next token is ".concat(String.valueOf(peek)));
    }
}
