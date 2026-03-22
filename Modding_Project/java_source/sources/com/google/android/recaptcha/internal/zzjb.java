package com.google.android.recaptcha.internal;

import android.os.Build;
import java.util.Map;
import kotlin.collections.p0;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzjb {
    @NotNull
    public static final Map zza() {
        Map o10 = p0.o(k.a(-4, zzba.zzo), k.a(-12, zzba.zzp), k.a(-6, zzba.zzk), k.a(-11, zzba.zzm), k.a(-13, zzba.zzq), k.a(-14, zzba.zzr), k.a(-2, zzba.zzl), k.a(-7, zzba.zzs), k.a(-5, zzba.zzt), k.a(-9, zzba.zzu), k.a(-8, zzba.zzE), k.a(-15, zzba.zzn), k.a(-1, zzba.zzv), k.a(-3, zzba.zzx), k.a(-10, zzba.zzy));
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            o10.put(-16, zzba.zzw);
        }
        if (i10 >= 27) {
            o10.put(1, zzba.zzA);
            o10.put(2, zzba.zzB);
            o10.put(0, zzba.zzC);
            o10.put(3, zzba.zzD);
        }
        if (i10 >= 29) {
            o10.put(4, zzba.zzz);
        }
        return o10;
    }
}
