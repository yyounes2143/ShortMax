package com.google.android.recaptcha.internal;

import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.collections.n;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzhg implements zzgx {
    @NotNull
    public static final zzhg zza = new zzhg();

    private zzhg() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i10, @NotNull zzgd zzgdVar, @NotNull zzue... zzueVarArr) throws zzce {
        int length = zzueVarArr.length;
        if (length != 0) {
            Object zza2 = zzgdVar.zzc().zza(zzueVarArr[0]);
            if (true != (zza2 instanceof Method)) {
                zza2 = null;
            }
            Method method = (Method) zza2;
            if (method != null) {
                Object[] zzg = zzgdVar.zzc().zzg(n.x1(zzueVarArr).subList(1, length));
                try {
                    zzgdVar.zzc().zze(i10, method.invoke(null, Arrays.copyOf(zzg, zzg.length)));
                    return;
                } catch (Exception e10) {
                    throw new zzce(6, 15, e10);
                }
            }
            throw new zzce(4, 5, null);
        }
        throw new zzce(4, 3, null);
    }
}
