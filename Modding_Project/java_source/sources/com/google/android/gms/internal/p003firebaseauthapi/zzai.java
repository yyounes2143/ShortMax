package com.google.android.gms.internal.p003firebaseauthapi;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzai  reason: invalid package */
/* loaded from: classes4.dex */
public class zzai<E> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, int i11) {
        if (i11 >= 0) {
            if (i11 <= i10) {
                return i10;
            }
            int i12 = i10 + (i10 >> 1) + 1;
            if (i12 < i11) {
                i12 = Integer.highestOneBit(i11 - 1) << 1;
            }
            if (i12 < 0) {
                return Integer.MAX_VALUE;
            }
            return i12;
        }
        throw new IllegalArgumentException("cannot store more than Integer.MAX_VALUE elements");
    }
}
