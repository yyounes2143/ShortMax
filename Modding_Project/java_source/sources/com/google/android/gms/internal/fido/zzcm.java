package com.google.android.gms.internal.fido;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.Comparator;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
enum zzcm implements Comparator {
    INSTANCE;

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = (byte[]) obj2;
        int min = Math.min(bArr.length, bArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            int i11 = (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) - (bArr2[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            if (i11 != 0) {
                return i11;
            }
        }
        return bArr.length - bArr2.length;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "UnsignedBytes.lexicographicalComparator() (pure Java version)";
    }
}
