package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzwu  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzwu extends zzalf<zzwu, zza> implements zzamo {
    private static final zzwu zzc;
    private static volatile zzamv<zzwu> zzd;
    private int zze;
    private int zzf;
    private zzwo zzg;
    private zzajv zzh = zzajv.zza;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzwu$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzwu, zza> implements zzamo {
        public final zza zza(zzwo zzwoVar) {
            zzg();
            zzwu.zza((zzwu) this.zza, zzwoVar);
            return this;
        }

        private zza() {
            super(zzwu.zzc);
        }

        public final zza zza(zzajv zzajvVar) {
            zzg();
            zzwu.zza((zzwu) this.zza, zzajvVar);
            return this;
        }

        public final zza zza(int i10) {
            zzg();
            ((zzwu) this.zza).zzf = 0;
            return this;
        }
    }

    static {
        zzwu zzwuVar = new zzwu();
        zzc = zzwuVar;
        zzalf.zza(zzwu.class, zzwuVar);
    }

    private zzwu() {
    }

    public static zza zzc() {
        return (zza) zzc.zzm();
    }

    public static zzwu zze() {
        return zzc;
    }

    public static zzamv<zzwu> zzg() {
        return (zzamv) zzc.zza(zzalf.zze.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzwo zzb() {
        zzwo zzwoVar = this.zzg;
        if (zzwoVar == null) {
            return zzwo.zzf();
        }
        return zzwoVar;
    }

    public final zzajv zzf() {
        return this.zzh;
    }

    public static zzwu zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzwu) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzww.zza[i10 - 1]) {
            case 1:
                return new zzwu();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzwu> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzwu.class) {
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

    static /* synthetic */ void zza(zzwu zzwuVar, zzwo zzwoVar) {
        zzwoVar.getClass();
        zzwuVar.zzg = zzwoVar;
        zzwuVar.zze |= 1;
    }

    static /* synthetic */ void zza(zzwu zzwuVar, zzajv zzajvVar) {
        zzajvVar.getClass();
        zzwuVar.zzh = zzajvVar;
    }
}
