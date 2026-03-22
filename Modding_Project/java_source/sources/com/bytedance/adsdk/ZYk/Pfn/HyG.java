package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import java.io.IOException;
/* loaded from: classes3.dex */
class HyG {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.si oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        String str = null;
        com.bytedance.adsdk.ZYk.tB.oJ.so soVar = null;
        int i10 = 0;
        boolean z10 = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 3324:
                    if (nextName.equals("hd")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3432:
                    if (nextName.equals("ks")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 104415:
                    if (nextName.equals("ind")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    z10 = jsonReader.nextBoolean();
                    break;
                case 1:
                    soVar = ex.Pfn(jsonReader, cfz);
                    break;
                case 2:
                    str = jsonReader.nextString();
                    break;
                case 3:
                    i10 = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.ZYk.tB.ZYk.si(str, i10, soVar, z10);
    }
}
