package com.google.android.recaptcha.internal;

import java.util.List;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzfz {
    @NotNull
    private final zzjj zza;

    public zzfz() {
        this(1);
    }

    @NotNull
    public final List zwk() {
        return zza();
    }

    @NotNull
    public final List zza() {
        return CollectionsKt.d1(this.zza);
    }

    public final boolean zzb(@NotNull List list) {
        this.zza.add(list);
        return true;
    }

    public zzfz(int i10) {
        this.zza = zzjj.zza(i10);
    }
}
