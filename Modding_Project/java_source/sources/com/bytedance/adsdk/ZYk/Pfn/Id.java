package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.Color;
import android.graphics.Rect;
import android.util.JsonReader;
import com.bytedance.adsdk.ZYk.tB.tB.Pfn;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.net.DNSParser;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes3.dex */
public class Id {

    /* renamed from: com.bytedance.adsdk.ZYk.Pfn.Id$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[Pfn.ZYk.values().length];
            oJ = iArr;
            try {
                iArr[Pfn.ZYk.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[Pfn.ZYk.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static com.bytedance.adsdk.ZYk.tB.tB.Pfn oJ(com.bytedance.adsdk.ZYk.cFZ cfz) {
        Rect ex = cfz.ex();
        return new com.bytedance.adsdk.ZYk.tB.tB.Pfn(Collections.emptyList(), cfz, "__container", -1L, Pfn.oJ.PRE_COMP, -1L, null, Collections.emptyList(), new com.bytedance.adsdk.ZYk.tB.oJ.BTZ(), 0, 0, 0, 0.0f, 0.0f, ex.width(), ex.height(), null, null, Collections.emptyList(), Pfn.ZYk.NONE, null, false, null, null);
    }

    public static com.bytedance.adsdk.ZYk.tB.tB.Pfn oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        ArrayList arrayList;
        String str;
        int i10 = 2;
        int i11 = 1;
        Pfn.ZYk zYk = Pfn.ZYk.NONE;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        jsonReader.beginObject();
        long j10 = 0;
        boolean z10 = false;
        Float valueOf = Float.valueOf(0.0f);
        Float valueOf2 = Float.valueOf(1.0f);
        Pfn.ZYk zYk2 = zYk;
        com.bytedance.adsdk.ZYk.tB.oJ.BTZ btz = null;
        com.bytedance.adsdk.ZYk.tB.oJ.kkU kku = null;
        com.bytedance.adsdk.ZYk.tB.oJ.dLZ dlz = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk3 = null;
        com.bytedance.adsdk.ZYk.tB.ZYk.oJ oJVar = null;
        kkU kku2 = null;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        boolean z11 = false;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        long j11 = -1;
        float f14 = 1.0f;
        Pfn.oJ oJVar2 = null;
        String str2 = null;
        float f15 = 0.0f;
        String str3 = "UNSET";
        String str4 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            int i15 = -1;
            switch (nextName.hashCode()) {
                case -995424086:
                    if (nextName.equals("parent")) {
                        i15 = z10 ? 1 : 0;
                        break;
                    }
                    break;
                case -903568142:
                    if (nextName.equals("shapes")) {
                        i15 = i11;
                        break;
                    }
                    break;
                case 104:
                    if (nextName.equals("h")) {
                        i15 = i10;
                        break;
                    }
                    break;
                case 116:
                    if (nextName.equals(IVideoEventLogger.LOG_CALLBACK_TIME)) {
                        i15 = 3;
                        break;
                    }
                    break;
                case 119:
                    if (nextName.equals(SRStrategy.MEDIAINFO_KEY_WIDTH)) {
                        i15 = 4;
                        break;
                    }
                    break;
                case 3177:
                    if (nextName.equals("cl")) {
                        i15 = 5;
                        break;
                    }
                    break;
                case 3233:
                    if (nextName.equals("ef")) {
                        i15 = 6;
                        break;
                    }
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        i15 = 7;
                        break;
                    }
                    break;
                case 3367:
                    if (nextName.equals(DNSParser.DNS_RESULT_IP)) {
                        i15 = 8;
                        break;
                    }
                    break;
                case 3432:
                    if (nextName.equals("ks")) {
                        i15 = 9;
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        i15 = 10;
                        break;
                    }
                    break;
                case 3553:
                    if (nextName.equals("op")) {
                        i15 = 11;
                        break;
                    }
                    break;
                case 3664:
                    if (nextName.equals(SRStrategy.KEY_SR_STRATEGY_CONFIG)) {
                        i15 = 12;
                        break;
                    }
                    break;
                case 3669:
                    if (nextName.equals("sh")) {
                        i15 = 13;
                        break;
                    }
                    break;
                case 3679:
                    if (nextName.equals(IVideoEventLogger.FEATURE_KEY_SR)) {
                        i15 = 14;
                        break;
                    }
                    break;
                case 3681:
                    if (nextName.equals("st")) {
                        i15 = 15;
                        break;
                    }
                    break;
                case 3684:
                    if (nextName.equals("sw")) {
                        i15 = 16;
                        break;
                    }
                    break;
                case 3705:
                    if (nextName.equals("tm")) {
                        i15 = 17;
                        break;
                    }
                    break;
                case 3712:
                    if (nextName.equals(TtmlNode.TAG_TT)) {
                        i15 = 18;
                        break;
                    }
                    break;
                case 3717:
                    if (nextName.equals("ty")) {
                        i15 = 19;
                        break;
                    }
                    break;
                case 104415:
                    if (nextName.equals("ind")) {
                        i15 = 20;
                        break;
                    }
                    break;
                case 108390670:
                    if (nextName.equals("refId")) {
                        i15 = 21;
                        break;
                    }
                    break;
                case 1441620890:
                    if (nextName.equals("masksProperties")) {
                        i15 = 22;
                        break;
                    }
                    break;
            }
            switch (i15) {
                case 0:
                    j11 = jsonReader.nextInt();
                    i10 = 2;
                    i11 = 1;
                    z10 = false;
                    break;
                case 1:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        com.bytedance.adsdk.ZYk.tB.ZYk.tB oJ = so.oJ(jsonReader, cfz);
                        if (oJ != null) {
                            arrayList3.add(oJ);
                        }
                    }
                    jsonReader.endArray();
                    i10 = 2;
                    i11 = 1;
                    z10 = false;
                    break;
                case 2:
                    f12 = (float) (jsonReader.nextDouble() * com.bytedance.adsdk.ZYk.ba.ba.oJ());
                    i10 = 2;
                    i11 = 1;
                    z10 = false;
                    break;
                case 3:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        nextName2.hashCode();
                        if (nextName2.equals("a")) {
                            jsonReader.beginArray();
                            if (jsonReader.hasNext()) {
                                dlz = ZYk.oJ(jsonReader, cfz);
                            }
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                            jsonReader.endArray();
                        } else if (!nextName2.equals("d")) {
                            jsonReader.skipValue();
                        } else {
                            kku = ex.ba(jsonReader, cfz);
                        }
                    }
                    jsonReader.endObject();
                    i10 = 2;
                    i11 = 1;
                    z10 = false;
                    break;
                case 4:
                    f11 = (float) (jsonReader.nextDouble() * com.bytedance.adsdk.ZYk.ba.ba.oJ());
                    i10 = 2;
                    i11 = 1;
                    z10 = false;
                    break;
                case 5:
                    str4 = jsonReader.nextString();
                    i10 = 2;
                    i11 = 1;
                    break;
                case 6:
                    jsonReader.beginArray();
                    ArrayList arrayList4 = new ArrayList();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName3 = jsonReader.nextName();
                            nextName3.hashCode();
                            if (!nextName3.equals("nm")) {
                                if (!nextName3.equals("ty")) {
                                    jsonReader.skipValue();
                                } else {
                                    int nextInt = jsonReader.nextInt();
                                    if (nextInt == 29) {
                                        oJVar = Pfn.oJ(jsonReader, cfz);
                                    } else if (nextInt == 25) {
                                        kku2 = new dLZ().oJ(jsonReader, cfz);
                                    }
                                }
                            } else {
                                arrayList4.add(jsonReader.nextString());
                            }
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    cfz.oJ("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: ".concat(String.valueOf(arrayList4)));
                    i10 = 2;
                    i11 = 1;
                    break;
                case 7:
                    z11 = jsonReader.nextBoolean();
                    i10 = 2;
                    i11 = 1;
                    break;
                case 8:
                    f15 = (float) jsonReader.nextDouble();
                    i10 = 2;
                    i11 = 1;
                    break;
                case 9:
                    btz = tB.oJ(jsonReader, cfz);
                    i10 = 2;
                    i11 = 1;
                    break;
                case 10:
                    str3 = jsonReader.nextString();
                    i10 = 2;
                    i11 = 1;
                    break;
                case 11:
                    f13 = (float) jsonReader.nextDouble();
                    i10 = 2;
                    i11 = 1;
                    break;
                case 12:
                    i14 = Color.parseColor(jsonReader.nextString());
                    i10 = 2;
                    i11 = 1;
                    break;
                case 13:
                    i13 = (int) (jsonReader.nextInt() * com.bytedance.adsdk.ZYk.ba.ba.oJ());
                    i10 = 2;
                    i11 = 1;
                    break;
                case 14:
                    f14 = (float) jsonReader.nextDouble();
                    i10 = 2;
                    i11 = 1;
                    break;
                case 15:
                    f10 = (float) jsonReader.nextDouble();
                    i10 = 2;
                    i11 = 1;
                    break;
                case 16:
                    i12 = (int) (jsonReader.nextInt() * com.bytedance.adsdk.ZYk.ba.ba.oJ());
                    break;
                case 17:
                    zYk3 = ex.oJ(jsonReader, cfz, z10);
                    break;
                case 18:
                    int nextInt2 = jsonReader.nextInt();
                    if (nextInt2 >= Pfn.ZYk.values().length) {
                        cfz.oJ("Unsupported matte type: ".concat(String.valueOf(nextInt2)));
                        i10 = 2;
                        i11 = 1;
                        z10 = false;
                        break;
                    } else {
                        zYk2 = Pfn.ZYk.values()[nextInt2];
                        int i16 = AnonymousClass1.oJ[zYk2.ordinal()];
                        if (i16 == i11) {
                            cfz.oJ("Unsupported matte type: Luma");
                        } else if (i16 == i10) {
                            cfz.oJ("Unsupported matte type: Luma Inverted");
                        }
                        cfz.oJ(i11);
                        break;
                    }
                case 19:
                    int nextInt3 = jsonReader.nextInt();
                    oJVar2 = Pfn.oJ.UNKNOWN;
                    if (nextInt3 >= oJVar2.ordinal()) {
                        break;
                    } else {
                        oJVar2 = Pfn.oJ.values()[nextInt3];
                        break;
                    }
                case 20:
                    j10 = jsonReader.nextInt();
                    break;
                case 21:
                    str2 = jsonReader.nextString();
                    break;
                case 22:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList2.add(jr.oJ(jsonReader, cfz));
                    }
                    cfz.oJ(arrayList2.size());
                    jsonReader.endArray();
                    i10 = 2;
                    i11 = 1;
                    z10 = false;
                    break;
                default:
                    jsonReader.skipValue();
                    i10 = 2;
                    i11 = 1;
                    z10 = false;
                    break;
            }
        }
        jsonReader.endObject();
        ArrayList arrayList5 = new ArrayList();
        if (f15 > 0.0f) {
            arrayList = arrayList2;
            str = str4;
            arrayList5.add(new com.bytedance.adsdk.ZYk.cFZ.oJ(cfz, valueOf, valueOf, null, 0.0f, Float.valueOf(f15)));
        } else {
            arrayList = arrayList2;
            str = str4;
        }
        if (f13 <= 0.0f) {
            f13 = cfz.cFZ();
        }
        arrayList5.add(new com.bytedance.adsdk.ZYk.cFZ.oJ(cfz, valueOf2, valueOf2, null, f15, Float.valueOf(f13)));
        arrayList5.add(new com.bytedance.adsdk.ZYk.cFZ.oJ(cfz, valueOf, valueOf, null, f13, Float.valueOf(Float.MAX_VALUE)));
        if (str3.endsWith(".ai") || "ai".equals(str)) {
            cfz.oJ("Convert your Illustrator layers to shape layers.");
        }
        return new com.bytedance.adsdk.ZYk.tB.tB.Pfn(arrayList3, cfz, str3, j10, oJVar2, j11, str2, arrayList, btz, i12, i13, i14, f14, f10, f11, f12, kku, dlz, arrayList5, zYk2, zYk3, z11, oJVar, kku2);
    }
}
