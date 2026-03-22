package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@Deprecated
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzxe  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzxe extends zzalf<zzxe, zza> implements zzamo {
    private static final zzxe zzc;
    private static volatile zzamv<zzxe> zzd;
    private int zzg;
    private boolean zzh;
    private String zze = "";
    private String zzf = "";
    private String zzi = "";

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzxe$zza */
    /* loaded from: classes4.dex */
    public static final class zza extends zzalf.zzb<zzxe, zza> implements zzamo {
        private zza() {
            super(zzxe.zzc);
        }
    }

    static {
        zzxe zzxeVar = new zzxe();
        zzc = zzxeVar;
        zzalf.zza(zzxe.class, zzxeVar);
    }

    private zzxe() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalf
    public final Object zza(int i10, Object obj, Object obj2) {
        switch (zzxg.zza[i10 - 1]) {
            case 1:
                return new zzxe();
            case 2:
                return new zza();
            case 3:
                return zzalf.zza(zzc, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case 5:
                zzamv<zzxe> zzamvVar = zzd;
                if (zzamvVar == null) {
                    synchronized (zzxe.class) {
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
