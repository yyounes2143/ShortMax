package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class XAo implements Jm<com.bytedance.adsdk.ZYk.tB.ZYk.WcQ> {
    public static final XAo oJ = new XAo();

    private XAo() {
    }

    @Override // com.bytedance.adsdk.ZYk.Pfn.Jm
    /* renamed from: oJ */
    public com.bytedance.adsdk.ZYk.tB.ZYk.WcQ ZYk(JsonReader jsonReader, float f10) throws IOException {
        if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
        }
        jsonReader.beginObject();
        List<PointF> list = null;
        boolean z10 = false;
        List<PointF> list2 = null;
        List<PointF> list3 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 99:
                    if (nextName.equals("c")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 105:
                    if (nextName.equals("i")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 111:
                    if (nextName.equals("o")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 118:
                    if (nextName.equals("v")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    z10 = jsonReader.nextBoolean();
                    break;
                case 1:
                    list2 = RZ.oJ(jsonReader, f10);
                    break;
                case 2:
                    list3 = RZ.oJ(jsonReader, f10);
                    break;
                case 3:
                    list = RZ.oJ(jsonReader, f10);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (jsonReader.peek() == JsonToken.END_ARRAY) {
            jsonReader.endArray();
        }
        if (list != null && list2 != null && list3 != null) {
            if (list.isEmpty()) {
                return new com.bytedance.adsdk.ZYk.tB.ZYk.WcQ(new PointF(), false, Collections.emptyList());
            }
            int size = list.size();
            PointF pointF = list.get(0);
            ArrayList arrayList = new ArrayList(size);
            for (int i10 = 1; i10 < size; i10++) {
                PointF pointF2 = list.get(i10);
                int i11 = i10 - 1;
                arrayList.add(new com.bytedance.adsdk.ZYk.tB.oJ(com.bytedance.adsdk.ZYk.ba.Pfn.oJ(list.get(i11), list3.get(i11)), com.bytedance.adsdk.ZYk.ba.Pfn.oJ(pointF2, list2.get(i10)), pointF2));
            }
            if (z10) {
                PointF pointF3 = list.get(0);
                int i12 = size - 1;
                arrayList.add(new com.bytedance.adsdk.ZYk.tB.oJ(com.bytedance.adsdk.ZYk.ba.Pfn.oJ(list.get(i12), list3.get(i12)), com.bytedance.adsdk.ZYk.ba.Pfn.oJ(pointF3, list2.get(0)), pointF3));
            }
            return new com.bytedance.adsdk.ZYk.tB.ZYk.WcQ(pointF, z10, arrayList);
        }
        throw new IllegalArgumentException("Shape data was missing information.");
    }
}
