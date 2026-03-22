package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
/* loaded from: classes3.dex */
public class ZYk {
    private static com.bytedance.adsdk.ZYk.tB.oJ.dLZ ZYk(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.ZYk.tB.oJ.oJ oJVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.oJ oJVar2 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 116:
                    if (nextName.equals(IVideoEventLogger.LOG_CALLBACK_TIME)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3261:
                    if (nextName.equals("fc")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3664:
                    if (nextName.equals(SRStrategy.KEY_SR_STRATEGY_CONFIG)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3684:
                    if (nextName.equals("sw")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    zYk2 = ex.oJ(jsonReader, cfz);
                    break;
                case 1:
                    oJVar = ex.cFZ(jsonReader, cfz);
                    break;
                case 2:
                    oJVar2 = ex.cFZ(jsonReader, cfz);
                    break;
                case 3:
                    zYk = ex.oJ(jsonReader, cfz);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.bytedance.adsdk.ZYk.tB.oJ.dLZ(oJVar, oJVar2, zYk, zYk2);
    }

    public static com.bytedance.adsdk.ZYk.tB.oJ.dLZ oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.ZYk.tB.oJ.dLZ dlz = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("a")) {
                jsonReader.skipValue();
            } else {
                dlz = ZYk(jsonReader, cfz);
            }
        }
        jsonReader.endObject();
        if (dlz == null) {
            return new com.bytedance.adsdk.ZYk.tB.oJ.dLZ(null, null, null, null);
        }
        return dlz;
    }
}
