package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzamb implements zzakt {
    private final zzen zza = new zzen();

    @Override // com.google.android.gms.internal.ads.zzakt
    public final void zza(byte[] bArr, int i10, int i11, zzaks zzaksVar, zzdn zzdnVar) {
        boolean z10;
        zzcu zzq;
        boolean z11;
        zzen zzenVar = this.zza;
        zzenVar.zzJ(bArr, i11 + i10);
        zzenVar.zzL(i10);
        ArrayList arrayList = new ArrayList();
        while (zzenVar.zza() > 0) {
            if (zzenVar.zza() >= 8) {
                z10 = true;
            } else {
                z10 = false;
            }
            zzdd.zze(z10, "Incomplete Mp4Webvtt Top Level box header found.");
            int zzg = zzenVar.zzg() - 8;
            if (zzenVar.zzg() == 1987343459) {
                CharSequence charSequence = null;
                zzcs zzcsVar = null;
                while (zzg > 0) {
                    if (zzg >= 8) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    zzdd.zze(z11, "Incomplete vtt cue box header found.");
                    int zzg2 = zzenVar.zzg();
                    int zzg3 = zzenVar.zzg();
                    int i12 = zzg - 8;
                    int i13 = zzg2 - 8;
                    String zzC = zzex.zzC(zzenVar.zzN(), zzenVar.zzc(), i13);
                    zzenVar.zzM(i13);
                    if (zzg3 == 1937011815) {
                        zzcsVar = zzaml.zzb(zzC);
                    } else if (zzg3 == 1885436268) {
                        charSequence = zzaml.zza(null, zzC.trim(), Collections.emptyList());
                    }
                    zzg = i12 - i13;
                }
                if (charSequence == null) {
                    charSequence = "";
                }
                if (zzcsVar != null) {
                    zzcsVar.zzl(charSequence);
                    zzq = zzcsVar.zzq();
                } else {
                    Pattern pattern = zzaml.zza;
                    zzamj zzamjVar = new zzamj();
                    zzamjVar.zzc = charSequence;
                    zzq = zzamjVar.zza().zzq();
                }
                arrayList.add(zzq);
            } else {
                zzenVar.zzM(zzg);
            }
        }
        zzdnVar.zza(new zzakl(arrayList, -9223372036854775807L, -9223372036854775807L));
    }
}
