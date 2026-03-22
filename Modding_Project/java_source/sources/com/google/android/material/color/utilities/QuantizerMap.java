package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.LinkedHashMap;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class QuantizerMap implements Quantizer {
    Map<Integer, Integer> colorToCount;

    public Map<Integer, Integer> getColorToCount() {
        return this.colorToCount;
    }

    @Override // com.google.android.material.color.utilities.Quantizer
    public QuantizerResult quantize(int[] iArr, int i10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i11 : iArr) {
            Integer num = (Integer) linkedHashMap.get(Integer.valueOf(i11));
            int i12 = 1;
            if (num != null) {
                i12 = 1 + num.intValue();
            }
            linkedHashMap.put(Integer.valueOf(i11), Integer.valueOf(i12));
        }
        this.colorToCount = linkedHashMap;
        return new QuantizerResult(linkedHashMap);
    }
}
