package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.texturerender.TextureRenderKeys;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class oJ {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> ZYk(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.ZYk.tB.oJ.Pfn pfn = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2 = null;
        boolean z10 = false;
        while (jsonReader.peek() != JsonToken.END_OBJECT) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 107:
                    if (nextName.equals(CampaignEx.JSON_KEY_AD_K)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 120:
                    if (nextName.equals(TextureRenderKeys.KEY_IS_X)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 121:
                    if (nextName.equals(TextureRenderKeys.KEY_IS_Y)) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    pfn = oJ(jsonReader, cfz);
                    continue;
                case 1:
                    if (jsonReader.peek() == JsonToken.STRING) {
                        z10 = true;
                        break;
                    } else {
                        zYk = ex.oJ(jsonReader, cfz);
                        continue;
                    }
                case 2:
                    if (jsonReader.peek() == JsonToken.STRING) {
                        z10 = true;
                        break;
                    } else {
                        zYk2 = ex.oJ(jsonReader, cfz);
                        continue;
                    }
            }
            jsonReader.skipValue();
        }
        jsonReader.endObject();
        if (z10) {
            cfz.oJ("Lottie doesn't support expressions.");
        }
        if (pfn != null) {
            return pfn;
        }
        return new com.bytedance.adsdk.ZYk.tB.oJ.jFA(zYk, zYk2);
    }

    public static com.bytedance.adsdk.ZYk.tB.oJ.Pfn oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                arrayList.add(HL.oJ(jsonReader, cfz));
            }
            jsonReader.endArray();
            oq.oJ(arrayList);
        } else {
            arrayList.add(new com.bytedance.adsdk.ZYk.cFZ.oJ(RZ.ZYk(jsonReader, com.bytedance.adsdk.ZYk.ba.ba.oJ())));
        }
        return new com.bytedance.adsdk.ZYk.tB.oJ.Pfn(arrayList);
    }
}
