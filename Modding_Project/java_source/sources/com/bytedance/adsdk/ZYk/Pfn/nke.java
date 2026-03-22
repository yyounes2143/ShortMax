package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.PointF;
import android.util.JsonReader;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class nke {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.dLZ oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        String str = null;
        com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> piB = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ba baVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk = null;
        boolean z10 = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 112:
                    if (nextName.equals(TtmlNode.TAG_P)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 114:
                    if (nextName.equals("r")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 115:
                    if (nextName.equals("s")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c10 = 4;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    piB = oJ.ZYk(jsonReader, cfz);
                    break;
                case 1:
                    zYk = ex.oJ(jsonReader, cfz);
                    break;
                case 2:
                    baVar = ex.tB(jsonReader, cfz);
                    break;
                case 3:
                    z10 = jsonReader.nextBoolean();
                    break;
                case 4:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.ZYk.tB.ZYk.dLZ(str, piB, baVar, zYk, z10);
    }
}
