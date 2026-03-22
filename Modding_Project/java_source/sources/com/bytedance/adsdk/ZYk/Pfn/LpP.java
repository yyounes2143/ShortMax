package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.PointF;
import android.util.JsonReader;
import com.bytedance.adsdk.ZYk.tB.ZYk.kkU;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class LpP {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.kkU oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz, int i10) throws IOException {
        boolean z10;
        if (i10 == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z11 = false;
        boolean z12 = z10;
        String str = null;
        kkU.oJ oJVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk = null;
        com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> piB = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk3 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk4 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk5 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk6 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 100:
                    if (nextName.equals("d")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 112:
                    if (nextName.equals(TtmlNode.TAG_P)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 114:
                    if (nextName.equals("r")) {
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
                case 3369:
                    if (nextName.equals("ir")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 3370:
                    if (nextName.equals("is")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 3555:
                    if (nextName.equals(SRStrategy.KEY_ORIGIN_RESOLUTION)) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 3556:
                    if (nextName.equals("os")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 3588:
                    if (nextName.equals("pt")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 3686:
                    if (nextName.equals("sy")) {
                        c10 = '\n';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    if (jsonReader.nextInt() == 3) {
                        z12 = true;
                        break;
                    } else {
                        z12 = false;
                        break;
                    }
                case 1:
                    piB = oJ.ZYk(jsonReader, cfz);
                    break;
                case 2:
                    zYk2 = ex.oJ(jsonReader, cfz, false);
                    break;
                case 3:
                    z11 = jsonReader.nextBoolean();
                    break;
                case 4:
                    zYk3 = ex.oJ(jsonReader, cfz);
                    break;
                case 5:
                    zYk5 = ex.oJ(jsonReader, cfz, false);
                    break;
                case 6:
                    str = jsonReader.nextString();
                    break;
                case 7:
                    zYk4 = ex.oJ(jsonReader, cfz);
                    break;
                case '\b':
                    zYk6 = ex.oJ(jsonReader, cfz, false);
                    break;
                case '\t':
                    zYk = ex.oJ(jsonReader, cfz, false);
                    break;
                case '\n':
                    oJVar = kkU.oJ.oJ(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.ZYk.tB.ZYk.kkU(str, oJVar, zYk, piB, zYk2, zYk3, zYk4, zYk5, zYk6, z11, z12);
    }
}
