package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzuj  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzuj extends zzalf<zzuj, zza> implements zzamo {
    private static final zzuj zzc;
    private static volatile zzamv<zzuj> zzd;
    private int zze;
    private zzajv zzf = zzajv.zza;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzuj$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzuj, zza> implements zzamo {
        public final zza zza(zzajv zzajvVar) {
            zzg();
            zzuj.zza((zzuj) this.zza, zzajvVar);
            return this;
        }

        private zza() {
            super(zzuj.zzc);
        }
    }

    static {
        zzuj zzujVar = new zzuj();
        zzc = zzujVar;
        zzalf.zza(zzuj.class, zzujVar);
    }

    private zzuj() {
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zzamv<zzuj> zze() {
        return (zzamv) zzc.zza(zzalf.zze.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zze;
    }

    public final zzajv zzd() {
        return this.zzf;
    }

    public static zzuj zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzuj) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzul.zza[i10 - 1]) {
            case 1:
                return new zzuj();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzuj> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzuj.class) {
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

    static /* synthetic */ void zza(zzuj zzujVar, zzajv zzajvVar) {
        zzajvVar.getClass();
        zzujVar.zzf = zzajvVar;
    }
}
