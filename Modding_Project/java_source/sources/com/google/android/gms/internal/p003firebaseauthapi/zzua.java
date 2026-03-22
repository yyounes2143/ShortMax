package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzua  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzua extends zzalf<zzua, zza> implements zzamo {
    private static final zzua zzc;
    private static volatile zzamv<zzua> zzd;
    private int zze;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzua$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzua, zza> implements zzamo {
        public final zza zza(int i10) {
            zzg();
            ((zzua) this.zza).zze = i10;
            return this;
        }

        private zza() {
            super(zzua.zzc);
        }
    }

    static {
        zzua zzuaVar = new zzua();
        zzc = zzuaVar;
        zzalf.zza(zzua.class, zzuaVar);
    }

    private zzua() {
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zzua zzd() {
        return zzc;
    }

    public final int zza() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzuc.zza[i10 - 1]) {
            case 1:
                return new zzua();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzua> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzua.class) {
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
}
