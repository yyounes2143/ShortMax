package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zztl  reason: invalid package */
/* loaded from: classes4.dex */
public final class zztl extends zzalf<zztl, zza> implements zzamo {
    private static final zztl zzc;
    private static volatile zzamv<zztl> zzd;
    private int zze;
    private int zzf;
    private zztr zzg;
    private zzajv zzh = zzajv.zza;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zztl$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zztl, zza> implements zzamo {
        public final zza zza(zzajv zzajvVar) {
            zzg();
            zztl.zza((zztl) this.zza, zzajvVar);
            return this;
        }

        private zza() {
            super(zztl.zzc);
        }

        public final zza zza(zztr zztrVar) {
            zzg();
            zztl.zza((zztl) this.zza, zztrVar);
            return this;
        }
    }

    static {
        zztl zztlVar = new zztl();
        zzc = zztlVar;
        zzalf.zza(zztl.class, zztlVar);
    }

    private zztl() {
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zztl zzd() {
        return zzc;
    }

    public final int zza() {
        return this.zzf;
    }

    public final zztr zze() {
        zztr zztrVar = this.zzg;
        if (zztrVar == null) {
            return zztr.zzd();
        }
        return zztrVar;
    }

    public final zzajv zzf() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zztn.zza[i10 - 1]) {
            case 1:
                return new zztl();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzamv<zztl> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zztl.class) {
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

    static /* synthetic */ void zza(zztl zztlVar, zzajv zzajvVar) {
        zzajvVar.getClass();
        zztlVar.zzh = zzajvVar;
    }

    static /* synthetic */ void zza(zztl zztlVar, zztr zztrVar) {
        zztrVar.getClass();
        zztlVar.zzg = zztrVar;
        zztlVar.zze |= 1;
    }
}
