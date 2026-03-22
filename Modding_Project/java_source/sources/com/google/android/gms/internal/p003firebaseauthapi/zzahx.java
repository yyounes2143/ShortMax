package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import java.io.UnsupportedEncodingException;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahx  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzahx {
    public static long zza(String str) {
        zzahw zzb = zzb(str);
        return zzb.zza().longValue() - zzb.zzb().longValue();
    }

    @NonNull
    private static zzahw zzb(String str) {
        Preconditions.checkNotEmpty(str);
        List<String> zza = zzt.zza('.').zza((CharSequence) str);
        if (zza.size() >= 2) {
            try {
                return zzahw.zza(new String(Base64Utils.decodeUrlSafeNoPadding(zza.get(1)), "UTF-8"));
            } catch (UnsupportedEncodingException e10) {
                throw new RuntimeException("Unable to decode token", e10);
            }
        }
        throw new RuntimeException("Invalid idToken " + str);
    }
}
