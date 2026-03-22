package com.google.android.recaptcha.internal;

import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import ms.n;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzhz implements zzhx {
    @NotNull
    private final zzhy zza;

    public zzhz(@NotNull zzhy zzhyVar, @NotNull zzhw zzhwVar) {
        this.zza = zzhyVar;
    }

    private final zztz zzb(String str, List list) throws zzce {
        zzhu zzhuVar;
        if (str.length() != 0) {
            try {
                long zza = this.zza.zza(CollectionsKt.e1(list));
                zzhuVar = zzhv.zza;
                zzhv zzhvVar = new zzhv(zza, 255L, zzhuVar);
                StringBuilder sb2 = new StringBuilder(str.length());
                for (int i10 = 0; i10 < str.length(); i10++) {
                    sb2.append((char) n.b(n.b(str.charAt(i10)) ^ n.b((int) zzhvVar.zza())));
                }
                return zztz.zzg(zzkh.zzh().zzj(sb2.toString()));
            } catch (Exception e10) {
                throw new zzce(3, 18, e10);
            }
        }
        throw new zzce(3, 17, null);
    }

    @Override // com.google.android.recaptcha.internal.zzhx
    @NotNull
    public final zztz zza(@NotNull zzub zzubVar) throws zzce {
        zzjh zzb = zzjh.zzb();
        zztz zzb2 = zzb(zzubVar.zzj(), zzubVar.zzk());
        zzb.zzf();
        long zza = zzb.zza(TimeUnit.MICROSECONDS);
        int i10 = zzbk.zza;
        zzbk.zza(zzbl.zzh.zza(), zza);
        return zzb2;
    }
}
