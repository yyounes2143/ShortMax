package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvh  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzvh extends zzalf<zzvh, zza> implements zzamo {
    private static final zzvh zzc;
    private static volatile zzamv<zzvh> zzd;
    private int zze;
    private zzvk zzf;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvh$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzvh, zza> implements zzamo {
        public final zza zza(zzvk zzvkVar) {
            zzg();
            zzvh.zza((zzvh) this.zza, zzvkVar);
            return this;
        }

        private zza() {
            super(zzvh.zzc);
        }
    }

    static {
        zzvh zzvhVar = new zzvh();
        zzc = zzvhVar;
        zzalf.zza(zzvh.class, zzvhVar);
    }

    private zzvh() {
    }

    public static zza zza() {
        return (zza) zzc.zzm();
    }

    public final zzvk zzc() {
        zzvk zzvkVar = this.zzf;
        if (zzvkVar == null) {
            return zzvk.zze();
        }
        return zzvkVar;
    }

    public static zzvh zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzvh) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzvg.zza[i10 - 1]) {
            case 1:
                return new zzvh();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzvh> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzvh.class) {
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

    static /* synthetic */ void zza(zzvh zzvhVar, zzvk zzvkVar) {
        zzvkVar.getClass();
        zzvhVar.zzf = zzvkVar;
        zzvhVar.zze |= 1;
    }
}
