package com.startshorts.androidplayer.viewmodel.profile;

import android.content.Context;
import com.startshorts.androidplayer.repo.language.LanguageRepo;
import com.startshorts.androidplayer.viewmodel.profile.b;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: LanguageViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.profile.LanguageViewModel$loadAppLanguages$1", f = "LanguageViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class LanguageViewModel$loadAppLanguages$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48965h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f48966i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ LanguageViewModel f48967j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageViewModel$loadAppLanguages$1(Context context, LanguageViewModel languageViewModel, rs.c<? super LanguageViewModel$loadAppLanguages$1> cVar) {
        super(2, cVar);
        this.f48966i = context;
        this.f48967j = languageViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new LanguageViewModel$loadAppLanguages$1(this.f48966i, this.f48967j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((LanguageViewModel$loadAppLanguages$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48965h == 0) {
            kotlin.f.b(obj);
            o.b(this.f48967j.B(), new b.a(LanguageRepo.f44181a.i(this.f48966i)));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
