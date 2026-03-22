package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaer  reason: invalid package */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzaer {
    public static String zza(zzaes zzaesVar, String str) {
        try {
            String str2 = new String(MessageDigest.getInstance("SHA-256").digest(str.getBytes()));
            int length = str2.length();
            int i10 = 0;
            while (i10 < length) {
                if (zzg.zza(str2.charAt(i10))) {
                    char[] charArray = str2.toCharArray();
                    while (i10 < length) {
                        char c10 = charArray[i10];
                        if (zzg.zza(c10)) {
                            charArray[i10] = (char) (c10 ^ ' ');
                        }
                        i10++;
                    }
                    return String.valueOf(charArray);
                }
                i10++;
            }
            return str2;
        } catch (NoSuchAlgorithmException unused) {
            zzaes.zza.e("Failed to get SHA-256 MessageDigest", new Object[0]);
            return null;
        }
    }

    public static void zzb(zzaes zzaesVar, String str) {
        zzaesVar.zza(str, null);
    }
}
