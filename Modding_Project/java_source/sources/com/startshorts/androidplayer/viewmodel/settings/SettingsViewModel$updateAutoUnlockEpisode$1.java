package com.startshorts.androidplayer.viewmodel.settings;

import android.content.Context;
import android.os.Bundle;
import com.startshorts.androidplayer.manager.event.EventManager;
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
@d(c = "com.startshorts.androidplayer.viewmodel.settings.SettingsViewModel$updateAutoUnlockEpisode$1", f = "SettingsViewModel.kt", l = {90}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class SettingsViewModel$updateAutoUnlockEpisode$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49349h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f49350i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ boolean f49351j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ SettingsViewModel f49352k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsViewModel$updateAutoUnlockEpisode$1(Context context, boolean z10, SettingsViewModel settingsViewModel, c<? super SettingsViewModel$updateAutoUnlockEpisode$1> cVar) {
        super(2, cVar);
        this.f49350i = context;
        this.f49351j = z10;
        this.f49352k = settingsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SettingsViewModel$updateAutoUnlockEpisode$1(this.f49350i, this.f49351j, this.f49352k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SettingsViewModel$updateAutoUnlockEpisode$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object o12;
        String str;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49349h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                o12 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            AccountRepo accountRepo = AccountRepo.f43052a;
            Context context = this.f49350i;
            boolean z10 = this.f49351j;
            this.f49349h = 1;
            o12 = accountRepo.o1(context, z10, this);
            if (o12 == f10) {
                return f10;
            }
        }
        SettingsViewModel settingsViewModel = this.f49352k;
        boolean z11 = this.f49351j;
        if (Result.j(o12)) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("from", "setting_click");
            if (z11) {
                str = "agree";
            } else {
                str = "cancel";
            }
            bundle.putString("status", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "auto_unlock", bundle, 0L, 4, null);
            o.b(settingsViewModel.C(), new b.d(z11));
        }
        return Unit.f60915a;
    }
}
