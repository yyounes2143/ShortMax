package com.google.android.gms.internal.auth;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.10 */
/* loaded from: classes4.dex */
public final class zzcw extends zzdc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcw(zzcz zzczVar, String str, Boolean bool, boolean z10) {
        super(zzczVar, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.auth.zzdc
    final /* synthetic */ Object zza(Object obj) {
        if (zzcb.zzc.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (zzcb.zzd.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        String str = this.zzc;
        Log.e("PhenotypeFlag", "Invalid boolean value for " + str + ": " + ((String) obj));
        return null;
    }
}
