package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzxn  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzxn extends zzalf<zzxn, zza> implements zzamo {
    private static final zzxn zzc;
    private static volatile zzamv<zzxn> zzd;
    private int zze;
    private int zzf;
    private zzxq zzg;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzxn$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzxn, zza> implements zzamo {
        public final zza zza(zzxq zzxqVar) {
            zzg();
            zzxn.zza((zzxn) this.zza, zzxqVar);
            return this;
        }

        private zza() {
            super(zzxn.zzc);
        }
    }

    static {
        zzxn zzxnVar = new zzxn();
        zzc = zzxnVar;
        zzalf.zza(zzxn.class, zzxnVar);
    }

    private zzxn() {
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zzamv<zzxn> zze() {
        return (zzamv) zzc.zza(zzalf.zze.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzxq zzd() {
        zzxq zzxqVar = this.zzg;
        if (zzxqVar == null) {
            return zzxq.zzc();
        }
        return zzxqVar;
    }

    public static zzxn zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzxn) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzxp.zza[i10 - 1]) {
            case 1:
                return new zzxn();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzxn> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzxn.class) {
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

    static /* synthetic */ void zza(zzxn zzxnVar, zzxq zzxqVar) {
        zzxqVar.getClass();
        zzxnVar.zzg = zzxqVar;
        zzxnVar.zze |= 1;
    }
}
