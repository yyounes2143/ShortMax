package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* renamed from: com.facebook.ads.redexgen.X.Af  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1245Af<K, V> extends AbstractC2824pV<Map.Entry<K, V>, V> {
    public C1245Af(Iterator backingIterator) {
        super(backingIterator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2824pV
    @ParametricNullness
    /* renamed from: A00 */
    public final V A01(Map.Entry<K, V> entry) {
        return entry.getValue();
    }
}
