package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import java.io.IOException;
import java.util.List;
/* loaded from: classes3.dex */
public class ex {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.oJ.so Pfn(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        return new com.bytedance.adsdk.ZYk.tB.oJ.so(oJ(jsonReader, com.bytedance.adsdk.ZYk.ba.ba.oJ(), cfz, XAo.oJ));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.oJ.ex ZYk(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        return new com.bytedance.adsdk.ZYk.tB.oJ.ex(oJ(jsonReader, cfz, Ry.oJ));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.oJ.kkU ba(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        return new com.bytedance.adsdk.ZYk.tB.oJ.kkU(oJ(jsonReader, com.bytedance.adsdk.ZYk.ba.ba.oJ(), cfz, jFA.oJ));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.oJ.oJ cFZ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        return new com.bytedance.adsdk.ZYk.tB.oJ.oJ(oJ(jsonReader, cfz, cFZ.oJ));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.oJ.cFZ ex(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        return new com.bytedance.adsdk.ZYk.tB.oJ.cFZ(oJ(jsonReader, cfz, mu.oJ));
    }

    public static com.bytedance.adsdk.ZYk.tB.oJ.ZYk oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        return oJ(jsonReader, cfz, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.oJ.ba tB(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        return new com.bytedance.adsdk.ZYk.tB.oJ.ba(oq.oJ(jsonReader, cfz, com.bytedance.adsdk.ZYk.ba.ba.oJ(), Ln.oJ, true));
    }

    public static com.bytedance.adsdk.ZYk.tB.oJ.ZYk oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz, boolean z10) throws IOException {
        return new com.bytedance.adsdk.ZYk.tB.oJ.ZYk(oJ(jsonReader, z10 ? com.bytedance.adsdk.ZYk.ba.ba.oJ() : 1.0f, cfz, BTZ.oJ));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.tB.oJ.tB oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz, int i10) throws IOException {
        return new com.bytedance.adsdk.ZYk.tB.oJ.tB(oJ(jsonReader, cfz, new awB(i10)));
    }

    private static <T> List<com.bytedance.adsdk.ZYk.cFZ.oJ<T>> oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz, Jm<T> jm2) throws IOException {
        return oq.oJ(jsonReader, cfz, 1.0f, jm2, false);
    }

    private static <T> List<com.bytedance.adsdk.ZYk.cFZ.oJ<T>> oJ(JsonReader jsonReader, float f10, com.bytedance.adsdk.ZYk.cFZ cfz, Jm<T> jm2) throws IOException {
        return oq.oJ(jsonReader, cfz, f10, jm2, false);
    }
}
