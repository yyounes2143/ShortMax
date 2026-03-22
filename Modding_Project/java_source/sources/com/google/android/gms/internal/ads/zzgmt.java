package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgmt {
    private final zzgxe zza;
    private final Class zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgmt(zzgxe zzgxeVar, Class cls, zzgms zzgmsVar) {
        this.zza = zzgxeVar;
        this.zzb = cls;
    }

    public static zzgmt zzb(zzgmr zzgmrVar, zzgxe zzgxeVar, Class cls) {
        return new zzgmq(zzgxeVar, cls, zzgmrVar);
    }

    public abstract zzgez zza(zzgpb zzgpbVar, zzgfn zzgfnVar) throws GeneralSecurityException;

    public final zzgxe zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
