package com.google.android.recaptcha.internal;

import java.util.Arrays;
import kotlin.collections.n;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzha implements zzgx {
    @NotNull
    public static final zzha zza = new zzha();

    private zzha() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i10, @NotNull zzgd zzgdVar, @NotNull zzue... zzueVarArr) throws zzce {
        int length = zzueVarArr.length;
        if (length != 0) {
            Object zza2 = zzgdVar.zzc().zza(zzueVarArr[0]);
            if (true != (zza2 instanceof Class)) {
                zza2 = null;
            }
            Class cls = (Class) zza2;
            if (cls != null) {
                Class[] zzf = zzgdVar.zzc().zzf(n.x1(zzueVarArr).subList(1, length));
                try {
                    zzgdVar.zzc().zze(i10, cls.getConstructor((Class[]) Arrays.copyOf(zzf, zzf.length)));
                    return;
                } catch (Exception e10) {
                    throw new zzce(6, 9, e10);
                }
            }
            throw new zzce(4, 5, null);
        }
        throw new zzce(4, 3, null);
    }
}
