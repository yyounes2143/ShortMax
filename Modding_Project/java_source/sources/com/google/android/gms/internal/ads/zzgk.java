package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzgk extends IOException {
    public final int zza;

    public zzgk(int i10) {
        this.zza = i10;
    }

    public zzgk(@Nullable String str, int i10) {
        super(str);
        this.zza = i10;
    }

    public zzgk(@Nullable String str, @Nullable Throwable th2, int i10) {
        super(str, th2);
        this.zza = i10;
    }

    public zzgk(@Nullable Throwable th2, int i10) {
        super(th2);
        this.zza = i10;
    }
}
