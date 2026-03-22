package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzans  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzans extends zzalf<zzans, zza> implements zzamo {
    private static final zzans zzc;
    private static volatile zzamv<zzans> zzd;
    private long zze;
    private int zzf;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzans$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzans, zza> implements zzamo {
        public final zza zza(int i10) {
            if (!this.zza.zzw()) {
                zzh();
            }
            ((zzans) this.zza).zzf = i10;
            return this;
        }

        private zza() {
            super(zzans.zzc);
        }

        public final zza zza(long j10) {
            if (!this.zza.zzw()) {
                zzh();
            }
            ((zzans) this.zza).zze = j10;
            return this;
        }
    }

    static {
        zzans zzansVar = new zzans();
        zzc = zzansVar;
        zzalf.zza(zzans.class, zzansVar);
    }

    private zzans() {
    }

    public static zza zzc() {
        return (zza) zzc.zzm();
    }

    public final int zza() {
        return this.zzf;
    }

    public final long zzb() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzanr.zza[i10 - 1]) {
            case 1:
                return new zzans();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzans> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzans.class) {
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
