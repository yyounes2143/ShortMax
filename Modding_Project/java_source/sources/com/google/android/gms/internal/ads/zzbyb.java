package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbyb implements SharedPreferences.OnSharedPreferenceChangeListener {
    private final Context zza;
    private final SharedPreferences zzb;
    private final com.google.android.gms.ads.internal.util.zzg zzc;
    private String zzd = "-1";
    private int zze = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbyb(Context context, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zzb = PreferenceManager.getDefaultSharedPreferences(context);
        this.zzc = zzgVar;
        this.zza = context;
    }

    private final void zzb() {
        this.zzc.zzD(true);
        com.google.android.gms.ads.internal.util.zzad.zzc(this.zza);
    }

    private final void zzc(String str, int i10) {
        Context context;
        boolean z10 = true;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaN)).booleanValue() ? !(str.isEmpty() || str.charAt(0) != '1') : !(i10 == 0 || str.isEmpty() || (str.charAt(0) != '1' && !str.equals("-1")))) {
            z10 = false;
        }
        this.zzc.zzD(z10);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgv)).booleanValue() && z10 && (context = this.zza) != null) {
            context.deleteDatabase("OfflineUpload.db");
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        boolean z10;
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaP)).booleanValue()) {
                if (Objects.equals(str, "gad_has_consent_for_cookies")) {
                    int i10 = sharedPreferences.getInt("gad_has_consent_for_cookies", -1);
                    com.google.android.gms.ads.internal.util.zzg zzgVar = this.zzc;
                    if (i10 != zzgVar.zzb()) {
                        zzb();
                    }
                    zzgVar.zzA(i10);
                    return;
                } else if (Objects.equals(str, "IABTCF_TCString")) {
                    String string = sharedPreferences.getString(str, "-1");
                    com.google.android.gms.ads.internal.util.zzg zzgVar2 = this.zzc;
                    if (!Objects.equals(string, zzgVar2.zzm())) {
                        zzb();
                    }
                    zzgVar2.zzJ(string);
                    return;
                } else {
                    return;
                }
            }
            String string2 = sharedPreferences.getString("IABTCF_PurposeConsents", "-1");
            int i11 = sharedPreferences.getInt("gad_has_consent_for_cookies", -1);
            String valueOf = String.valueOf(str);
            int hashCode = valueOf.hashCode();
            if (hashCode != -2004976699) {
                if (hashCode == -527267622 && valueOf.equals("gad_has_consent_for_cookies")) {
                    z10 = true;
                }
                z10 = true;
            } else {
                if (valueOf.equals("IABTCF_PurposeConsents")) {
                    z10 = false;
                }
                z10 = true;
            }
            if (z10) {
                if (z10) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaN)).booleanValue() && i11 != -1 && this.zze != i11) {
                        this.zze = i11;
                        zzc(string2, i11);
                    }
                }
            } else if (!string2.equals("-1") && !this.zzd.equals(string2)) {
                this.zzd = string2;
                zzc(string2, i11);
            }
        } catch (Throwable th2) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "AdMobPlusIdlessListener.onSharedPreferenceChanged");
            com.google.android.gms.ads.internal.util.zze.zzb("onSharedPreferenceChanged, errorMessage = ", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza() {
        SharedPreferences sharedPreferences = this.zzb;
        sharedPreferences.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(sharedPreferences, "gad_has_consent_for_cookies");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaP)).booleanValue()) {
            onSharedPreferenceChanged(sharedPreferences, "IABTCF_TCString");
        } else {
            onSharedPreferenceChanged(sharedPreferences, "IABTCF_PurposeConsents");
        }
    }
}
