package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import com.bytedance.adsdk.ZYk.tB.ZYk.RZ;
import java.io.IOException;
/* loaded from: classes3.dex */
class Rl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.RZ oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        String str = null;
        RZ.oJ oJVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk3 = null;
        boolean z10 = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 101:
                    if (nextName.equals("e")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 109:
                    if (nextName.equals("m")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 111:
                    if (nextName.equals("o")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 115:
                    if (nextName.equals("s")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c10 = 5;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    zYk2 = ex.oJ(jsonReader, cfz, false);
                    break;
                case 1:
                    oJVar = RZ.oJ.oJ(jsonReader.nextInt());
                    break;
                case 2:
                    zYk3 = ex.oJ(jsonReader, cfz, false);
                    break;
                case 3:
                    zYk = ex.oJ(jsonReader, cfz, false);
                    break;
                case 4:
                    z10 = jsonReader.nextBoolean();
                    break;
                case 5:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.ZYk.tB.ZYk.RZ(str, oJVar, zYk, zYk2, zYk3, z10);
    }
}
