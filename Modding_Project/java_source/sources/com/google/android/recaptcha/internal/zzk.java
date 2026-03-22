package com.google.android.recaptcha.internal;

import gt.g;
import gt.g0;
import gt.k0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
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
public final class zzk extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzl zzb;
    final /* synthetic */ zzek zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzsc zze;
    private /* synthetic */ Object zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzk(zzl zzlVar, zzek zzekVar, long j10, zzsc zzscVar, c cVar) {
        super(2, cVar);
        this.zzb = zzlVar;
        this.zzc = zzekVar;
        this.zzd = j10;
        this.zze = zzscVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        zzk zzkVar = new zzk(this.zzb, this.zzc, this.zzd, this.zze, cVar);
        zzkVar.zzf = obj;
        return zzkVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzk) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object b10;
        zzen zzenVar;
        k0 b11;
        Object d10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        if (this.zza != 0) {
            zzenVar = (zzen) this.zzf;
            f.b(obj);
            b10 = obj;
        } else {
            f.b(obj);
            g0 g0Var = (g0) this.zzf;
            this.zzb.zzb = this.zzc;
            zzek zzekVar = this.zzc;
            zzekVar.zzc(zzekVar.zzd());
            zzen zzf = zzekVar.zzf(30);
            ArrayList arrayList = new ArrayList();
            for (zze zzeVar : this.zzb.zzd()) {
                b11 = g.b(g0Var, null, null, new zzj(zzeVar, this.zzd, this.zze, null), 3, null);
                arrayList.add(b11);
            }
            k0[] k0VarArr = (k0[]) arrayList.toArray(new k0[0]);
            this.zzf = zzf;
            this.zza = 1;
            b10 = AwaitKt.b((k0[]) Arrays.copyOf(k0VarArr, k0VarArr.length), this);
            if (b10 != f10) {
                zzenVar = zzf;
            } else {
                return f10;
            }
        }
        List<Result> list = (List) b10;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (Result result : list) {
                if (!Result.i(result.n())) {
                    zzenVar.zza();
                    d10 = Result.d(Unit.f60915a);
                    break;
                }
            }
        }
        zzbd zzbdVar = new zzbd(zzbb.zzb, zzba.zzY, null);
        zzenVar.zzb(zzbdVar);
        Result.a aVar = Result.f60901b;
        d10 = Result.d(f.a(zzbdVar));
        return Result.b(d10);
    }
}
