package com.google.android.recaptcha.internal;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzfy extends zzfx {
    @NotNull
    private final Function2 zza;
    @NotNull
    private final String zzb;

    public zzfy(@NotNull Function2 function2, @NotNull String str, @Nullable Object obj) {
        super(obj);
        this.zza = function2;
        this.zzb = str;
    }

    @Override // com.google.android.recaptcha.internal.zzfx
    public final boolean zza(@NotNull Object obj, @NotNull Method method, @Nullable Object[] objArr) {
        Collection n10;
        if (!Intrinsics.areEqual(method.getName(), this.zzb)) {
            return false;
        }
        zztf zzf = zzti.zzf();
        if (objArr != null) {
            n10 = new ArrayList(objArr.length);
            for (Object obj2 : objArr) {
                zztg zzf2 = zzth.zzf();
                zzf2.zzw(obj2.toString());
                n10.add((zzth) zzf2.zzk());
            }
        } else {
            n10 = CollectionsKt.n();
        }
        zzf.zze(n10);
        Function2 function2 = this.zza;
        byte[] zzd = ((zzti) zzf.zzk()).zzd();
        function2.invoke(objArr, zzkh.zzh().zzi(zzd, 0, zzd.length));
        return true;
    }
}
