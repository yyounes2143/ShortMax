package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzwe  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzwe extends zzalf<zzwe, zza> implements zzamo {
    private static final zzwe zzc;
    private static volatile zzamv<zzwe> zzd;
    private int zze;
    private zzwh zzf;
    private int zzg;
    private int zzh;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzwe$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzwe, zza> implements zzamo {
        public final zza zza(int i10) {
            zzg();
            ((zzwe) this.zza).zzg = i10;
            return this;
        }

        private zza() {
            super(zzwe.zzc);
        }

        public final zza zza(zzwh zzwhVar) {
            zzg();
            zzwe.zza((zzwe) this.zza, zzwhVar);
            return this;
        }
    }

    static {
        zzwe zzweVar = new zzwe();
        zzc = zzweVar;
        zzalf.zza(zzwe.class, zzweVar);
    }

    private zzwe() {
    }

    public static zza zzc() {
        return (zza) zzc.zzm();
    }

    public static zzwe zze() {
        return zzc;
    }

    public final int zza() {
        return this.zzg;
    }

    public final int zzb() {
        return this.zzh;
    }

    public final zzwh zzf() {
        zzwh zzwhVar = this.zzf;
        if (zzwhVar == null) {
            return zzwh.zze();
        }
        return zzwhVar;
    }

    public static zzwe zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzwe) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzwd.zza[i10 - 1]) {
            case 1:
                return new zzwe();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b\u0003\u000b", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzwe> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzwe.class) {
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

    static /* synthetic */ void zza(zzwe zzweVar, zzwh zzwhVar) {
        zzwhVar.getClass();
        zzweVar.zzf = zzwhVar;
        zzweVar.zze |= 1;
    }
}
