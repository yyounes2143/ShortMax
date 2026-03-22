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
import com.startshorts.androidplayer.manager.account.AccountListMergeManager;
import com.startshorts.androidplayer.manager.account.a;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fk.u;
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
/* compiled from: AccountListMergeManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAccountListMergeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountListMergeManager.kt\ncom/startshorts/androidplayer/manager/account/AccountListMergeManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,161:1\n1#2:162\n*E\n"})
/* loaded from: classes6.dex */
public final class AccountListMergeManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AccountListMergeManager f41527a = new AccountListMergeManager();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final MutableLiveData<com.startshorts.androidplayer.manager.account.a> f41528b = new MutableLiveData<>(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static Function1<? super Boolean, Unit> f41529c = new Function1() { // from class: be.a
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Unit h10;
            h10 = AccountListMergeManager.h(((Boolean) obj).booleanValue());
            return h10;
        }
    };
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static g f41530d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AccountListMergeManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f41531a;

        a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f41531a = function;
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
            return this.f41531a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f41531a.invoke(obj);
        }
    }

    private AccountListMergeManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(boolean z10) {
        return Unit.f60915a;
    }

    private final void i() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "mergeTourist", false, new AccountListMergeManager$mergeTourist$1(null), 2, null);
    }

    private final void j(final Context context) {
        MutableLiveData<com.startshorts.androidplayer.manager.account.a> mutableLiveData = f41528b;
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
        LifecycleOwner lifecycleOwner = (LifecycleOwner) context;
        mutableLiveData.removeObservers(lifecycleOwner);
        mutableLiveData.observe(lifecycleOwner, new a(new Function1() { // from class: be.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k10;
                k10 = AccountListMergeManager.k(context, (com.startshorts.androidplayer.manager.account.a) obj);
                return k10;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(Context context, com.startshorts.androidplayer.manager.account.a aVar) {
        String str;
        List<String> mergeUserList;
        Object obj;
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("observeMergeState ");
        MutableLiveData<com.startshorts.androidplayer.manager.account.a> mutableLiveData = f41528b;
        sb2.append(mutableLiveData.getValue());
        logger.h("AccountListMergeManager", sb2.toString());
        g gVar = f41530d;
        if (gVar != null) {
            gVar.dismiss();
        }
        f41530d = null;
        if (aVar instanceof a.C0615a) {
            EventManager.f42463a.P("setting");
            f41529c.invoke(Boolean.FALSE);
            mutableLiveData.setValue(null);
            f41530d = null;
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
            mutableLiveData.removeObservers((LifecycleOwner) context);
        } else if (aVar instanceof a.b) {
            f41529c.invoke(Boolean.TRUE);
            mutableLiveData.setValue(null);
            f41530d = null;
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
            mutableLiveData.removeObservers((LifecycleOwner) context);
        } else if (aVar instanceof a.d) {
            d dVar = new d(context);
            EventManager.f42463a.Q("setting");
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            dVar.x(new Function0() { // from class: be.c
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit m10;
                    m10 = AccountListMergeManager.m(Ref.BooleanRef.this);
                    return m10;
                }
            });
            dVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: be.d
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    AccountListMergeManager.n(Ref.BooleanRef.this, dialogInterface);
                }
            });
            dVar.show();
        } else if (aVar instanceof a.e) {
            f41527a.i();
            g gVar2 = new g(context);
            f41530d = gVar2;
            gVar2.show();
        } else if (aVar instanceof a.c) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("status", MBridgeConstans.ENDCARD_URL_TYPE_PL);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "account_recovery_result", bundle, 0L, 4, null);
            u.k(u.f51776a, ((a.c) aVar).a(), 0, 2, null);
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
            EventManager eventManager2 = EventManager.f42463a;
            Bundle bundle2 = new Bundle();
            bundle2.putString("status", "1");
            Unit unit2 = Unit.f60915a;
            EventManager.s0(eventManager2, "account_recovery_result", bundle2, 0L, 4, null);
            h hVar = new h(context);
            hVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: be.e
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    AccountListMergeManager.l(dialogInterface);
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
    public static final void l(DialogInterface dialogInterface) {
        f41528b.setValue(a.b.f41558a);
        c.d().l(new RefreshAccountEvent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(Ref.BooleanRef booleanRef) {
        booleanRef.element = true;
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(Ref.BooleanRef booleanRef, DialogInterface dialogInterface) {
        String str;
        EventManager eventManager = EventManager.f42463a;
        if (booleanRef.element) {
            str = "confirm";
        } else {
            str = "cancel";
        }
        eventManager.O("setting", str);
        if (booleanRef.element) {
            f41528b.setValue(a.e.f41561a);
        } else {
            f41528b.setValue(a.C0615a.f41557a);
        }
    }

    public final boolean g() {
        MutableLiveData<com.startshorts.androidplayer.manager.account.a> mutableLiveData = f41528b;
        if (mutableLiveData.getValue() != null) {
            Logger logger = Logger.f41511a;
            logger.e("AccountListMergeManager", "displayAble -> false, mergeState=" + mutableLiveData.getValue());
            return false;
        } else if (!AccountRepo.f43052a.Q()) {
            Logger.f41511a.e("AccountListMergeManager", "displayAble -> false, canMerge=false");
            return false;
        } else {
            Logger.f41511a.e("AccountListMergeManager", "displayAble -> true");
            return true;
        }
    }

    public final void o(@NotNull Context context, @NotNull Function1<? super Boolean, Unit> onDismiss) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        MutableLiveData<com.startshorts.androidplayer.manager.account.a> mutableLiveData = f41528b;
        if (mutableLiveData.getValue() != null) {
            Logger logger = Logger.f41511a;
            logger.e("AccountListMergeManager", "displayAble -> false, mergeState=" + mutableLiveData.getValue());
            return;
        }
        Logger logger2 = Logger.f41511a;
        logger2.h("AccountListMergeManager", "show -> canMerge=" + AccountRepo.f43052a.Q());
        f41529c = onDismiss;
        j(context);
        mutableLiveData.setValue(a.d.f41560a);
    }
}
