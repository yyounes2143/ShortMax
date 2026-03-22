package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvn  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzvn extends zzalf<zzvn, zza> implements zzamo {
    private static final zzvn zzc;
    private static volatile zzamv<zzvn> zzd;
    private int zze;
    private int zzf;
    private zzvq zzg;
    private zzajv zzh = zzajv.zza;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvn$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzvn, zza> implements zzamo {
        public final zza zza(zzajv zzajvVar) {
            zzg();
            zzvn.zza((zzvn) this.zza, zzajvVar);
            return this;
        }

        private zza() {
            super(zzvn.zzc);
        }

        public final zza zza(zzvq zzvqVar) {
            zzg();
            zzvn.zza((zzvn) this.zza, zzvqVar);
            return this;
        }

        public final zza zza(int i10) {
            zzg();
            ((zzvn) this.zza).zzf = 0;
            return this;
        }
    }

    static {
        zzvn zzvnVar = new zzvn();
        zzc = zzvnVar;
        zzalf.zza(zzvn.class, zzvnVar);
    }

    private zzvn() {
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zzamv<zzvn> zzf() {
        return (zzamv) zzc.zza(zzalf.zze.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzvq zzd() {
        zzvq zzvqVar = this.zzg;
        if (zzvqVar == null) {
            return zzvq.zze();
        }
        return zzvqVar;
    }

    public final zzajv zze() {
        return this.zzh;
    }

    public static zzvn zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzvn) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzvm.zza[i10 - 1]) {
            case 1:
                return new zzvn();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzvn> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzvn.class) {
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

    static /* synthetic */ void zza(zzvn zzvnVar, zzajv zzajvVar) {
        zzajvVar.getClass();
        zzvnVar.zzh = zzajvVar;
    }

    static /* synthetic */ void zza(zzvn zzvnVar, zzvq zzvqVar) {
        zzvqVar.getClass();
        zzvnVar.zzg = zzvqVar;
        zzvnVar.zze |= 1;
    }
}
