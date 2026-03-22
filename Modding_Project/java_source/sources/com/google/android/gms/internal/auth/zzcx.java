package com.google.android.gms.internal.auth;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.10 */
/* loaded from: classes4.dex */
public final class zzcx extends zzdc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcx(zzcz zzczVar, String str, Double d10, boolean z10) {
        super(zzczVar, str, d10, true, null);
    }

    @Override // com.google.android.gms.internal.auth.zzdc
    final /* synthetic */ Object zza(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            String str = this.zzc;
            Log.e("PhenotypeFlag", "Invalid double value for " + str + ": " + ((String) obj));
            return null;
        }
    }
}
