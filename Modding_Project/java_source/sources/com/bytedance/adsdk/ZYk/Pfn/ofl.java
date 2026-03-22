package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.Path;
import android.util.JsonReader;
import java.io.IOException;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ofl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.awB oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        Path.FillType fillType;
        com.bytedance.adsdk.ZYk.tB.oJ.ex exVar = null;
        String str = null;
        com.bytedance.adsdk.ZYk.tB.oJ.oJ oJVar = null;
        boolean z10 = false;
        boolean z11 = false;
        int i10 = 1;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -396065730:
                    if (nextName.equals("fillEnabled")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 99:
                    if (nextName.equals("c")) {
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
                case 114:
                    if (nextName.equals("r")) {
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
                    z10 = jsonReader.nextBoolean();
                    break;
                case 1:
                    oJVar = ex.cFZ(jsonReader, cfz);
                    break;
                case 2:
                    exVar = ex.ZYk(jsonReader, cfz);
                    break;
                case 3:
                    i10 = jsonReader.nextInt();
                    break;
                case 4:
                    z11 = jsonReader.nextBoolean();
                    break;
                case 5:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        if (exVar == null) {
            exVar = new com.bytedance.adsdk.ZYk.tB.oJ.ex(Collections.singletonList(new com.bytedance.adsdk.ZYk.cFZ.oJ(100)));
        }
        com.bytedance.adsdk.ZYk.tB.oJ.ex exVar2 = exVar;
        if (i10 == 1) {
            fillType = Path.FillType.WINDING;
        } else {
            fillType = Path.FillType.EVEN_ODD;
        }
        return new com.bytedance.adsdk.ZYk.tB.ZYk.awB(str, z10, fillType, oJVar, exVar2, z11);
    }
}
