package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzus  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzus extends zzalf<zzus, zza> implements zzamo {
    private static final zzus zzc;
    private static volatile zzamv<zzus> zzd;
    private int zze;
    private int zzf;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzus$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzus, zza> implements zzamo {
        public final zza zza(int i10) {
            zzg();
            ((zzus) this.zza).zze = i10;
            return this;
        }

        private zza() {
            super(zzus.zzc);
        }
    }

    static {
        zzus zzusVar = new zzus();
        zzc = zzusVar;
        zzalf.zza(zzus.class, zzusVar);
    }

    private zzus() {
    }

    public static zza zzc() {
        return (zza) zzc.zzm();
    }

    public final int zza() {
        return this.zze;
    }

    public final int zzb() {
        return this.zzf;
    }

    public static zzus zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzus) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzuu.zza[i10 - 1]) {
            case 1:
                return new zzus();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzus> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzus.class) {
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
