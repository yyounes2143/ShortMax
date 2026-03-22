package com.google.android.recaptcha.internal;

import java.lang.reflect.Method;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzga extends zzfx {
    @NotNull
    private final zzfz zza;
    @NotNull
    private final String zzb;

    public zzga(@NotNull zzfz zzfzVar, @NotNull String str, @Nullable Object obj) {
        super(obj);
        this.zza = zzfzVar;
        this.zzb = str;
    }

    @Override // com.google.android.recaptcha.internal.zzfx
    public final boolean zza(@NotNull Object obj, @NotNull Method method, @Nullable Object[] objArr) {
        List n10;
        if (Intrinsics.areEqual(method.getName(), this.zzb)) {
            zzfz zzfzVar = this.zza;
            if (objArr == null || (n10 = n.g(objArr)) == null) {
                n10 = CollectionsKt.n();
            }
            zzfzVar.zzb(n10);
            return true;
        }
        return false;
    }
}
