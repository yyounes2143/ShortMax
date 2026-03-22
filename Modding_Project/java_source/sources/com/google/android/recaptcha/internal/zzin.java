package com.google.android.recaptcha.internal;

import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzin extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzja zzb;
    final /* synthetic */ String zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzin(zzja zzjaVar, String str, c cVar) {
        super(2, cVar);
        this.zzb = zzjaVar;
        this.zzc = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzin(this.zzb, this.zzc, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzin) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
        return kotlin.Unit.f60915a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000c, code lost:
        if (r1 != 1) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        if (r4 != r0) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
        if (r4 == r0) goto L6;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r4) {
        /*
            r3 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r3.zza
            r2 = 1
            kotlin.f.b(r4)
            if (r1 == 0) goto Lf
            if (r1 == r2) goto L19
            goto L2c
        Lf:
            com.google.android.recaptcha.internal.zzja r4 = r3.zzb
            r3.zza = r2
            java.lang.Object r4 = r4.zzw(r3)
            if (r4 == r0) goto L2f
        L19:
            android.webkit.WebView r4 = (android.webkit.WebView) r4
            r4.clearCache(r2)
            com.google.android.recaptcha.internal.zzja r4 = r3.zzb
            java.lang.String r1 = r3.zzc
            r2 = 2
            r3.zza = r2
            java.lang.Object r4 = com.google.android.recaptcha.internal.zzja.zzu(r4, r1, r3)
            if (r4 != r0) goto L2c
            goto L2f
        L2c:
            kotlin.Unit r4 = kotlin.Unit.f60915a
            return r4
        L2f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzin.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
