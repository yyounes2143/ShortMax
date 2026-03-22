package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.Map;
import java.util.Set;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class QuantizerCelebi {
    private QuantizerCelebi() {
    }

    public static Map<Integer, Integer> quantize(int[] iArr, int i10) {
        Set<Integer> keySet = new QuantizerWu().quantize(iArr, i10).colorToCount.keySet();
        int[] iArr2 = new int[keySet.size()];
        int i11 = 0;
        for (Integer num : keySet) {
            iArr2[i11] = num.intValue();
            i11++;
        }
        return QuantizerWsmeans.quantize(iArr, iArr2, i10);
    }
}
