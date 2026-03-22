package com.inmobi.media;

import android.util.Base64;
import androidx.core.app.NotificationCompat;
import java.util.BitSet;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.a2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2863a2 {

    /* renamed from: a  reason: collision with root package name */
    public BitSet f24472a;

    public final void a(String b64String) {
        byte[] value;
        BitSet bitSet;
        boolean z10;
        Intrinsics.checkNotNullParameter(b64String, "b64String");
        try {
            value = Base64.decode(b64String, 0);
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            value = null;
        }
        if (value != null) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (L3.f23796a.F()) {
                bitSet = BitSet.valueOf(value);
            } else {
                Intrinsics.checkNotNullParameter(value, "<this>");
                BitSet bitSet2 = new BitSet(value.length * 8);
                int i10 = 0;
                for (byte b10 : value) {
                    int i11 = 0;
                    while (i11 < 8) {
                        int i12 = i10 + 1;
                        if (((b10 >> ((byte) i11)) & 1) == 1) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        bitSet2.set(i10, z10);
                        i11++;
                        i10 = i12;
                    }
                }
                bitSet = bitSet2;
            }
            this.f24472a = bitSet;
        }
    }
}
