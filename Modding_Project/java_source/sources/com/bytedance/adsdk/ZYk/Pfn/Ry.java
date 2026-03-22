package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import java.io.IOException;
/* loaded from: classes3.dex */
public class Ry implements Jm<Integer> {
    public static final Ry oJ = new Ry();

    private Ry() {
    }

    @Override // com.bytedance.adsdk.ZYk.Pfn.Jm
    /* renamed from: oJ */
    public Integer ZYk(JsonReader jsonReader, float f10) throws IOException {
        return Integer.valueOf(Math.round(RZ.ZYk(jsonReader) * f10));
    }
}
