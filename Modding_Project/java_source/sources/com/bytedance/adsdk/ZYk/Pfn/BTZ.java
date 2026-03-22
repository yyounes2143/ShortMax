package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import java.io.IOException;
/* loaded from: classes3.dex */
public class BTZ implements Jm<Float> {
    public static final BTZ oJ = new BTZ();

    private BTZ() {
    }

    @Override // com.bytedance.adsdk.ZYk.Pfn.Jm
    /* renamed from: oJ */
    public Float ZYk(JsonReader jsonReader, float f10) throws IOException {
        return Float.valueOf(RZ.ZYk(jsonReader) * f10);
    }
}
