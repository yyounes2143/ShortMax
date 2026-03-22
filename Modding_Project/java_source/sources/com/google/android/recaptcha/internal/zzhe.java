package com.google.android.recaptcha.internal;

import java.lang.reflect.Field;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzhe implements zzgx {
    @NotNull
    public static final zzhe zza = new zzhe();

    private zzhe() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i10, @NotNull zzgd zzgdVar, @NotNull zzue... zzueVarArr) throws zzce {
        if (zzueVarArr.length == 1) {
            Object zza2 = zzgdVar.zzc().zza(zzueVarArr[0]);
            if (true != (zza2 instanceof Field)) {
                zza2 = null;
            }
            Field field = (Field) zza2;
            if (field != null) {
                try {
                    zzgdVar.zzc().zze(i10, field.get(null));
                    return;
                } catch (Exception e10) {
                    throw new zzce(6, 16, e10);
                }
            }
            throw new zzce(4, 5, null);
        }
        throw new zzce(4, 3, null);
    }
}
