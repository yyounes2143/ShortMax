package com.google.android.gms.internal.p003firebaseauthapi;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.firebase.auth.zze;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaaz  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaaz implements zzafv<zzahl> {
    private final /* synthetic */ zzafs zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ Boolean zzd;
    private final /* synthetic */ zze zze;
    private final /* synthetic */ zzael zzf;
    private final /* synthetic */ zzahv zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaaz(zzaar zzaarVar, zzafs zzafsVar, String str, String str2, Boolean bool, zze zzeVar, zzael zzaelVar, zzahv zzahvVar) {
        this.zza = zzafsVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = bool;
        this.zze = zzeVar;
        this.zzf = zzaelVar;
        this.zzg = zzahvVar;
        Objects.requireNonNull(zzaarVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzahl zzahlVar) {
        List<zzahk> zza = zzahlVar.zza();
        if (zza != null && !zza.isEmpty()) {
            zzahk zzahkVar = zza.get(0);
            zzaia zzf = zzahkVar.zzf();
            List<zzaib> zza2 = zzf != null ? zzf.zza() : null;
            if (zza2 != null && !zza2.isEmpty()) {
                if (TextUtils.isEmpty(this.zzb)) {
                    zza2.get(0).zza(this.zzc);
                } else {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= zza2.size()) {
                            break;
                        } else if (zza2.get(i10).zzf().equals(this.zzb)) {
                            zza2.get(i10).zza(this.zzc);
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
            }
            Boolean bool = this.zzd;
            if (bool != null) {
                zzahkVar.zza(bool.booleanValue());
            } else {
                zzahkVar.zza(zzahkVar.zzb() - zzahkVar.zza() < 1000);
            }
            zzahkVar.zza(this.zze);
            this.zzf.zza(this.zzg, zzahkVar);
            return;
        }
        this.zza.zza("No users.");
    }
}
