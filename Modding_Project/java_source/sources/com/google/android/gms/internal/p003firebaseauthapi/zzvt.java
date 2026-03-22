package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvt  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzvt extends zzalf<zzvt, zza> implements zzamo {
    private static final zzvt zzc;
    private static volatile zzamv<zzvt> zzd;
    private int zze;
    private int zzf;
    private zzajv zzg = zzajv.zza;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvt$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzvt, zza> implements zzamo {
        public final zza zza(zzvw zzvwVar) {
            zzg();
            zzvt.zza((zzvt) this.zza, zzvwVar);
            return this;
        }

        private zza() {
            super(zzvt.zzc);
        }

        public final zza zza(zzvy zzvyVar) {
            zzg();
            zzvt.zza((zzvt) this.zza, zzvyVar);
            return this;
        }

        public final zza zza(zzajv zzajvVar) {
            zzg();
            zzvt.zza((zzvt) this.zza, zzajvVar);
            return this;
        }
    }

    static {
        zzvt zzvtVar = new zzvt();
        zzc = zzvtVar;
        zzalf.zza(zzvt.class, zzvtVar);
    }

    private zzvt() {
    }

    public static zza zza() {
        return (zza) zzc.zzm();
    }

    public static zzvt zzc() {
        return zzc;
    }

    public final zzvw zzd() {
        zzvw zza2 = zzvw.zza(this.zze);
        if (zza2 == null) {
            return zzvw.UNRECOGNIZED;
        }
        return zza2;
    }

    public final zzvy zze() {
        zzvy zza2 = zzvy.zza(this.zzf);
        if (zza2 == null) {
            return zzvy.UNRECOGNIZED;
        }
        return zza2;
    }

    public final zzajv zzf() {
        return this.zzg;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzvs.zza[i10 - 1]) {
            case 1:
                return new zzvt();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzvt> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzvt.class) {
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

    static /* synthetic */ void zza(zzvt zzvtVar, zzvw zzvwVar) {
        zzvtVar.zze = zzvwVar.zza();
    }

    static /* synthetic */ void zza(zzvt zzvtVar, zzvy zzvyVar) {
        zzvtVar.zzf = zzvyVar.zza();
    }

    static /* synthetic */ void zza(zzvt zzvtVar, zzajv zzajvVar) {
        zzajvVar.getClass();
        zzvtVar.zzg = zzajvVar;
    }
}
