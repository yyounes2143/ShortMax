package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaException;
import kotlin.c;
import kotlin.text.StringsKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzff {
    @NotNull
    private final i zza;
    @NotNull
    private final i zzb;
    @NotNull
    private final i zzc;

    public zzff() {
        int i10 = zzav.zza;
        this.zza = c.b(zzfc.zza);
        this.zzb = c.b(zzfd.zza);
        this.zzc = c.b(zzfe.zza);
    }

    public static final /* synthetic */ zzfk zzb(zzff zzffVar) {
        return (zzfk) zzffVar.zza.getValue();
    }

    static /* synthetic */ Object zze(zzff zzffVar, zzsc zzscVar, zzek zzekVar, rs.c cVar) throws zzbd {
        try {
            String zzl = zzscVar.zzl();
            String zzM = zzscVar.zzM();
            zzaq zzf = zzffVar.zzf();
            String str = null;
            if (zzf != null && zzf.zzd(zzM)) {
                zzen zzf2 = zzekVar.zzf(25);
                try {
                    String zza = zzffVar.zzf().zza(zzM);
                    if (zza != null) {
                        zzf2.zza();
                        str = zza;
                    }
                } catch (Exception e10) {
                    zzf2.zzb(new zzbd(zzbb.zzk, zzba.zzR, e10.getMessage()));
                }
                zzf2.zzb(new zzbd(zzbb.zzk, zzba.zzS, null));
            }
            if (str == null) {
                zzaq zzf3 = zzffVar.zzf();
                if (zzf3 != null) {
                    zzf3.zzb();
                }
                zzen zzf4 = zzekVar.zzf(23);
                try {
                    str = zzffVar.zzg().zzb(zzl);
                    zzf4.zza();
                    zzen zzf5 = zzekVar.zzf(24);
                    try {
                        zzaq zzf6 = zzffVar.zzf();
                        if (zzf6 != null) {
                            zzf6.zzc(zzM, str);
                        }
                        zzf5.zza();
                    } catch (Exception e11) {
                        zzf5.zzb(new zzbd(zzbb.zzk, zzba.zzT, e11.getMessage()));
                    }
                } catch (zzbd e12) {
                    zzf4.zzb(e12);
                    throw e12;
                }
            }
            return StringsKt.P(zzscVar.zzk(), "JAVASCRIPT_TAG", str, false, 4, null);
        } catch (Exception e13) {
            if (e13 instanceof zzbd) {
                throw e13;
            }
            throw new zzbd(zzbb.zzb, zzba.zzL, e13.getMessage());
        }
    }

    private final zzaq zzf() {
        return (zzaq) this.zzb.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzey zzg() {
        return (zzey) this.zzc.getValue();
    }

    @Nullable
    public final Object zzc(@NotNull String str, @NotNull zzto zztoVar, @NotNull rs.c cVar) throws RecaptchaException {
        return kotlinx.coroutines.i.f(new zzfb(this, str, zztoVar, null), cVar);
    }

    @Nullable
    public final Object zzd(@NotNull zzsc zzscVar, @NotNull zzek zzekVar, @NotNull rs.c cVar) throws zzbd {
        return zze(this, zzscVar, zzekVar, cVar);
    }
}
