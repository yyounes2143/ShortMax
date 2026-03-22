package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgun extends zzgzh implements zzhat {
    private static final zzgun zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzgzt zzd = zzgzh.zzbK();

    static {
        zzgun zzgunVar = new zzgun();
        zza = zzgunVar;
        zzgzh.zzbZ(zzgun.class, zzgunVar);
    }

    private zzgun() {
    }

    public static zzguj zzc() {
        return (zzguj) zza.zzaZ();
    }

    public static zzgun zzg(InputStream inputStream, zzgyr zzgyrVar) throws IOException {
        return (zzgun) zzgzh.zzbu(zza, inputStream, zzgyrVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzi(zzgun zzgunVar, zzgul zzgulVar) {
        zzgulVar.getClass();
        zzgzt zzgztVar = zzgunVar.zzd;
        if (!zzgztVar.zzc()) {
            zzgunVar.zzd = zzgzh.zzbL(zzgztVar);
        }
        zzgunVar.zzd.add(zzgulVar);
    }

    public final int zza() {
        return this.zzd.size();
    }

    public final int zzb() {
        return this.zzc;
    }

    public final zzgul zzd(int i10) {
        return (zzgul) this.zzd.get(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzgzh
    protected final Object zzdd(zzgzg zzgzgVar, Object obj, Object obj2) {
        int ordinal = zzgzgVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal != 5) {
                            if (ordinal == 6) {
                                zzhba zzhbaVar = zzb;
                                if (zzhbaVar == null) {
                                    synchronized (zzgun.class) {
                                        try {
                                            zzhbaVar = zzb;
                                            if (zzhbaVar == null) {
                                                zzhbaVar = new zzgzc(zza);
                                                zzb = zzhbaVar;
                                            }
                                        } finally {
                                        }
                                    }
                                }
                                return zzhbaVar;
                            }
                            throw null;
                        }
                        return zza;
                    }
                    return new zzguj(null);
                }
                return new zzgun();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzc", "zzd", zzgul.class});
        }
        return (byte) 1;
    }

    public final List zzh() {
        return this.zzd;
    }
}
