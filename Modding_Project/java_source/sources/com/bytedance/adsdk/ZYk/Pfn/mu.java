package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
/* loaded from: classes3.dex */
public class mu implements Jm<com.bytedance.adsdk.ZYk.cFZ.tB> {
    public static final mu oJ = new mu();

    private mu() {
    }

    @Override // com.bytedance.adsdk.ZYk.Pfn.Jm
    /* renamed from: oJ */
    public com.bytedance.adsdk.ZYk.cFZ.tB ZYk(JsonReader jsonReader, float f10) throws IOException {
        boolean z10;
        if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            jsonReader.beginArray();
        }
        float nextDouble = (float) jsonReader.nextDouble();
        float nextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        if (z10) {
            jsonReader.endArray();
        }
        return new com.bytedance.adsdk.ZYk.cFZ.tB((nextDouble / 100.0f) * f10, (nextDouble2 / 100.0f) * f10);
    }
}
