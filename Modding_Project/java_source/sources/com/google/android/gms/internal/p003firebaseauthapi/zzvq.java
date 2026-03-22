package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvq  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzvq extends zzalf<zzvq, zza> implements zzamo {
    private static final zzvq zzc;
    private static volatile zzamv<zzvq> zzd;
    private int zze;
    private int zzf;
    private zzvk zzg;
    private zzajv zzh;
    private zzajv zzi;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvq$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzvq, zza> implements zzamo {
        public final zza zza(zzvk zzvkVar) {
            zzg();
            zzvq.zza((zzvq) this.zza, zzvkVar);
            return this;
        }

        public final zza zzb(zzajv zzajvVar) {
            zzg();
            zzvq.zzb((zzvq) this.zza, zzajvVar);
            return this;
        }

        private zza() {
            super(zzvq.zzc);
        }

        public final zza zza(int i10) {
            zzg();
            ((zzvq) this.zza).zzf = 0;
            return this;
        }

        public final zza zza(zzajv zzajvVar) {
            zzg();
            zzvq.zza((zzvq) this.zza, zzajvVar);
            return this;
        }
    }

    static {
        zzvq zzvqVar = new zzvq();
        zzc = zzvqVar;
        zzalf.zza(zzvq.class, zzvqVar);
    }

    private zzvq() {
        zzajv zzajvVar = zzajv.zza;
        this.zzh = zzajvVar;
        this.zzi = zzajvVar;
    }

    public static zza zzc() {
        return (zza) zzc.zzm();
    }

    public static zzvq zze() {
        return zzc;
    }

    public static zzamv<zzvq> zzh() {
        return (zzamv) zzc.zza(zzalf.zze.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzvk zzb() {
        zzvk zzvkVar = this.zzg;
        return zzvkVar == null ? zzvk.zze() : zzvkVar;
    }

    public final zzajv zzf() {
        return this.zzh;
    }

    public final zzajv zzg() {
        return this.zzi;
    }

    public static zzvq zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzvq) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    static /* synthetic */ void zzb(zzvq zzvqVar, zzajv zzajvVar) {
        zzajvVar.getClass();
        zzvqVar.zzi = zzajvVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzvp.zza[i10 - 1]) {
            case 1:
                return new zzvq();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n\u0004\n", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzvq> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzvq.class) {
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

    static /* synthetic */ void zza(zzvq zzvqVar, zzvk zzvkVar) {
        zzvkVar.getClass();
        zzvqVar.zzg = zzvkVar;
        zzvqVar.zze |= 1;
    }

    static /* synthetic */ void zza(zzvq zzvqVar, zzajv zzajvVar) {
        zzajvVar.getClass();
        zzvqVar.zzh = zzajvVar;
    }
}
