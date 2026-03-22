package com.google.android.recaptcha.internal;

import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzdg extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzdt zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ long zze;
    final /* synthetic */ zzsp zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdg(zzdt zzdtVar, String str, long j10, zzsp zzspVar, c cVar) {
        super(2, cVar);
        this.zzc = zzdtVar;
        this.zzd = str;
        this.zze = j10;
        this.zzf = zzspVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzdg(this.zzc, this.zzd, this.zze, this.zzf, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdg) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzek zzu;
        zzen zzenVar;
        Exception e10;
        TimeoutCancellationException e11;
        zzbd e12;
        zzbd zzs;
        zzbd zzs2;
        zzbd zzs3;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        if (this.zzb != 0) {
            zzenVar = (zzen) this.zza;
            try {
                f.b(obj);
            } catch (zzbd e13) {
                e12 = e13;
                zzs3 = this.zzc.zzs(e12, e12);
                zzenVar.zzb(zzs3);
                throw zzs3;
            } catch (TimeoutCancellationException e14) {
                e11 = e14;
                zzs2 = this.zzc.zzs(e11, new zzbd(zzbb.zzc, zzba.zzb, e11.getMessage()));
                zzenVar.zzb(zzs2);
                throw zzs2;
            } catch (Exception e15) {
                e10 = e15;
                zzs = this.zzc.zzs(e10, new zzbd(zzbb.zzc, zzba.zzZ, e10.getMessage()));
                zzenVar.zzb(zzs);
                throw zzs;
            }
        } else {
            f.b(obj);
            zzu = this.zzc.zzu(this.zzd);
            zzen zzf = zzu.zzf(28);
            try {
                long j10 = this.zze;
                zzdf zzdfVar = new zzdf(this.zzc, this.zzf, zzf, null);
                this.zza = zzf;
                this.zzb = 1;
                Object c10 = TimeoutKt.c(j10, zzdfVar, this);
                if (c10 != f10) {
                    zzenVar = zzf;
                    obj = c10;
                } else {
                    return f10;
                }
            } catch (zzbd e16) {
                zzenVar = zzf;
                e12 = e16;
                zzs3 = this.zzc.zzs(e12, e12);
                zzenVar.zzb(zzs3);
                throw zzs3;
            } catch (TimeoutCancellationException e17) {
                zzenVar = zzf;
                e11 = e17;
                zzs2 = this.zzc.zzs(e11, new zzbd(zzbb.zzc, zzba.zzb, e11.getMessage()));
                zzenVar.zzb(zzs2);
                throw zzs2;
            } catch (Exception e18) {
                zzenVar = zzf;
                e10 = e18;
                zzs = this.zzc.zzs(e10, new zzbd(zzbb.zzc, zzba.zzZ, e10.getMessage()));
                zzenVar.zzb(zzs);
                throw zzs;
            }
        }
        return (zzsr) obj;
    }
}
