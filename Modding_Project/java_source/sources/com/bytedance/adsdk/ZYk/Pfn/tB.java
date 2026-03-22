package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
/* loaded from: classes3.dex */
public class tB {
    private static boolean ZYk(com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk) {
        if (zYk != null) {
            if (!zYk.ZYk() || ((Float) ((com.bytedance.adsdk.ZYk.cFZ.oJ) zYk.tB().get(0)).oJ).floatValue() != 0.0f) {
                return false;
            }
            return true;
        }
        return true;
    }

    public static com.bytedance.adsdk.ZYk.tB.oJ.BTZ oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        boolean z10 = jsonReader.peek() == JsonToken.BEGIN_OBJECT;
        if (z10) {
            jsonReader.beginObject();
        }
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk = null;
        com.bytedance.adsdk.ZYk.tB.oJ.Pfn pfn = null;
        com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> piB = null;
        com.bytedance.adsdk.ZYk.tB.oJ.cFZ cfz2 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk3 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ex exVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk4 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk5 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 97:
                    if (nextName.equals("a")) {
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
                case 112:
                    if (nextName.equals(TtmlNode.TAG_P)) {
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
                case 115:
                    if (nextName.equals("s")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 3242:
                    if (nextName.equals("eo")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 3656:
                    if (nextName.equals("rz")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 3662:
                    if (nextName.equals("sa")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 3672:
                    if (nextName.equals("sk")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 3676:
                    if (nextName.equals(SRStrategy.KEY_SR_OPEN)) {
                        c10 = '\t';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        nextName2.hashCode();
                        if (!nextName2.equals(CampaignEx.JSON_KEY_AD_K)) {
                            jsonReader.skipValue();
                        } else {
                            pfn = oJ.oJ(jsonReader, cfz);
                        }
                    }
                    jsonReader.endObject();
                    continue;
                case 1:
                    exVar = ex.ZYk(jsonReader, cfz);
                    continue;
                case 2:
                    piB = oJ.ZYk(jsonReader, cfz);
                    continue;
                case 3:
                    break;
                case 4:
                    cfz2 = ex.ex(jsonReader, cfz);
                    continue;
                case 5:
                    zYk5 = ex.oJ(jsonReader, cfz, false);
                    continue;
                case 6:
                    cfz.oJ("Lottie doesn't support 3D layers.");
                    break;
                case 7:
                    zYk3 = ex.oJ(jsonReader, cfz, false);
                    continue;
                case '\b':
                    zYk2 = ex.oJ(jsonReader, cfz, false);
                    continue;
                case '\t':
                    zYk4 = ex.oJ(jsonReader, cfz, false);
                    continue;
                default:
                    jsonReader.skipValue();
                    continue;
            }
            com.bytedance.adsdk.ZYk.tB.oJ.ZYk oJ = ex.oJ(jsonReader, cfz, false);
            if (oJ.tB().isEmpty()) {
                oJ.tB().add(new com.bytedance.adsdk.ZYk.cFZ.oJ(cfz, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(cfz.cFZ())));
            } else if (((com.bytedance.adsdk.ZYk.cFZ.oJ) oJ.tB().get(0)).oJ == 0) {
                oJ.tB().set(0, new com.bytedance.adsdk.ZYk.cFZ.oJ(cfz, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(cfz.cFZ())));
            }
            zYk = oJ;
        }
        if (z10) {
            jsonReader.endObject();
        }
        com.bytedance.adsdk.ZYk.tB.oJ.Pfn pfn2 = oJ(pfn) ? null : pfn;
        if (oJ(piB)) {
            piB = null;
        }
        return new com.bytedance.adsdk.ZYk.tB.oJ.BTZ(pfn2, piB, oJ(cfz2) ? null : cfz2, oJ(zYk) ? null : zYk, exVar, zYk4, zYk5, ZYk(zYk2) ? null : zYk2, tB(zYk3) ? null : zYk3);
    }

    private static boolean tB(com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk) {
        if (zYk != null) {
            if (!zYk.ZYk() || ((Float) ((com.bytedance.adsdk.ZYk.cFZ.oJ) zYk.tB().get(0)).oJ).floatValue() != 0.0f) {
                return false;
            }
            return true;
        }
        return true;
    }

    private static boolean oJ(com.bytedance.adsdk.ZYk.tB.oJ.Pfn pfn) {
        if (pfn != null) {
            return pfn.ZYk() && pfn.tB().get(0).oJ.equals(0.0f, 0.0f);
        }
        return true;
    }

    private static boolean oJ(com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> piB) {
        if (piB != null) {
            return !(piB instanceof com.bytedance.adsdk.ZYk.tB.oJ.jFA) && piB.ZYk() && piB.tB().get(0).oJ.equals(0.0f, 0.0f);
        }
        return true;
    }

    private static boolean oJ(com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk) {
        if (zYk != null) {
            return zYk.ZYk() && ((Float) ((com.bytedance.adsdk.ZYk.cFZ.oJ) zYk.tB().get(0)).oJ).floatValue() == 0.0f;
        }
        return true;
    }

    private static boolean oJ(com.bytedance.adsdk.ZYk.tB.oJ.cFZ cfz) {
        if (cfz != null) {
            return cfz.ZYk() && ((com.bytedance.adsdk.ZYk.cFZ.tB) ((com.bytedance.adsdk.ZYk.cFZ.oJ) cfz.tB().get(0)).oJ).ZYk(1.0f, 1.0f);
        }
        return true;
    }
}
