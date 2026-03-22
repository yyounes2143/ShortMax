package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzxt  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzxt extends zzalf<zzxt, zza> implements zzamo {
    private static final zzxt zzc;
    private static volatile zzamv<zzxt> zzd;
    private int zze;
    private int zzf;
    private zzxw zzg;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzxt$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzxt, zza> implements zzamo {
        public final zza zza(zzxw zzxwVar) {
            zzg();
            zzxt.zza((zzxt) this.zza, zzxwVar);
            return this;
        }

        private zza() {
            super(zzxt.zzc);
        }
    }

    static {
        zzxt zzxtVar = new zzxt();
        zzc = zzxtVar;
        zzalf.zza(zzxt.class, zzxtVar);
    }

    private zzxt() {
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zzamv<zzxt> zze() {
        return (zzamv) zzc.zza(zzalf.zze.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzxw zzd() {
        zzxw zzxwVar = this.zzg;
        if (zzxwVar == null) {
            return zzxw.zzd();
        }
        return zzxwVar;
    }

    public static zzxt zza(zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (zzxt) zzalf.zza(zzc, zzajvVar, zzakuVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzxv.zza[i10 - 1]) {
            case 1:
                return new zzxt();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzxt> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzxt.class) {
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

    static /* synthetic */ void zza(zzxt zzxtVar, zzxw zzxwVar) {
        zzxwVar.getClass();
        zzxtVar.zzg = zzxwVar;
        zzxtVar.zze |= 1;
    }
}
