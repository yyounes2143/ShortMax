package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import android.util.JsonToken;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
class oq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> List<com.bytedance.adsdk.ZYk.cFZ.oJ<T>> oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz, float f10, Jm<T> jm2, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.STRING) {
            cfz.oJ("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals(CampaignEx.JSON_KEY_AD_K)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                if (jsonReader.peek() == JsonToken.NUMBER) {
                    arrayList.add(QSm.oJ(jsonReader, cfz, f10, jm2, false, z10));
                } else {
                    while (jsonReader.hasNext()) {
                        arrayList.add(QSm.oJ(jsonReader, cfz, f10, jm2, true, z10));
                    }
                }
                jsonReader.endArray();
            } else {
                arrayList.add(QSm.oJ(jsonReader, cfz, f10, jm2, false, z10));
            }
        }
        jsonReader.endObject();
        oJ(arrayList);
        return arrayList;
    }

    public static <T> void oJ(List<? extends com.bytedance.adsdk.ZYk.cFZ.oJ<T>> list) {
        int i10;
        T t10;
        int size = list.size();
        int i11 = 0;
        while (true) {
            i10 = size - 1;
            if (i11 >= i10) {
                break;
            }
            com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJVar = list.get(i11);
            i11++;
            com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJVar2 = list.get(i11);
            oJVar.cFZ = Float.valueOf(oJVar2.f11507ba);
            if (oJVar.ZYk == null && (t10 = oJVar2.oJ) != null) {
                oJVar.ZYk = t10;
                if (oJVar instanceof com.bytedance.adsdk.ZYk.oJ.ZYk.jFA) {
                    ((com.bytedance.adsdk.ZYk.oJ.ZYk.jFA) oJVar).oJ();
                }
            }
        }
        com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJVar3 = list.get(i10);
        if ((oJVar3.oJ == null || oJVar3.ZYk == null) && list.size() > 1) {
            list.remove(oJVar3);
        }
    }
}
