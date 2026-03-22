package com.google.android.recaptcha.internal;

import android.webkit.WebView;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zziq extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzja zzb;
    final /* synthetic */ String zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zziq(zzja zzjaVar, String str, c cVar) {
        super(2, cVar);
        this.zzb = zzjaVar;
        this.zzc = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zziq(this.zzb, this.zzc, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zziq) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zza;
        f.b(obj);
        if (i10 == 0) {
            zzja zzjaVar = this.zzb;
            this.zza = 1;
            obj = zzjaVar.zzw(this);
            if (obj == f10) {
                return f10;
            }
        }
        String str = this.zzc;
        ((WebView) obj).evaluateJavascript("recaptcha.m.Main.execute(\"" + str + "\")", null);
        return Unit.f60915a;
    }
}
