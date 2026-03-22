package com.google.android.recaptcha.internal;

import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zziz extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzja zzc;
    final /* synthetic */ zzen zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zziz(zzja zzjaVar, zzen zzenVar, c cVar) {
        super(2, cVar);
        this.zzc = zzjaVar;
        this.zzd = zzenVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zziz(this.zzc, this.zzd, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zziz) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
        if (r6.zzx(r5) != r0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
        if (kotlinx.coroutines.TimeoutKt.c(20000, r6, r5) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r5.zzb
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L20
            if (r1 == r3) goto L1c
            if (r1 == r2) goto L16
            java.lang.Object r0 = r5.zza
            com.google.android.recaptcha.internal.zzbd r0 = (com.google.android.recaptcha.internal.zzbd) r0
            kotlin.f.b(r6)
            goto L6b
        L16:
            kotlin.f.b(r6)     // Catch: java.lang.Exception -> L1a
            goto L70
        L1a:
            r6 = move-exception
            goto L42
        L1c:
            kotlin.f.b(r6)     // Catch: java.lang.Exception -> L1a
            goto L2d
        L20:
            kotlin.f.b(r6)
            com.google.android.recaptcha.internal.zzja r6 = r5.zzc     // Catch: java.lang.Exception -> L1a
            r5.zzb = r3     // Catch: java.lang.Exception -> L1a
            java.lang.Object r6 = r6.zzx(r5)     // Catch: java.lang.Exception -> L1a
            if (r6 == r0) goto L69
        L2d:
            com.google.android.recaptcha.internal.zziy r6 = new com.google.android.recaptcha.internal.zziy     // Catch: java.lang.Exception -> L1a
            com.google.android.recaptcha.internal.zzja r1 = r5.zzc     // Catch: java.lang.Exception -> L1a
            com.google.android.recaptcha.internal.zzen r3 = r5.zzd     // Catch: java.lang.Exception -> L1a
            r4 = 0
            r6.<init>(r1, r3, r4)     // Catch: java.lang.Exception -> L1a
            r5.zzb = r2     // Catch: java.lang.Exception -> L1a
            r1 = 20000(0x4e20, double:9.8813E-320)
            java.lang.Object r6 = kotlinx.coroutines.TimeoutKt.c(r1, r6, r5)     // Catch: java.lang.Exception -> L1a
            if (r6 != r0) goto L70
            goto L69
        L42:
            r6.getMessage()
            com.google.android.recaptcha.internal.zzbd r1 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r2 = com.google.android.recaptcha.internal.zzbb.zzb
            com.google.android.recaptcha.internal.zzba r3 = com.google.android.recaptcha.internal.zzba.zzV
            java.lang.String r4 = r6.getMessage()
            r1.<init>(r2, r3, r4)
            com.google.android.recaptcha.internal.zzbd r6 = com.google.android.recaptcha.internal.zzf.zza(r6, r1)
            com.google.android.recaptcha.internal.zzja r1 = r5.zzc
            com.google.android.recaptcha.internal.zzcb r1 = r1.zzm()
            com.google.android.recaptcha.internal.zzje r2 = com.google.android.recaptcha.internal.zzje.zza
            r5.zza = r6
            r3 = 3
            r5.zzb = r3
            java.lang.Object r1 = r1.zzc(r2, r5)
            if (r1 != r0) goto L6a
        L69:
            return r0
        L6a:
            r0 = r6
        L6b:
            com.google.android.recaptcha.internal.zzen r6 = r5.zzd
            r6.zzb(r0)
        L70:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zziz.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
