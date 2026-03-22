package com.google.android.gms.internal.p003firebaseauthapi;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzama  reason: invalid package */
/* loaded from: classes4.dex */
final class zzama implements zzane {
    private static final zzamj zza = new zzalz();
    private final zzamj zzb;

    public zzama() {
        this(new zzamb(zzalg.zza(), zza));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzane
    public final <T> zzanb<T> zza(Class<T> cls) {
        zzakw<?> zzakwVar;
        zzand.zza((Class<?>) cls);
        zzamk zza2 = this.zzb.zza(cls);
        if (zza2.zzc()) {
            return zzams.zza(zzand.zza(), zzaky.zza(), zza2.zza());
        }
        zzamu zza3 = zzamw.zza();
        zzalw zza4 = zzaly.zza();
        zzanu<?, ?> zza5 = zzand.zza();
        if (zzamc.zza[zza2.zzb().ordinal()] != 1) {
            zzakwVar = zzaky.zza();
        } else {
            zzakwVar = null;
        }
        return zzamq.zza(cls, zza2, zza3, zza4, zza5, zzakwVar, zzamh.zza());
    }

    private zzama(zzamj zzamjVar) {
        this.zzb = (zzamj) zzalh.zza(zzamjVar, "messageInfoFactory");
    }
}
