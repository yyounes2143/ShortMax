package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaxo extends zzayk {
    private final long zzh;

    public zzaxo(zzawx zzawxVar, String str, String str2, zzast zzastVar, long j10, int i10, int i11) {
        super(zzawxVar, "bz3lIaHWpCquphICM8d57wBZcB7vA3QBLpLSSF22FzCVTv7HI8nqsTojeybBUatg", "nJy2u10FH1OsIt1ONuXNmQ7d3Q3+he826LogUVDBAds=", zzastVar, i10, 25);
        this.zzh = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzayk
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.zze.invoke(null, new Object[0])).longValue();
        zzast zzastVar = this.zzd;
        synchronized (zzastVar) {
            try {
                zzastVar.zzr(longValue);
                long j10 = this.zzh;
                if (j10 != 0) {
                    zzastVar.zzR(longValue - j10);
                    zzastVar.zzS(j10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
