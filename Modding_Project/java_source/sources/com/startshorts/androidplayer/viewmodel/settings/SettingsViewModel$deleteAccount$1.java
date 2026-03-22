package com.startshorts.androidplayer.viewmodel.settings;

import android.content.Context;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.viewmodel.settings.b;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: SettingsViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.settings.SettingsViewModel$deleteAccount$1", f = "SettingsViewModel.kt", l = {116}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class SettingsViewModel$deleteAccount$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49343h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f49344i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SettingsViewModel f49345j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsViewModel$deleteAccount$1(Context context, SettingsViewModel settingsViewModel, c<? super SettingsViewModel$deleteAccount$1> cVar) {
        super(2, cVar);
        this.f49344i = context;
        this.f49345j = settingsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SettingsViewModel$deleteAccount$1(this.f49344i, this.f49345j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SettingsViewModel$deleteAccount$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object Z;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49343h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                Z = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            AccountRepo accountRepo = AccountRepo.f43052a;
            Context context = this.f49344i;
            this.f49343h = 1;
            Z = accountRepo.Z(context, this);
            if (Z == f10) {
                return f10;
            }
        }
        SettingsViewModel settingsViewModel = this.f49345j;
        if (Result.j(Z)) {
            o.b(settingsViewModel.C(), b.a.f49359a);
        }
        return Unit.f60915a;
    }
}
