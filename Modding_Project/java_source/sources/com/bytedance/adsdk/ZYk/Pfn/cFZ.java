package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.Color;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
/* loaded from: classes3.dex */
public class cFZ implements Jm<Integer> {
    public static final cFZ oJ = new cFZ();

    private cFZ() {
    }

    @Override // com.bytedance.adsdk.ZYk.Pfn.Jm
    /* renamed from: oJ */
    public Integer ZYk(JsonReader jsonReader, float f10) throws IOException {
        boolean z10;
        double d10;
        if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            jsonReader.beginArray();
        }
        double nextDouble = jsonReader.nextDouble();
        double nextDouble2 = jsonReader.nextDouble();
        double nextDouble3 = jsonReader.nextDouble();
        if (jsonReader.peek() == JsonToken.NUMBER) {
            d10 = jsonReader.nextDouble();
        } else {
            d10 = 1.0d;
        }
        if (z10) {
            jsonReader.endArray();
        }
        if (nextDouble <= 1.0d && nextDouble2 <= 1.0d && nextDouble3 <= 1.0d) {
            nextDouble *= 255.0d;
            nextDouble2 *= 255.0d;
            nextDouble3 *= 255.0d;
            if (d10 <= 1.0d) {
                d10 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) d10, (int) nextDouble, (int) nextDouble2, (int) nextDouble3));
    }
}
