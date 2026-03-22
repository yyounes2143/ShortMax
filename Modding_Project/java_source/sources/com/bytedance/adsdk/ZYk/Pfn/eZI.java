package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.Path;
import android.util.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.io.IOException;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class eZI {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.Pfn oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        com.bytedance.adsdk.ZYk.tB.oJ.ex exVar;
        char c10;
        Path.FillType fillType;
        com.bytedance.adsdk.ZYk.tB.ZYk.cFZ cfz2;
        com.bytedance.adsdk.ZYk.tB.oJ.ex exVar2 = null;
        Path.FillType fillType2 = Path.FillType.WINDING;
        String str = null;
        com.bytedance.adsdk.ZYk.tB.ZYk.cFZ cfz3 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.tB tBVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ba baVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ba baVar2 = null;
        boolean z10 = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            switch (nextName.hashCode()) {
                case 101:
                    if (nextName.equals("e")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 103:
                    if (nextName.equals("g")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 111:
                    if (nextName.equals("o")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 114:
                    if (nextName.equals("r")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 115:
                    if (nextName.equals("s")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 116:
                    if (nextName.equals(IVideoEventLogger.LOG_CALLBACK_TIME)) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c10 = 6;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c10 = 7;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    baVar2 = ex.tB(jsonReader, cfz);
                    break;
                case 1:
                    jsonReader.beginObject();
                    int i10 = -1;
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        nextName2.hashCode();
                        if (!nextName2.equals(CampaignEx.JSON_KEY_AD_K)) {
                            if (!nextName2.equals(TtmlNode.TAG_P)) {
                                jsonReader.skipValue();
                            } else {
                                i10 = jsonReader.nextInt();
                            }
                        } else {
                            tBVar = ex.oJ(jsonReader, cfz, i10);
                        }
                    }
                    jsonReader.endObject();
                    break;
                case 2:
                    exVar2 = ex.ZYk(jsonReader, cfz);
                    break;
                case 3:
                    if (jsonReader.nextInt() == 1) {
                        fillType = Path.FillType.WINDING;
                    } else {
                        fillType = Path.FillType.EVEN_ODD;
                    }
                    fillType2 = fillType;
                    break;
                case 4:
                    baVar = ex.tB(jsonReader, cfz);
                    break;
                case 5:
                    if (jsonReader.nextInt() == 1) {
                        cfz2 = com.bytedance.adsdk.ZYk.tB.ZYk.cFZ.LINEAR;
                    } else {
                        cfz2 = com.bytedance.adsdk.ZYk.tB.ZYk.cFZ.RADIAL;
                    }
                    cfz3 = cfz2;
                    break;
                case 6:
                    z10 = jsonReader.nextBoolean();
                    break;
                case 7:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        if (exVar2 == null) {
            exVar = new com.bytedance.adsdk.ZYk.tB.oJ.ex(Collections.singletonList(new com.bytedance.adsdk.ZYk.cFZ.oJ(100)));
        } else {
            exVar = exVar2;
        }
        return new com.bytedance.adsdk.ZYk.tB.ZYk.Pfn(str, cfz3, fillType2, tBVar, exVar, baVar, baVar2, null, null, z10);
    }
}
