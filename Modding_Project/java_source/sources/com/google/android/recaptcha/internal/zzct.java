package com.google.android.recaptcha.internal;

import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzct extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    /* synthetic */ Object zzc;
    final /* synthetic */ zzcv zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ long zzf;
    final /* synthetic */ zzcn zzg;
    final /* synthetic */ zzch zzh;
    final /* synthetic */ zzbi zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzct(zzcv zzcvVar, String str, long j10, zzcn zzcnVar, zzbi zzbiVar, zzch zzchVar, c cVar) {
        super(2, cVar);
        this.zzd = zzcvVar;
        this.zze = str;
        this.zzf = j10;
        this.zzg = zzcnVar;
        this.zzi = zzbiVar;
        this.zzh = zzchVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        zzct zzctVar = new zzct(this.zzd, this.zze, this.zzf, this.zzg, this.zzi, this.zzh, cVar);
        zzctVar.zzc = obj;
        return zzctVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzct) create((zzek) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzek zzekVar;
        zzcn zzcnVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        if (this.zzb != 0) {
            zzcnVar = (zzcn) this.zza;
            zzekVar = (zzek) this.zzc;
            f.b(obj);
        } else {
            f.b(obj);
            zzekVar = (zzek) this.zzc;
            zzdc zza = zzcv.zza(this.zzd, this.zze);
            if (zza != null) {
                return zza;
            }
            zzcv.zzc(this.zzd, this.zzf);
            zzcn zzcnVar2 = this.zzg;
            if (zzcnVar2 == null) {
                zzcnVar2 = zzcv.zze(this.zzd, this.zze, this.zzi, this.zzh, zzekVar);
            }
            long j10 = this.zzf;
            this.zzc = zzekVar;
            this.zza = zzcnVar2;
            this.zzb = 1;
            if (zzcnVar2.zzb(j10, this) == f10) {
                return f10;
            }
            zzcnVar = zzcnVar2;
        }
        zzdc zzdcVar = new zzdc(zzcnVar, this.zze, this.zzi, zzekVar);
        this.zzd.zzc = zzdcVar;
        return zzdcVar;
    }
}
