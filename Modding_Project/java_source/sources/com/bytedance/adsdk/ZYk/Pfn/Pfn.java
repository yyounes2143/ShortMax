package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import java.io.IOException;
/* loaded from: classes3.dex */
class Pfn {
    private static com.bytedance.adsdk.ZYk.tB.ZYk.oJ ZYk(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.ZYk.tB.ZYk.oJ oJVar = null;
        while (true) {
            boolean z10 = false;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                nextName.hashCode();
                if (!nextName.equals("v")) {
                    if (!nextName.equals("ty")) {
                        jsonReader.skipValue();
                    } else if (jsonReader.nextInt() == 0) {
                        z10 = true;
                    }
                } else if (z10) {
                    oJVar = new com.bytedance.adsdk.ZYk.tB.ZYk.oJ(ex.oJ(jsonReader, cfz));
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            return oJVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.oJ oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        com.bytedance.adsdk.ZYk.tB.ZYk.oJ oJVar = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("ef")) {
                jsonReader.skipValue();
            } else {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    com.bytedance.adsdk.ZYk.tB.ZYk.oJ ZYk = ZYk(jsonReader, cfz);
                    if (ZYk != null) {
                        oJVar = ZYk;
                    }
                }
                jsonReader.endArray();
            }
        }
        return oJVar;
    }
}
