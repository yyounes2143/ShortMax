package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzti  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzti extends zzalf<zzti, zza> implements zzamo {
    private static final zzti zzc;
    private static volatile zzamv<zzti> zzd;
    private int zze;
    private zzto zzf;
    private zzwe zzg;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzti$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzti, zza> implements zzamo {
        public final zza zza(zzto zztoVar) {
            zzg();
            zzti.zza((zzti) this.zza, zztoVar);
            return this;
        }

        private zza() {
            super(zzti.zzc);
        }

        public final zza zza(zzwe zzweVar) {
            zzg();
            zzti.zza((zzti) this.zza, zzweVar);
            return this;
        }
    }

    static {
        zzti zztiVar = new zzti();
        zzc = zztiVar;
        zzalf.zza(zzti.class, zztiVar);
    }

    private zzti() {
    }

    public static zza zza() {
        return (zza) zzc.zzm();
    }

    public final zzto zzc() {
        zzto zztoVar = this.zzf;
        if (zztoVar == null) {
            return zzto.zzd();
        }
        return zztoVar;
    }

    public final zzwe zzd() {
        zzwe zzweVar = this.zzg;
        if (zzweVar == null) {
            return zzwe.zze();
        }
        return zzweVar;
    }

    public static zzti zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzti) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zztk.zza[i10 - 1]) {
            case 1:
                return new zzti();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzti> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzti.class) {
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

    static /* synthetic */ void zza(zzti zztiVar, zzto zztoVar) {
        zztoVar.getClass();
        zztiVar.zzf = zztoVar;
        zztiVar.zze |= 1;
    }

    static /* synthetic */ void zza(zzti zztiVar, zzwe zzweVar) {
        zzweVar.getClass();
        zztiVar.zzg = zzweVar;
        zztiVar.zze |= 2;
    }
}
