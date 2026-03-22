package com.google.android.recaptcha.internal;

import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzfu {
    @Nullable
    private Set zza;
    @Nullable
    private Set zzb;
    @Nullable
    private Long zzc;
    private int zzd;

    private static final boolean zzc(String str, Set set) {
        String str2 = "";
        for (String str3 : StringsKt.Y0(str, new char[]{'.'}, false, 0, 6, null)) {
            String concat = str2.concat(String.valueOf(str3));
            if (set.contains(concat)) {
                return true;
            }
            str2 = concat.concat(".");
        }
        return false;
    }

    public final void zza(@NotNull zzrv zzrvVar) {
        this.zza = CollectionsKt.i1(zzrvVar.zzf().zzi());
        this.zzb = CollectionsKt.i1(zzrvVar.zzg().zzi());
    }

    public final boolean zzb(@NotNull String str) {
        Set set = this.zza;
        if (set != null && this.zzb != null) {
            Intrinsics.checkNotNull(set, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
            if (set.isEmpty()) {
                return true;
            }
            Set set2 = this.zzb;
            Intrinsics.checkNotNull(set2, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
            if (zzc(str, set2)) {
                return false;
            }
            return zzc(str, set);
        }
        if (this.zzc == null) {
            this.zzc = Long.valueOf(System.currentTimeMillis());
        }
        this.zzd++;
        return true;
    }
}
