package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import java.io.IOException;
/* loaded from: classes3.dex */
public class dLZ {
    private com.bytedance.adsdk.ZYk.tB.oJ.ZYk Pfn;
    private com.bytedance.adsdk.ZYk.tB.oJ.ZYk ZYk;
    private com.bytedance.adsdk.ZYk.tB.oJ.ZYk ex;
    private com.bytedance.adsdk.ZYk.tB.oJ.oJ oJ;
    private com.bytedance.adsdk.ZYk.tB.oJ.ZYk tB;

    private void ZYk(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("v")) {
                if (!nextName.equals("nm")) {
                    jsonReader.skipValue();
                } else {
                    str = jsonReader.nextString();
                }
            } else {
                str.hashCode();
                char c10 = 65535;
                switch (str.hashCode()) {
                    case 353103893:
                        if (str.equals("Distance")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 397447147:
                        if (str.equals("Opacity")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 1041377119:
                        if (str.equals("Direction")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1379387491:
                        if (str.equals("Shadow Color")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1383710113:
                        if (str.equals("Softness")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        this.ex = ex.oJ(jsonReader, cfz);
                        continue;
                    case 1:
                        this.ZYk = ex.oJ(jsonReader, cfz, false);
                        continue;
                    case 2:
                        this.tB = ex.oJ(jsonReader, cfz, false);
                        continue;
                    case 3:
                        this.oJ = ex.cFZ(jsonReader, cfz);
                        continue;
                    case 4:
                        this.Pfn = ex.oJ(jsonReader, cfz);
                        continue;
                    default:
                        jsonReader.skipValue();
                        continue;
                }
            }
        }
        jsonReader.endObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public kkU oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk3;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk4;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("ef")) {
                jsonReader.skipValue();
            } else {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    ZYk(jsonReader, cfz);
                }
                jsonReader.endArray();
            }
        }
        com.bytedance.adsdk.ZYk.tB.oJ.oJ oJVar = this.oJ;
        if (oJVar != null && (zYk = this.ZYk) != null && (zYk2 = this.tB) != null && (zYk3 = this.ex) != null && (zYk4 = this.Pfn) != null) {
            return new kkU(oJVar, zYk, zYk2, zYk3, zYk4);
        }
        return null;
    }
}
