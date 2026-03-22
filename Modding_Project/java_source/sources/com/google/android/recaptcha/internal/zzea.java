package com.google.android.recaptcha.internal;

import gt.p;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzea extends SuspendLambda implements Function1 {
    Object zza;
    int zzb;
    final /* synthetic */ zzec zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ p zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzea(zzec zzecVar, long j10, p pVar, c cVar) {
        super(1, cVar);
        this.zzc = zzecVar;
        this.zzd = j10;
        this.zze = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(c cVar) {
        return new zzea(this.zzc, this.zzd, this.zze, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return ((zzea) create((c) obj)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzek zzekVar;
        zzen zzenVar;
        zzbd e10;
        zzdt zzdtVar;
        zzen zzenVar2;
        zzdt zzdtVar2;
        zzcj zzcjVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zzb;
        if (i10 != 0) {
            if (i10 != 1) {
                zzenVar = (zzen) this.zza;
                try {
                    f.b(obj);
                    zzenVar.zza();
                    zzec zzecVar = this.zzc;
                    zzcjVar = zzcm.zzb;
                    zzecVar.zzf = zzcjVar;
                    return kotlin.coroutines.jvm.internal.a.a(this.zze.i(Unit.f60915a));
                } catch (zzbd e11) {
                    e10 = e11;
                    this.zzc.zzd = e10;
                    zzenVar.zzb(e10);
                    throw e10;
                }
            }
            zzenVar2 = (zzen) this.zza;
            try {
                f.b(obj);
            } catch (zzbd e12) {
                e10 = e12;
                zzenVar = zzenVar2;
                this.zzc.zzd = e10;
                zzenVar.zzb(e10);
                throw e10;
            }
        } else {
            f.b(obj);
            zzekVar = this.zzc.zzb;
            zzen zzf = zzekVar.zzf(41);
            try {
                zzdtVar = this.zzc.zza;
                long j10 = this.zzd;
                this.zza = zzf;
                this.zzb = 1;
                Object zzo = zzdtVar.zzo(j10, this);
                if (zzo != f10) {
                    zzenVar2 = zzf;
                    obj = zzo;
                }
                return f10;
            } catch (zzbd e13) {
                zzenVar = zzf;
                e10 = e13;
                this.zzc.zzd = e10;
                zzenVar.zzb(e10);
                throw e10;
            }
        }
        zzsc zzscVar = (zzsc) obj;
        this.zzc.zze = zzscVar;
        zzdtVar2 = this.zzc.zza;
        long j11 = this.zzd;
        this.zza = zzenVar2;
        this.zzb = 2;
        if (zzdtVar2.zzn(zzscVar, j11, this) != f10) {
            zzenVar = zzenVar2;
            zzenVar.zza();
            zzec zzecVar2 = this.zzc;
            zzcjVar = zzcm.zzb;
            zzecVar2.zzf = zzcjVar;
            return kotlin.coroutines.jvm.internal.a.a(this.zze.i(Unit.f60915a));
        }
        return f10;
    }
}
