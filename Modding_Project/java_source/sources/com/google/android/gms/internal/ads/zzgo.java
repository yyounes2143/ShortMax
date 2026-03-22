package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgo {
    public static final /* synthetic */ int zzh = 0;
    public final Uri zza;
    public final int zzb;
    @Nullable
    public final byte[] zzc;
    public final Map zzd;
    public final long zze;
    public final long zzf;
    public final int zzg;

    static {
        zzaq.zzb("media3.datasource");
    }

    public final String toString() {
        String obj = this.zza.toString();
        return "DataSpec[" + ShareTarget.METHOD_GET + " " + obj + ", " + this.zze + ", " + this.zzf + ", null, " + this.zzg + "]";
    }

    public final zzgm zza() {
        return new zzgm(this, null);
    }

    public final boolean zzb(int i10) {
        if ((this.zzg & i10) == i10) {
            return true;
        }
        return false;
    }

    private zzgo(Uri uri, long j10, int i10, @Nullable byte[] bArr, Map map, long j11, long j12, @Nullable String str, int i11, @Nullable Object obj) {
        boolean z10 = false;
        boolean z11 = j11 >= 0;
        zzdd.zzd(z11);
        zzdd.zzd(z11);
        if (j12 <= 0) {
            j12 = j12 == -1 ? -1L : j12;
            zzdd.zzd(z10);
            uri.getClass();
            this.zza = uri;
            this.zzb = 1;
            this.zzc = null;
            this.zzd = Collections.unmodifiableMap(new HashMap(map));
            this.zze = j11;
            this.zzf = j12;
            this.zzg = i11;
        }
        z10 = true;
        zzdd.zzd(z10);
        uri.getClass();
        this.zza = uri;
        this.zzb = 1;
        this.zzc = null;
        this.zzd = Collections.unmodifiableMap(new HashMap(map));
        this.zze = j11;
        this.zzf = j12;
        this.zzg = i11;
    }

    @Deprecated
    public zzgo(Uri uri, long j10, long j11, @Nullable String str) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j10, j11, null, 0, null);
    }
}
