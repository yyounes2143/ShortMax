package com.google.android.recaptcha.internal;

import gt.g;
import gt.g0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.r;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzs extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzv zzb;
    final /* synthetic */ String zzc;
    private /* synthetic */ Object zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzs(zzv zzvVar, String str, c cVar) {
        super(2, cVar);
        this.zzb = zzvVar;
        this.zzc = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        zzs zzsVar = new zzs(this.zzb, this.zzc, cVar);
        zzsVar.zzd = obj;
        return zzsVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzs) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzsi zzq;
        List list;
        r d10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zza;
        f.b(obj);
        if (i10 == 0) {
            g0 g0Var = (g0) this.zzd;
            ArrayList arrayList = new ArrayList();
            zzv zzvVar = this.zzb;
            zzvVar.zzo().put(this.zzc, arrayList);
            ArrayList arrayList2 = new ArrayList();
            list = this.zzb.zzb;
            ArrayList<zzy> arrayList3 = new ArrayList();
            for (Object obj2 : list) {
                if (((zzy) obj2).zzf()) {
                    arrayList3.add(obj2);
                }
            }
            for (zzy zzyVar : arrayList3) {
                d10 = g.d(g0Var, null, null, new zzr(zzyVar, this.zzc, arrayList, null), 3, null);
                arrayList2.add(d10);
            }
            r[] rVarArr = (r[]) arrayList2.toArray(new r[0]);
            this.zza = 1;
            if (AwaitKt.d((r[]) Arrays.copyOf(rVarArr, rVarArr.length), this) == f10) {
                return f10;
            }
        }
        Result.a aVar = Result.f60901b;
        zzq = this.zzb.zzq(this.zzc);
        return Result.b(Result.d(zzq));
    }
}
