package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes3.dex */
class PiB {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.ex oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        double d10 = 0.0d;
        String str = null;
        String str2 = null;
        char c10 = 0;
        double d11 = 0.0d;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c11 = 65535;
            switch (nextName.hashCode()) {
                case -1866931350:
                    if (nextName.equals("fFamily")) {
                        c11 = 0;
                        break;
                    }
                    break;
                case 119:
                    if (nextName.equals(SRStrategy.MEDIAINFO_KEY_WIDTH)) {
                        c11 = 1;
                        break;
                    }
                    break;
                case 3173:
                    if (nextName.equals("ch")) {
                        c11 = 2;
                        break;
                    }
                    break;
                case 3076010:
                    if (nextName.equals("data")) {
                        c11 = 3;
                        break;
                    }
                    break;
                case 3530753:
                    if (nextName.equals("size")) {
                        c11 = 4;
                        break;
                    }
                    break;
                case 109780401:
                    if (nextName.equals(TtmlNode.TAG_STYLE)) {
                        c11 = 5;
                        break;
                    }
                    break;
            }
            switch (c11) {
                case 0:
                    str2 = jsonReader.nextString();
                    break;
                case 1:
                    d10 = jsonReader.nextDouble();
                    break;
                case 2:
                    c10 = jsonReader.nextString().charAt(0);
                    break;
                case 3:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if ("shapes".equals(jsonReader.nextName())) {
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                arrayList.add((com.bytedance.adsdk.ZYk.tB.ZYk.eZI) so.oJ(jsonReader, cfz));
                            }
                            jsonReader.endArray();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                case 4:
                    d11 = jsonReader.nextDouble();
                    break;
                case 5:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.bytedance.adsdk.ZYk.tB.ex(arrayList, c10, d11, d10, str, str2);
    }
}
