package com.google.android.recaptcha.internal;

import gt.g;
import gt.g0;
import gt.k0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzh extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzl zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;
    private /* synthetic */ Object zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzh(zzl zzlVar, String str, long j10, c cVar) {
        super(2, cVar);
        this.zzb = zzlVar;
        this.zzc = str;
        this.zzd = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        zzh zzhVar = new zzh(this.zzb, this.zzc, this.zzd, cVar);
        zzhVar.zze = obj;
        return zzhVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzh) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzek zzekVar;
        zzen zzenVar;
        Object b10;
        zzen zzenVar2;
        k0 b11;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        if (this.zza != 0) {
            zzenVar2 = (zzen) this.zze;
            f.b(obj);
            b10 = obj;
        } else {
            f.b(obj);
            g0 g0Var = (g0) this.zze;
            zzekVar = this.zzb.zzb;
            if (zzekVar != null) {
                zzekVar.zzc(this.zzc);
                zzenVar = zzekVar.zzf(31);
            } else {
                zzenVar = null;
            }
            zzen zzenVar3 = zzenVar;
            ArrayList arrayList = new ArrayList();
            for (zze zzeVar : this.zzb.zzd()) {
                if (zzeVar.zzl()) {
                    b11 = g.b(g0Var, null, null, new zzg(zzeVar, this.zzc, this.zzd, null), 3, null);
                    arrayList.add(b11);
                }
            }
            k0[] k0VarArr = (k0[]) arrayList.toArray(new k0[0]);
            this.zze = zzenVar3;
            this.zza = 1;
            b10 = AwaitKt.b((k0[]) Arrays.copyOf(k0VarArr, k0VarArr.length), this);
            if (b10 != f10) {
                zzenVar2 = zzenVar3;
            } else {
                return f10;
            }
        }
        String str = this.zzc;
        zzsh zzf = zzsi.zzf();
        zzf.zze(str);
        for (Result result : (List) b10) {
            Object n10 = result.n();
            if (Result.j(n10)) {
                zzf.zzh((zzsi) n10);
            }
        }
        zzsi zzsiVar = (zzsi) zzf.zzk();
        if (zzenVar2 != null) {
            zzenVar2.zza();
        }
        return zzsiVar;
    }
}
