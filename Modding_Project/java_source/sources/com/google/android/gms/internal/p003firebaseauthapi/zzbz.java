package com.google.android.gms.internal.p003firebaseauthapi;

import java.io.IOException;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzbz  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzbz {
    public static zzbm zza(zzbv zzbvVar, zzch zzchVar) throws GeneralSecurityException, IOException {
        if (zzchVar != null) {
            return zzbm.zza(zzbvVar.zzb());
        }
        throw new NullPointerException("SecretKeyAccess cannot be null");
    }

    public static void zza(zzbm zzbmVar, zzby zzbyVar, zzch zzchVar) throws IOException {
        if (zzchVar != null) {
            zzbyVar.zza(zzbmVar.zzd());
            return;
        }
        throw new NullPointerException("SecretKeyAccess cannot be null");
    }
}
