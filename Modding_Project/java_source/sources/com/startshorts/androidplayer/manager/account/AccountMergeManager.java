package com.startshorts.androidplayer.manager.account;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import au.c;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.account.MergeUserInfo;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.account.AccountMergeManager;
import com.startshorts.androidplayer.manager.account.a;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import ii.d;
import ii.g;
import ii.h;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.b;
/* compiled from: AccountMergeManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAccountMergeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountMergeManager.kt\ncom/startshorts/androidplayer/manager/account/AccountMergeManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"})
/* loaded from: classes6.dex */
public final class AccountMergeManager {

    /* renamed from: c  reason: collision with root package name */
    private static boolean f41552c;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static g f41554e;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AccountMergeManager f41550a = new AccountMergeManager();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final MutableLiveData<com.startshorts.androidplayer.manager.account.a> f41551b = new MutableLiveData<>(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static Function0<Unit> f41553d = new Function0() { // from class: be.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Unit j10;
            j10 = AccountMergeManager.j();
            return j10;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AccountMergeManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f41555a;

        a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f41555a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final f<?> getFunctionDelegate() {
            return this.f41555a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f41555a.invoke(obj);
        }
    }

    private AccountMergeManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j() {
        return Unit.f60915a;
    }

    private final void k() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "mergeTourist", false, new AccountMergeManager$mergeTourist$1(null), 2, null);
    }

    private final void l(final Context context) {
        MutableLiveData<com.startshorts.androidplayer.manager.account.a> mutableLiveData = f41551b;
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
        LifecycleOwner lifecycleOwner = (LifecycleOwner) context;
        mutableLiveData.removeObservers(lifecycleOwner);
        mutableLiveData.observe(lifecycleOwner, new a(new Function1() { // from class: be.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m10;
                m10 = AccountMergeManager.m(context, (com.startshorts.androidplayer.manager.account.a) obj);
                return m10;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(Context context, com.startshorts.androidplayer.manager.account.a aVar) {
        String str;
        List<String> mergeUserList;
        Object obj;
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("observeMergeState ");
        MutableLiveData<com.startshorts.androidplayer.manager.account.a> mutableLiveData = f41551b;
        sb2.append(mutableLiveData.getValue());
        logger.h("AccountMergeManager", sb2.toString());
        g gVar = f41554e;
        if (gVar != null) {
            gVar.dismiss();
        }
        f41554e = null;
        if (aVar instanceof a.C0615a) {
            EventManager.f42463a.P("discover");
            f41553d.invoke();
            mutableLiveData.setValue(null);
            f41554e = null;
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
            mutableLiveData.removeObservers((LifecycleOwner) context);
        } else if (aVar instanceof a.d) {
            d dVar = new d(context);
            EventManager.f42463a.Q("discover");
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            dVar.x(new Function0() { // from class: be.k
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit o10;
                    o10 = AccountMergeManager.o(Ref.BooleanRef.this);
                    return o10;
                }
            });
            dVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: be.l
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    AccountMergeManager.p(Ref.BooleanRef.this, dialogInterface);
                }
            });
            dVar.show();
        } else if (aVar instanceof a.e) {
            f41550a.k();
            g gVar2 = new g(context);
            f41554e = gVar2;
            gVar2.show();
        } else if (aVar instanceof a.c) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("status", MBridgeConstans.ENDCARD_URL_TYPE_PL);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "account_recovery_result", bundle, 0L, 4, null);
            ii.f fVar = new ii.f(context);
            EventManager.s0(eventManager, "account_recovery_retry_show", null, 0L, 6, null);
            final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            fVar.x(new Function0() { // from class: be.m
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit q10;
                    q10 = AccountMergeManager.q(Ref.BooleanRef.this);
                    return q10;
                }
            });
            fVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: be.n
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    AccountMergeManager.r(Ref.BooleanRef.this, dialogInterface);
                }
            });
            fVar.show();
        } else if (aVar instanceof a.f) {
            Account s02 = AccountRepo.f43052a.s0();
            if (s02 != null) {
                MergeUserInfo a10 = ((a.f) aVar).a();
                if (a10 != null && (mergeUserList = a10.getMergeUserList()) != null) {
                    Iterator<T> it = mergeUserList.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj = it.next();
                            if (Intrinsics.areEqual((String) obj, s02.getUserCode())) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    str = (String) obj;
                } else {
                    str = null;
                }
                if (str != null) {
                    AccountRepo.f43052a.V();
                }
            }
            b.f68412a.o4(false);
            EventManager eventManager2 = EventManager.f42463a;
            Bundle bundle2 = new Bundle();
            bundle2.putString("status", "1");
            Unit unit2 = Unit.f60915a;
            EventManager.s0(eventManager2, "account_recovery_result", bundle2, 0L, 4, null);
            h hVar = new h(context);
            hVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: be.o
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    AccountMergeManager.n(dialogInterface);
                }
            });
            hVar.show();
            AccountRepo accountRepo = AccountRepo.f43052a;
            AccountRepo.u1(accountRepo, false, false, 2, null);
            AccountRepo.c1(accountRepo, false, null, 3, null);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(DialogInterface dialogInterface) {
        f41551b.setValue(a.C0615a.f41557a);
        c.d().l(new RefreshAccountEvent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(Ref.BooleanRef booleanRef) {
        booleanRef.element = true;
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(Ref.BooleanRef booleanRef, DialogInterface dialogInterface) {
        String str;
        EventManager eventManager = EventManager.f42463a;
        if (booleanRef.element) {
            str = "confirm";
        } else {
            str = "cancel";
        }
        eventManager.O("discover", str);
        if (booleanRef.element) {
            f41551b.setValue(a.e.f41561a);
            return;
        }
        f41551b.setValue(a.C0615a.f41557a);
        b.f68412a.o4(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q(Ref.BooleanRef booleanRef) {
        booleanRef.element = true;
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(Ref.BooleanRef booleanRef, DialogInterface dialogInterface) {
        if (booleanRef.element) {
            EventManager.s0(EventManager.f42463a, "account_recovery_retry_click", null, 0L, 6, null);
            f41551b.setValue(a.e.f41561a);
            return;
        }
        f41551b.setValue(a.C0615a.f41557a);
    }

    public final boolean i() {
        if (f41552c) {
            Logger.f41511a.e("AccountMergeManager", "displayAble -> false, mShowedAfterBoot=true");
            return false;
        } else if (!b.f68412a.b1()) {
            Logger.f41511a.e("AccountMergeManager", "displayAble -> false,mergeTouristOnFirstOpen=false");
            return false;
        } else {
            AccountRepo accountRepo = AccountRepo.f43052a;
            if (!accountRepo.O0()) {
                Logger.f41511a.e("AccountMergeManager", "displayAble -> false, isTouristAccount=false");
                return false;
            }
            MutableLiveData<com.startshorts.androidplayer.manager.account.a> mutableLiveData = f41551b;
            if (mutableLiveData.getValue() != null) {
                Logger logger = Logger.f41511a;
                logger.e("AccountMergeManager", "displayAble -> false, mergeState=" + mutableLiveData.getValue());
                return false;
            } else if (!accountRepo.Q()) {
                Logger.f41511a.e("AccountMergeManager", "displayAble -> false, canMerge=false");
                return false;
            } else {
                Logger.f41511a.e("AccountMergeManager", "displayAble -> true");
                return true;
            }
        }
    }

    public final void s(@NotNull Context context, @NotNull Function0<Unit> onDismiss) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        MutableLiveData<com.startshorts.androidplayer.manager.account.a> mutableLiveData = f41551b;
        if (mutableLiveData.getValue() != null) {
            Logger logger = Logger.f41511a;
            logger.e("AccountMergeManager", "displayAble -> false, mergeState=" + mutableLiveData.getValue());
            return;
        }
        f41552c = true;
        Logger logger2 = Logger.f41511a;
        logger2.h("AccountMergeManager", "show -> canMerge=" + AccountRepo.f43052a.Q());
        f41553d = onDismiss;
        l(context);
        mutableLiveData.setValue(a.d.f41560a);
    }
}
