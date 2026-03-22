package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
/* loaded from: classes3.dex */
class HL {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.ZYk.oJ.ZYk.jFA oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        boolean z10;
        if (jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new com.bytedance.adsdk.ZYk.oJ.ZYk.jFA(cfz, QSm.oJ(jsonReader, cfz, com.bytedance.adsdk.ZYk.ba.ba.oJ(), IUZ.oJ, z10, false));
    }
}
