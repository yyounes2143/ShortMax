package com.startshorts.androidplayer.viewmodel.settings;

import android.content.Context;
import android.os.Bundle;
import com.hades.aar.activity.IDActivity;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.viewmodel.settings.b;
import gt.g0;
import java.lang.ref.WeakReference;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import ng.e;
import ng.g;
import rs.c;
/* compiled from: SettingsViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.settings.SettingsViewModel$logout$1", f = "SettingsViewModel.kt", l = {134}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nSettingsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"})
/* loaded from: classes7.dex */
final class SettingsViewModel$logout$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49346h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f49347i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SettingsViewModel f49348j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsViewModel$logout$1(Context context, SettingsViewModel settingsViewModel, c<? super SettingsViewModel$logout$1> cVar) {
        super(2, cVar);
        this.f49347i = context;
        this.f49348j = settingsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SettingsViewModel$logout$1(this.f49347i, this.f49348j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SettingsViewModel$logout$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object R0;
        IDActivity iDActivity;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49346h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                R0 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            AccountRepo accountRepo = AccountRepo.f43052a;
            int j02 = accountRepo.j0();
            if (j02 != 10) {
                if (j02 == 20) {
                    bundle.putString("type", "facebook");
                }
            } else {
                bundle.putString("type", "google");
            }
            bundle.putString("is_auto", MBridgeConstans.ENDCARD_URL_TYPE_PL);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "log_out", bundle, 0L, 4, null);
            Context context = this.f49347i;
            this.f49346h = 1;
            R0 = accountRepo.R0(context, this);
            if (R0 == f10) {
                return f10;
            }
        }
        SettingsViewModel settingsViewModel = this.f49348j;
        if (Result.j(R0)) {
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            if (d10 != null && (iDActivity = d10.get()) != null) {
                g.f62917a.f(iDActivity);
            }
            o.b(settingsViewModel.C(), b.C0690b.f49360a);
            HomeRetainDiscountSubsPresent.f42741a.e();
            e.f62912a.e();
        }
        return Unit.f60915a;
    }
}
