package com.startshorts.androidplayer.ui.activity;

import com.startshorts.androidplayer.viewmodel.cps.CpsViewModel;
import com.startshorts.androidplayer.viewmodel.cps.a;
import gt.g0;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MainActivity.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.MainActivity$resolveCpsEvent$1", f = "MainActivity.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class MainActivity$resolveCpsEvent$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44911h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f44912i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$resolveCpsEvent$1(MainActivity mainActivity, c<? super MainActivity$resolveCpsEvent$1> cVar) {
        super(2, cVar);
        this.f44912i = mainActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new MainActivity$resolveCpsEvent$1(this.f44912i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((MainActivity$resolveCpsEvent$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CpsViewModel h02;
        a.f();
        if (this.f44911h == 0) {
            f.b(obj);
            if ("".length() > 0) {
                Locale locale = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
                String lowerCase = "".toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                if (StringsKt.V(lowerCase, "tv", false, 2, null)) {
                    h02 = this.f44912i.h0();
                    h02.A(new a.C0657a(this.f44912i, ""));
                }
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
