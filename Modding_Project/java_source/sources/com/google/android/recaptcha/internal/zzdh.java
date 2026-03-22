package com.google.android.recaptcha.internal;

import android.app.Application;
import android.os.Build;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzdh extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzdt zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdh(zzdt zzdtVar, c cVar) {
        super(2, cVar);
        this.zzb = zzdtVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzdh(this.zzb, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdh) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Application zzr;
        String str;
        Application zzr2;
        zzek zzekVar;
        zzbf zzt;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zza;
        f.b(obj);
        if (i10 == 0) {
            zzbs zzbsVar = new zzbs(GoogleApiAvailabilityLight.getInstance());
            zzr = this.zzb.zzr();
            int zza = zzbsVar.zza(zzr);
            zzdt zzdtVar = this.zzb;
            str = zzdtVar.zza;
            zzr2 = zzdtVar.zzr();
            String packageName = zzr2.getPackageName();
            zzekVar = this.zzb.zzb;
            String zzd = zzekVar.zzd();
            zzt = this.zzb.zzt();
            int i11 = Build.VERSION.SDK_INT;
            String zza2 = zzt.zza();
            zztn zzf = zzto.zzf();
            zzf.zzt(str);
            zzf.zzq(packageName);
            zzf.zzu(zza);
            zzf.zzr("18.6.1");
            zzf.zzs(zzd);
            zzf.zzf(String.valueOf(i11));
            zzf.zze(zza2);
            zzdt zzdtVar2 = this.zzb;
            zzff zzg = zzdt.zzg(zzdtVar2);
            String zzb = zzdt.zzd(zzdtVar2).zzb();
            this.zza = 1;
            obj = zzg.zzc(zzb, (zzto) zzf.zzk(), this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
