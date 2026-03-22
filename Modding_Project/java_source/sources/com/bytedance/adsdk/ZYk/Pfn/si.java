package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import com.bytedance.adsdk.ZYk.tB.ZYk.Ry;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class si {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.ba oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        com.bytedance.adsdk.ZYk.tB.oJ.ex exVar;
        int i10;
        com.bytedance.adsdk.ZYk.tB.ZYk.cFZ cfz2;
        int i11;
        int i12;
        com.bytedance.adsdk.ZYk.tB.ZYk.cFZ cfz3;
        int i13 = 1;
        ArrayList arrayList = new ArrayList();
        float f10 = 0.0f;
        String str = null;
        com.bytedance.adsdk.ZYk.tB.ZYk.cFZ cfz4 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.tB tBVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ba baVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ba baVar2 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk = null;
        Ry.oJ oJVar = null;
        Ry.ZYk zYk2 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk3 = null;
        boolean z10 = false;
        com.bytedance.adsdk.ZYk.tB.oJ.ex exVar2 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            switch (nextName.hashCode()) {
                case 100:
                    if (nextName.equals("d")) {
                        i10 = 0;
                        break;
                    }
                    i10 = -1;
                    break;
                case 101:
                    if (nextName.equals("e")) {
                        i10 = i13;
                        break;
                    }
                    i10 = -1;
                    break;
                case 103:
                    if (nextName.equals("g")) {
                        i10 = 2;
                        break;
                    }
                    i10 = -1;
                    break;
                case 111:
                    if (nextName.equals("o")) {
                        i10 = 3;
                        break;
                    }
                    i10 = -1;
                    break;
                case 115:
                    if (nextName.equals("s")) {
                        i10 = 4;
                        break;
                    }
                    i10 = -1;
                    break;
                case 116:
                    if (nextName.equals(IVideoEventLogger.LOG_CALLBACK_TIME)) {
                        i10 = 5;
                        break;
                    }
                    i10 = -1;
                    break;
                case 119:
                    if (nextName.equals(SRStrategy.MEDIAINFO_KEY_WIDTH)) {
                        i10 = 6;
                        break;
                    }
                    i10 = -1;
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        i10 = 7;
                        break;
                    }
                    i10 = -1;
                    break;
                case 3447:
                    if (nextName.equals("lc")) {
                        i10 = 8;
                        break;
                    }
                    i10 = -1;
                    break;
                case 3454:
                    if (nextName.equals("lj")) {
                        i10 = 9;
                        break;
                    }
                    i10 = -1;
                    break;
                case 3487:
                    if (nextName.equals("ml")) {
                        i10 = 10;
                        break;
                    }
                    i10 = -1;
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        i10 = 11;
                        break;
                    }
                    i10 = -1;
                    break;
                default:
                    i10 = -1;
                    break;
            }
            switch (i10) {
                case 0:
                    cfz2 = cfz4;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk4 = null;
                        String str2 = null;
                        while (jsonReader.hasNext()) {
                            String nextName2 = jsonReader.nextName();
                            nextName2.hashCode();
                            if (!nextName2.equals("n")) {
                                if (!nextName2.equals("v")) {
                                    jsonReader.skipValue();
                                } else {
                                    zYk4 = ex.oJ(jsonReader, cfz);
                                }
                            } else {
                                str2 = jsonReader.nextString();
                            }
                        }
                        jsonReader.endObject();
                        if (str2.equals("o")) {
                            zYk3 = zYk4;
                            i13 = 1;
                        } else {
                            if (str2.equals("d") || str2.equals("g")) {
                                i12 = 1;
                                cfz.oJ(true);
                                arrayList.add(zYk4);
                            } else {
                                i12 = 1;
                            }
                            i13 = i12;
                        }
                    }
                    i11 = i13;
                    jsonReader.endArray();
                    if (arrayList.size() == i11) {
                        arrayList.add(arrayList.get(0));
                        i13 = i11;
                        break;
                    }
                    i13 = i11;
                    break;
                case 1:
                    baVar2 = ex.tB(jsonReader, cfz);
                    continue;
                case 2:
                    cfz2 = cfz4;
                    jsonReader.beginObject();
                    int i14 = -1;
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        nextName3.hashCode();
                        if (!nextName3.equals(CampaignEx.JSON_KEY_AD_K)) {
                            if (!nextName3.equals(TtmlNode.TAG_P)) {
                                jsonReader.skipValue();
                            } else {
                                i14 = jsonReader.nextInt();
                            }
                        } else {
                            tBVar = ex.oJ(jsonReader, cfz, i14);
                        }
                    }
                    jsonReader.endObject();
                    break;
                case 3:
                    exVar2 = ex.ZYk(jsonReader, cfz);
                    continue;
                case 4:
                    baVar = ex.tB(jsonReader, cfz);
                    continue;
                case 5:
                    if (jsonReader.nextInt() == i13) {
                        cfz3 = com.bytedance.adsdk.ZYk.tB.ZYk.cFZ.LINEAR;
                    } else {
                        cfz3 = com.bytedance.adsdk.ZYk.tB.ZYk.cFZ.RADIAL;
                    }
                    cfz4 = cfz3;
                    continue;
                case 6:
                    zYk = ex.oJ(jsonReader, cfz);
                    continue;
                case 7:
                    z10 = jsonReader.nextBoolean();
                    continue;
                case 8:
                    oJVar = Ry.oJ.values()[jsonReader.nextInt() - i13];
                    continue;
                case 9:
                    zYk2 = Ry.ZYk.values()[jsonReader.nextInt() - i13];
                    continue;
                case 10:
                    cfz2 = cfz4;
                    f10 = (float) jsonReader.nextDouble();
                    break;
                case 11:
                    str = jsonReader.nextString();
                    continue;
                default:
                    jsonReader.skipValue();
                    i11 = i13;
                    cfz2 = cfz4;
                    i13 = i11;
                    break;
            }
            cfz4 = cfz2;
        }
        com.bytedance.adsdk.ZYk.tB.ZYk.cFZ cfz5 = cfz4;
        if (exVar2 == null) {
            exVar = new com.bytedance.adsdk.ZYk.tB.oJ.ex(Collections.singletonList(new com.bytedance.adsdk.ZYk.cFZ.oJ(100)));
        } else {
            exVar = exVar2;
        }
        return new com.bytedance.adsdk.ZYk.tB.ZYk.ba(str, cfz5, tBVar, exVar, baVar, baVar2, zYk, oJVar, zYk2, f10, arrayList, zYk3, z10);
    }
}
