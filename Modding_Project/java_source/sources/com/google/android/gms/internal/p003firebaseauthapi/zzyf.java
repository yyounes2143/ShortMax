package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzyf  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzyf extends zzalf<zzyf, zza> implements zzamo {
    private static final zzyf zzc;
    private static volatile zzamv<zzyf> zzd;
    private int zze;
    private int zzf;
    private zzyl zzg;
    private zzajv zzh = zzajv.zza;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzyf$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzyf, zza> implements zzamo {
        public final zza zza(zzajv zzajvVar) {
            zzg();
            zzyf.zza((zzyf) this.zza, zzajvVar);
            return this;
        }

        private zza() {
            super(zzyf.zzc);
        }

        public final zza zza(zzyl zzylVar) {
            zzg();
            zzyf.zza((zzyf) this.zza, zzylVar);
            return this;
        }
    }

    static {
        zzyf zzyfVar = new zzyf();
        zzc = zzyfVar;
        zzalf.zza(zzyf.class, zzyfVar);
    }

    private zzyf() {
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzyl zzd() {
        zzyl zzylVar = this.zzg;
        if (zzylVar == null) {
            return zzyl.zzd();
        }
        return zzylVar;
    }

    public final zzajv zze() {
        return this.zzh;
    }

    public static zzyf zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzyf) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzye.zza[i10 - 1]) {
            case 1:
                return new zzyf();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzyf> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzyf.class) {
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

    static /* synthetic */ void zza(zzyf zzyfVar, zzajv zzajvVar) {
        zzajvVar.getClass();
        zzyfVar.zzh = zzajvVar;
    }

    static /* synthetic */ void zza(zzyf zzyfVar, zzyl zzylVar) {
        zzylVar.getClass();
        zzyfVar.zzg = zzylVar;
        zzyfVar.zze |= 1;
    }
}
