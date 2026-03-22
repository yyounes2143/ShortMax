package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzug  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzug extends zzalf<zzug, zza> implements zzamo {
    private static final zzug zzc;
    private static volatile zzamv<zzug> zzd;
    private int zze;
    private int zzf;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzug$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzug, zza> implements zzamo {
        public final zza zza(int i10) {
            zzg();
            ((zzug) this.zza).zze = i10;
            return this;
        }

        private zza() {
            super(zzug.zzc);
        }
    }

    static {
        zzug zzugVar = new zzug();
        zzc = zzugVar;
        zzalf.zza(zzug.class, zzugVar);
    }

    private zzug() {
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

    public static zzug zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzug) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzui.zza[i10 - 1]) {
            case 1:
                return new zzug();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzug> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzug.class) {
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
