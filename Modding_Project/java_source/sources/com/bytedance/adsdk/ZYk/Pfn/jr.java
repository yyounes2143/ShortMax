package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import com.bytedance.adsdk.ZYk.tB.ZYk.so;
import java.io.IOException;
/* loaded from: classes3.dex */
class jr {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.so oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        boolean z10;
        boolean z11;
        jsonReader.beginObject();
        so.oJ oJVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.so soVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ex exVar = null;
        boolean z12 = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            switch (nextName.hashCode()) {
                case 111:
                    if (nextName.equals("o")) {
                        z10 = false;
                        break;
                    }
                    z10 = true;
                    break;
                case 3588:
                    if (nextName.equals("pt")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                case 104433:
                    if (nextName.equals("inv")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                case 3357091:
                    if (nextName.equals("mode")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                default:
                    z10 = true;
                    break;
            }
            switch (z10) {
                case false:
                    exVar = ex.ZYk(jsonReader, cfz);
                    break;
                case true:
                    soVar = ex.Pfn(jsonReader, cfz);
                    break;
                case true:
                    z12 = jsonReader.nextBoolean();
                    break;
                case true:
                    String nextString = jsonReader.nextString();
                    nextString.hashCode();
                    switch (nextString.hashCode()) {
                        case 97:
                            if (nextString.equals("a")) {
                                z11 = false;
                                break;
                            }
                            z11 = true;
                            break;
                        case 105:
                            if (nextString.equals("i")) {
                                z11 = true;
                                break;
                            }
                            z11 = true;
                            break;
                        case 110:
                            if (nextString.equals("n")) {
                                z11 = true;
                                break;
                            }
                            z11 = true;
                            break;
                        case 115:
                            if (nextString.equals("s")) {
                                z11 = true;
                                break;
                            }
                            z11 = true;
                            break;
                        default:
                            z11 = true;
                            break;
                    }
                    switch (z11) {
                        case false:
                            oJVar = so.oJ.MASK_MODE_ADD;
                            continue;
                        case true:
                            cfz.oJ("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                            oJVar = so.oJ.MASK_MODE_INTERSECT;
                            continue;
                        case true:
                            oJVar = so.oJ.MASK_MODE_NONE;
                            continue;
                        case true:
                            oJVar = so.oJ.MASK_MODE_SUBTRACT;
                            continue;
                        default:
                            oJVar = so.oJ.MASK_MODE_ADD;
                            continue;
                    }
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.bytedance.adsdk.ZYk.tB.ZYk.so(oJVar, soVar, exVar, z12);
    }
}
