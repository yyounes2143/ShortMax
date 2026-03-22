package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class Jc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.BTZ oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        String str = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.BTZ btz = null;
        boolean z10 = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 99:
                    if (nextName.equals("c")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 111:
                    if (nextName.equals("o")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 3710:
                    if (nextName.equals("tr")) {
                        c10 = 4;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    zYk = ex.oJ(jsonReader, cfz, false);
                    break;
                case 1:
                    zYk2 = ex.oJ(jsonReader, cfz, false);
                    break;
                case 2:
                    z10 = jsonReader.nextBoolean();
                    break;
                case 3:
                    str = jsonReader.nextString();
                    break;
                case 4:
                    btz = tB.oJ(jsonReader, cfz);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.ZYk.tB.ZYk.BTZ(str, zYk, zYk2, btz, z10);
    }
}
