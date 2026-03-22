package com.google.android.recaptcha.internal;

import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzhr implements zzgx {
    @NotNull
    public static final zzhr zza = new zzhr();

    private zzhr() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i10, @NotNull zzgd zzgdVar, @NotNull zzue... zzueVarArr) throws zzce {
        if (zzueVarArr.length == 2) {
            Object zza2 = zzgdVar.zzc().zza(zzueVarArr[0]);
            if (true != (zza2 instanceof int[])) {
                zza2 = null;
            }
            int[] iArr = (int[]) zza2;
            if (iArr != null) {
                Object zza3 = zzgdVar.zzc().zza(zzueVarArr[1]);
                if (true != (zza3 instanceof String)) {
                    zza3 = null;
                }
                String str = (String) zza3;
                if (str != null) {
                    zzge zzc = zzgdVar.zzc();
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        for (int i11 : iArr) {
                            sb2.append(str.charAt(i11));
                        }
                        zzc.zze(i10, sb2.toString());
                        return;
                    } catch (Exception e10) {
                        throw new zzce(4, 22, e10);
                    }
                }
                throw new zzce(4, 5, null);
            }
            throw new zzce(4, 5, null);
        }
        throw new zzce(4, 3, null);
    }
}
