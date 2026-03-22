package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzamm implements zzakt {
    private final zzen zza = new zzen();
    private final zzamc zzb = new zzamc();

    @Override // com.google.android.gms.internal.ads.zzakt
    public final void zza(byte[] bArr, int i10, int i11, zzaks zzaksVar, zzdn zzdnVar) {
        zzen zzenVar = this.zza;
        zzenVar.zzJ(bArr, i11 + i10);
        zzenVar.zzL(i10);
        ArrayList arrayList = new ArrayList();
        try {
            int zzc = zzenVar.zzc();
            Charset charset = StandardCharsets.UTF_8;
            String zzz = zzenVar.zzz(charset);
            if (zzz != null && zzz.startsWith("WEBVTT")) {
                do {
                } while (!TextUtils.isEmpty(zzenVar.zzz(StandardCharsets.UTF_8)));
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    char c10 = 65535;
                    int i12 = 0;
                    while (c10 == 65535) {
                        i12 = zzenVar.zzc();
                        String zzz2 = zzenVar.zzz(StandardCharsets.UTF_8);
                        if (zzz2 == null) {
                            c10 = 0;
                        } else if ("STYLE".equals(zzz2)) {
                            c10 = 2;
                        } else if (zzz2.startsWith("NOTE")) {
                            c10 = 1;
                        } else {
                            c10 = 3;
                        }
                    }
                    zzenVar.zzL(i12);
                    if (c10 != 0) {
                        if (c10 == 1) {
                            do {
                            } while (!TextUtils.isEmpty(zzenVar.zzz(StandardCharsets.UTF_8)));
                        } else if (c10 == 2) {
                            if (arrayList2.isEmpty()) {
                                zzenVar.zzz(StandardCharsets.UTF_8);
                                arrayList.addAll(this.zzb.zzb(zzenVar));
                            } else {
                                throw new IllegalArgumentException("A style block was found after the first cue.");
                            }
                        } else {
                            zzame zzc2 = zzaml.zzc(zzenVar, arrayList);
                            if (zzc2 != null) {
                                arrayList2.add(zzc2);
                            }
                        }
                    } else {
                        zzakn.zza(new zzamp(arrayList2), zzaksVar, zzdnVar);
                        return;
                    }
                }
            } else {
                zzenVar.zzL(zzc);
                throw zzaz.zza("Expected WEBVTT. Got ".concat(String.valueOf(zzenVar.zzz(charset))), null);
            }
        } catch (zzaz e10) {
            throw new IllegalArgumentException(e10);
        }
    }
}
