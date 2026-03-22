package com.google.android.recaptcha.internal;

import java.util.Collection;
import java.util.Objects;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzgp implements zzgx {
    @NotNull
    public static final zzgp zza = new zzgp();

    private zzgp() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i10, @NotNull zzgd zzgdVar, @NotNull zzue... zzueVarArr) throws zzce {
        String A0;
        String str;
        if (zzueVarArr.length == 1) {
            Object zza2 = zzgdVar.zzc().zza(zzueVarArr[0]);
            if (true != Objects.nonNull(zza2)) {
                zza2 = null;
            }
            if (zza2 != null) {
                if (zza2 instanceof int[]) {
                    A0 = n.S0((int[]) zza2, ",", "[", "]", 0, null, null, 56, null);
                } else {
                    if (zza2 instanceof byte[]) {
                        str = new String((byte[]) zza2, Charsets.UTF_8);
                    } else if (zza2 instanceof long[]) {
                        A0 = n.T0((long[]) zza2, ",", "[", "]", 0, null, null, 56, null);
                    } else if (zza2 instanceof short[]) {
                        A0 = n.V0((short[]) zza2, ",", "[", "]", 0, null, null, 56, null);
                    } else if (zza2 instanceof float[]) {
                        A0 = n.R0((float[]) zza2, ",", "[", "]", 0, null, null, 56, null);
                    } else if (zza2 instanceof double[]) {
                        A0 = n.Q0((double[]) zza2, ",", "[", "]", 0, null, null, 56, null);
                    } else if (zza2 instanceof char[]) {
                        str = new String((char[]) zza2);
                    } else if (zza2 instanceof Object[]) {
                        A0 = n.U0((Object[]) zza2, ",", "[", "]", 0, null, null, 56, null);
                    } else if (zza2 instanceof Collection) {
                        A0 = CollectionsKt.A0((Iterable) zza2, ",", "[", "]", 0, null, null, 56, null);
                    } else {
                        throw new zzce(4, 5, null);
                    }
                    A0 = str;
                }
                zzgdVar.zzc().zze(i10, A0);
                return;
            }
            throw new zzce(4, 5, null);
        }
        throw new zzce(4, 3, null);
    }
}
