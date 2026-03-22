package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import com.bytedance.adsdk.ZYk.tB.ZYk.jFA;
import java.io.IOException;
/* loaded from: classes3.dex */
class Xe {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.jFA oJ(JsonReader jsonReader) throws IOException {
        String str = null;
        jFA.oJ oJVar = null;
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
                case 3488:
                    if (nextName.equals("mm")) {
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
            }
            switch (c10) {
                case 0:
                    z10 = jsonReader.nextBoolean();
                    break;
                case 1:
                    oJVar = jFA.oJ.oJ(jsonReader.nextInt());
                    break;
                case 2:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.ZYk.tB.ZYk.jFA(str, oJVar, z10);
    }
}
