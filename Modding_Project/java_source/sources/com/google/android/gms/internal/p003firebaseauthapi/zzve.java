package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzve  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzve extends zzalf<zzve, zza> implements zzamo {
    private static final zzve zzc;
    private static volatile zzamv<zzve> zzd;
    private int zze;
    private zzxb zzf;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzve$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzve, zza> implements zzamo {
        public final zza zza(zzxb zzxbVar) {
            zzg();
            zzve.zza((zzve) this.zza, zzxbVar);
            return this;
        }

        private zza() {
            super(zzve.zzc);
        }
    }

    static {
        zzve zzveVar = new zzve();
        zzc = zzveVar;
        zzalf.zza(zzve.class, zzveVar);
    }

    private zzve() {
    }

    public static zza zza() {
        return (zza) zzc.zzm();
    }

    public static zzve zzc() {
        return zzc;
    }

    public final zzxb zzd() {
        zzxb zzxbVar = this.zzf;
        if (zzxbVar == null) {
            return zzxb.zzc();
        }
        return zzxbVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzvd.zza[i10 - 1]) {
            case 1:
                return new zzve();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0001\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0000\u0002ဉ\u0000", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzve> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzve.class) {
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

    static /* synthetic */ void zza(zzve zzveVar, zzxb zzxbVar) {
        zzxbVar.getClass();
        zzveVar.zzf = zzxbVar;
        zzveVar.zze |= 1;
    }
}
