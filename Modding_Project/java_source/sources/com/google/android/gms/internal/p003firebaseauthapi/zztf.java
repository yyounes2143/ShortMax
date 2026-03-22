package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zztf  reason: invalid package */
/* loaded from: classes4.dex */
public final class zztf extends zzalf<zztf, zza> implements zzamo {
    private static final zztf zzc;
    private static volatile zzamv<zztf> zzd;
    private int zze;
    private int zzf;
    private zztl zzg;
    private zzwb zzh;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zztf$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zztf, zza> implements zzamo {
        public final zza zza(zztl zztlVar) {
            zzg();
            zztf.zza((zztf) this.zza, zztlVar);
            return this;
        }

        private zza() {
            super(zztf.zzc);
        }

        public final zza zza(zzwb zzwbVar) {
            zzg();
            zztf.zza((zztf) this.zza, zzwbVar);
            return this;
        }
    }

    static {
        zztf zztfVar = new zztf();
        zzc = zztfVar;
        zzalf.zza(zztf.class, zztfVar);
    }

    private zztf() {
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zzamv<zztf> zzf() {
        return (zzamv) zzc.zza(zzalf.zze.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    public final zztl zzd() {
        zztl zztlVar = this.zzg;
        if (zztlVar == null) {
            return zztl.zzd();
        }
        return zztlVar;
    }

    public final zzwb zze() {
        zzwb zzwbVar = this.zzh;
        if (zzwbVar == null) {
            return zzwb.zzd();
        }
        return zzwbVar;
    }

    public static zztf zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zztf) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzth.zza[i10 - 1]) {
            case 1:
                return new zztf();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzamv<zztf> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zztf.class) {
                        try {
                            zzamvVar = zzd;
                            if (zzamvVar == null) {
                                zzamvVar = new zzalf.zza<>(zzc);
                                zzd = zzamvVar;
                            }
                        } finally {
                        }
                    }
                }
                return zzamvVar;
            case 6:
                return (byte) 1;
            default:
                throw null;
        }
    }

    static /* synthetic */ void zza(zztf zztfVar, zztl zztlVar) {
        zztlVar.getClass();
        zztfVar.zzg = zztlVar;
        zztfVar.zze |= 1;
    }

    static /* synthetic */ void zza(zztf zztfVar, zzwb zzwbVar) {
        zzwbVar.getClass();
        zztfVar.zzh = zzwbVar;
        zztfVar.zze |= 2;
    }
}
