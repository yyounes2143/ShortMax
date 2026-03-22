package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import java.io.IOException;
/* loaded from: classes3.dex */
class WcQ {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.tB oJ(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        String str = null;
        String str2 = null;
        float f10 = 0.0f;
        String str3 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1866931350:
                    if (nextName.equals("fFamily")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1408684838:
                    if (nextName.equals("ascent")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1294566165:
                    if (nextName.equals("fStyle")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 96619537:
                    if (nextName.equals("fName")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    str = jsonReader.nextString();
                    break;
                case 1:
                    f10 = (float) jsonReader.nextDouble();
                    break;
                case 2:
                    str2 = jsonReader.nextString();
                    break;
                case 3:
                    str3 = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.bytedance.adsdk.ZYk.tB.tB(str, str3, str2, f10);
    }
}
