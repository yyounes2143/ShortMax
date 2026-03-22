package com.google.android.recaptcha.internal;

import gt.g0;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzfq extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzgd zzb;
    final /* synthetic */ List zzc;
    final /* synthetic */ zzft zzd;
    private /* synthetic */ Object zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfq(zzgd zzgdVar, List list, zzft zzftVar, c cVar) {
        super(2, cVar);
        this.zzb = zzgdVar;
        this.zzc = list;
        this.zzd = zzftVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        zzfq zzfqVar = new zzfq(this.zzb, this.zzc, this.zzd, cVar);
        zzfqVar.zze = obj;
        return zzfqVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfq) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object zzh;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zza;
        f.b(obj);
        if (i10 == 0) {
            g0 g0Var = (g0) this.zze;
            while (true) {
                zzgd zzgdVar = this.zzb;
                if (zzgdVar.zza() < 0) {
                    break;
                }
                if (zzgdVar.zza() >= this.zzc.size() || !i.h(g0Var)) {
                    break;
                }
                zzuf zzufVar = (zzuf) this.zzc.get(this.zzb.zza());
                try {
                    zzft.zzf(this.zzd, zzufVar, this.zzb);
                } catch (Exception e10) {
                    zzufVar.zzk();
                    kotlin.coroutines.jvm.internal.a.d(zzufVar.zzg());
                    CollectionsKt.A0(zzufVar.zzj(), null, null, null, 0, null, new zzfp(this.zzd), 31, null);
                    zzft zzftVar = this.zzd;
                    zzgd zzgdVar2 = this.zzb;
                    this.zza = 1;
                    zzh = zzftVar.zzh(e10, zzgdVar2, this);
                    if (zzh == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
        return Unit.f60915a;
    }
}
