package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzaz extends IOException {
    public final boolean zza;
    public final int zzb;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzaz(@Nullable String str, @Nullable Throwable th2, boolean z10, int i10) {
        super(str, th2);
        this.zza = z10;
        this.zzb = i10;
    }

    public static zzaz zza(@Nullable String str, @Nullable Throwable th2) {
        return new zzaz(str, th2, true, 1);
    }

    public static zzaz zzb(@Nullable String str, @Nullable Throwable th2) {
        return new zzaz(str, th2, true, 0);
    }

    public static zzaz zzc(@Nullable String str) {
        return new zzaz(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        String message = super.getMessage();
        if (message != null) {
            str = message.concat(" ");
        } else {
            str = "";
        }
        boolean z10 = this.zza;
        int i10 = this.zzb;
        return str + "{contentIsMalformed=" + z10 + ", dataType=" + i10 + "}";
    }
}
