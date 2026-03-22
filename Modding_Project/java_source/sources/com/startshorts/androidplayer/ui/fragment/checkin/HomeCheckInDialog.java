package com.startshorts.androidplayer.ui.fragment.checkin;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.checkin.HomeCheckInAdapter;
import com.startshorts.androidplayer.bean.ad.WatchAdBonusTask;
import com.startshorts.androidplayer.bean.checkin.CheckInInfo;
import com.startshorts.androidplayer.bean.checkin.CheckInInfoResult;
import com.startshorts.androidplayer.databinding.DialogCheckInBinding;
import com.startshorts.androidplayer.manager.configure.ad.AdSignInfoManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog;
import com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.checkin.VariableGridSpacingItemDecoration;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.u;
import java.util.Date;
import java.util.List;
import jk.b0;
import jk.f;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HomeCheckInDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHomeCheckInDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,362:1\n295#2,2:363\n*S KotlinDebug\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog\n*L\n91#1:363,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HomeCheckInDialog extends NotificationPermissionDialogFragment<DialogCheckInBinding> {
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private CheckInInfoResult f45817u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f45818v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private HomeCheckInAdapter f45819w;
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final i f45820x = kotlin.c.b(new Function0() { // from class: pi.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String D0;
            D0 = HomeCheckInDialog.D0();
            return D0;
        }
    });

    /* compiled from: HomeCheckInDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends mk.b {
        a() {
        }

        @Override // mk.b
        public void a(List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            super.a(permissions);
            HomeCheckInDialog.this.f45818v = false;
        }

        @Override // mk.b
        public void b(boolean z10, List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            super.b(z10, permissions);
            HomeCheckInDialog.this.f45818v = true;
        }
    }

    /* compiled from: HomeCheckInDialog.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHomeCheckInDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$onClickView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,362:1\n295#2,2:363\n*S KotlinDebug\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$onClickView$1\n*L\n148#1:363,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0051  */
        @Override // yd.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(android.view.View r5) {
            /*
                r4 = this;
                java.lang.String r0 = "v"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r5 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.this
                com.startshorts.androidplayer.bean.checkin.CheckInInfoResult r5 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.c0(r5)
                if (r5 == 0) goto L41
                java.util.List r5 = r5.getSignRecords()
                if (r5 == 0) goto L41
                java.lang.Iterable r5 = (java.lang.Iterable) r5
                com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r0 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.this
                java.util.Iterator r5 = r5.iterator()
            L1b:
                boolean r1 = r5.hasNext()
                if (r1 == 0) goto L37
                java.lang.Object r1 = r5.next()
                r2 = r1
                com.startshorts.androidplayer.bean.checkin.CheckInInfo r2 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r2
                java.lang.String r2 = r2.getDay()
                java.lang.String r3 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.f0(r0)
                boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
                if (r2 == 0) goto L1b
                goto L38
            L37:
                r1 = 0
            L38:
                com.startshorts.androidplayer.bean.checkin.CheckInInfo r1 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r1
                if (r1 == 0) goto L41
                boolean r5 = r1.isSign()
                goto L42
            L41:
                r5 = 0
            L42:
                if (r5 == 0) goto L51
                com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r5 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.this
                java.lang.String r0 = "go_rewards"
                com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.h0(r5, r0)
                com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r5 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.this
                com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.g0(r5)
                goto L68
            L51:
                com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r5 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.this
                java.lang.String r0 = "daily_checkin_discover"
                com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.h0(r5, r0)
                com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r5 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.this
                com.startshorts.androidplayer.databinding.DialogCheckInBinding r5 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.b0(r5)
                com.airbnb.lottie.LottieAnimationView r5 = r5.f38652e
                jk.b0.l(r5)
                com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r5 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.this
                com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.m0(r5)
            L68:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.b.a(android.view.View):void");
        }
    }

    /* compiled from: HomeCheckInDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            HomeCheckInDialog.this.dismiss();
        }
    }

    /* compiled from: HomeCheckInDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(HomeCheckInDialog homeCheckInDialog) {
            homeCheckInDialog.M0();
            return Unit.f60915a;
        }

        @Override // yd.d
        public void a(View v10) {
            Integer num;
            Intrinsics.checkNotNullParameter(v10, "v");
            CheckInInfoResult checkInInfoResult = HomeCheckInDialog.this.f45817u;
            if (checkInInfoResult != null) {
                num = checkInInfoResult.getNotificationTaskId();
            } else {
                num = null;
            }
            if (num != null && num.intValue() > 0) {
                if (!HomeCheckInDialog.this.f45818v) {
                    HomeCheckInDialog.this.B0();
                    final HomeCheckInDialog homeCheckInDialog = HomeCheckInDialog.this;
                    homeCheckInDialog.H0(new Function0() { // from class: pi.f
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit c10;
                            c10 = HomeCheckInDialog.d.c(HomeCheckInDialog.this);
                            return c10;
                        }
                    });
                    return;
                }
                b0.l(HomeCheckInDialog.b0(HomeCheckInDialog.this).f38652e);
                HomeCheckInDialog.this.F0();
            }
        }
    }

    /* compiled from: HomeCheckInDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(HomeCheckInDialog homeCheckInDialog) {
            homeCheckInDialog.z0();
            b0.d(HomeCheckInDialog.b0(homeCheckInDialog).f38654g);
            homeCheckInDialog.U(null);
            return Unit.f60915a;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            final HomeCheckInDialog homeCheckInDialog = HomeCheckInDialog.this;
            homeCheckInDialog.H0(new Function0() { // from class: pi.g
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit c10;
                    c10 = HomeCheckInDialog.e.c(HomeCheckInDialog.this);
                    return c10;
                }
            });
        }
    }

    private final void A0() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("popup_name", "daily_checkin_discover");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "popup_show", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B0() {
        int i10;
        Integer notificationTaskBonus;
        EventManager eventManager = EventManager.f42463a;
        CheckInInfoResult checkInInfoResult = this.f45817u;
        if (checkInInfoResult != null && (notificationTaskBonus = checkInInfoResult.getNotificationTaskBonus()) != null) {
            i10 = notificationTaskBonus.intValue();
        } else {
            i10 = 0;
        }
        eventManager.x0("notification", i10, "daily_checkin_discover");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C0() {
        int i10;
        Integer notificationTaskBonus;
        EventManager eventManager = EventManager.f42463a;
        CheckInInfoResult checkInInfoResult = this.f45817u;
        if (checkInInfoResult != null && (notificationTaskBonus = checkInInfoResult.getNotificationTaskBonus()) != null) {
            i10 = notificationTaskBonus.intValue();
        } else {
            i10 = 0;
        }
        eventManager.y0("notification", i10, "daily_checkin_discover");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String D0() {
        String str;
        CheckInInfoResult a10 = AdSignInfoManager.f42264a.a();
        if (a10 != null) {
            str = a10.getZoneStr();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            return TimeUtil.f48175a.h(f.a(new Date()), str, TimeUtil.Template.YEAR_MONTH_DAY);
        }
        return RewardsRepo.f44515a.l();
    }

    private final void E0() {
        ((DialogCheckInBinding) m()).f38649b.setOnClickListener(new b());
        ((DialogCheckInBinding) m()).f38650c.setOnClickListener(new c());
        ((DialogCheckInBinding) m()).f38653f.setOnClickListener(new d());
        ((DialogCheckInBinding) m()).f38655h.setOnClickListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F0() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "requestAcceptNotificationBonus", false, new HomeCheckInDialog$requestAcceptNotificationBonus$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G0() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "CheckIn", false, new HomeCheckInDialog$requestCheckIn$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0(final Function0<Unit> function0) {
        P(new Function0() { // from class: pi.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit I0;
                I0 = HomeCheckInDialog.I0(HomeCheckInDialog.this, function0);
                return I0;
            }
        }, new Function0() { // from class: pi.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit J0;
                J0 = HomeCheckInDialog.J0();
                return J0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(HomeCheckInDialog homeCheckInDialog, Function0 function0) {
        homeCheckInDialog.f45818v = true;
        function0.invoke();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J0() {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K0(int i10) {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        WatchAdBonusTask.Companion companion = WatchAdBonusTask.Companion;
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        new ek.a(requireContext, companion.getFormatBonus(requireContext2, Integer.valueOf(i10))).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void L0() {
        /*
            r4 = this;
            com.startshorts.androidplayer.bean.checkin.CheckInInfoResult r0 = r4.f45817u
            if (r0 == 0) goto L36
            java.util.List r0 = r0.getSignRecords()
            if (r0 == 0) goto L36
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        L10:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L2c
            java.lang.Object r1 = r0.next()
            r2 = r1
            com.startshorts.androidplayer.bean.checkin.CheckInInfo r2 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r2
            java.lang.String r2 = r2.getDay()
            java.lang.String r3 = r4.t0()
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 == 0) goto L10
            goto L2d
        L2c:
            r1 = 0
        L2d:
            com.startshorts.androidplayer.bean.checkin.CheckInInfo r1 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r1
            if (r1 == 0) goto L36
            boolean r0 = r1.isSign()
            goto L37
        L36:
            r0 = 0
        L37:
            if (r0 == 0) goto L60
            ud.a r0 = ud.a.f68411a
            int r0 = r0.H()
            if (r0 <= 0) goto L46
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto L48
        L46:
            java.lang.String r0 = ""
        L48:
            androidx.databinding.ViewDataBinding r1 = r4.m()
            com.startshorts.androidplayer.databinding.DialogCheckInBinding r1 = (com.startshorts.androidplayer.databinding.DialogCheckInBinding) r1
            com.startshorts.androidplayer.ui.view.base.BaseTextView r1 = r1.f38649b
            fk.u r2 = fk.u.f51776a
            int r3 = com.startshorts.androidplayer.R$string.index_ad_rewards_dialog_get_more_bonus
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r0 = r2.e(r3, r0)
            r1.setText(r0)
            goto L73
        L60:
            androidx.databinding.ViewDataBinding r0 = r4.m()
            com.startshorts.androidplayer.databinding.DialogCheckInBinding r0 = (com.startshorts.androidplayer.databinding.DialogCheckInBinding) r0
            com.startshorts.androidplayer.ui.view.base.BaseTextView r0 = r0.f38649b
            fk.u r1 = fk.u.f51776a
            int r2 = com.startshorts.androidplayer.R$string.rewards_activity_check_in
            java.lang.String r1 = r1.d(r2)
            r0.setText(r1)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.L0():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M0() {
        ((DialogCheckInBinding) m()).f38653f.setBackgroundResource(R$drawable.bg_unity_task_button);
        ((DialogCheckInBinding) m()).f38653f.setTextColor(u.f51776a.a(R$color.color_rewards_fragment_unity_task_btn));
    }

    public static final /* synthetic */ DialogCheckInBinding b0(HomeCheckInDialog homeCheckInDialog) {
        return (DialogCheckInBinding) homeCheckInDialog.m();
    }

    private final void s0() {
        G(id.d.f53400a.a(), false, 1001, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String t0() {
        return (String) this.f45820x.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u0() {
        dismiss();
        RewardsFragment.a aVar = RewardsFragment.Y;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        RewardsFragment.a.d(aVar, requireContext, "discover", true, null, Boolean.TRUE, 8, null);
    }

    private final void v0() {
        List<CheckInInfo> list;
        HomeCheckInAdapter homeCheckInAdapter = new HomeCheckInAdapter();
        CheckInInfoResult checkInInfoResult = this.f45817u;
        if (checkInInfoResult != null) {
            list = checkInInfoResult.getSignRecords();
        } else {
            list = null;
        }
        BaseAdapter.D(homeCheckInAdapter, list, false, 2, null);
        this.f45819w = homeCheckInAdapter;
        RecyclerView recyclerView = ((DialogCheckInBinding) m()).f38656i;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(recyclerView.getContext(), 4);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$initDailyViews$2$1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i10) {
                HomeCheckInAdapter homeCheckInAdapter2;
                Integer num;
                homeCheckInAdapter2 = HomeCheckInDialog.this.f45819w;
                if (homeCheckInAdapter2 != null) {
                    num = Integer.valueOf(homeCheckInAdapter2.getItemViewType(i10));
                } else {
                    num = null;
                }
                if (num != null && num.intValue() == 2) {
                    return 2;
                }
                return 1;
            }
        });
        recyclerView.setLayoutManager(gridLayoutManager);
        if (recyclerView.getItemDecorationCount() > 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        recyclerView.addItemDecoration(new VariableGridSpacingItemDecoration(g.a(8.0f), true));
        recyclerView.setAdapter(this.f45819w);
    }

    @SuppressLint({"SetTextI18n"})
    private final void w0() {
        Integer num;
        int i10;
        Integer notificationTaskBonus;
        if (this.f45818v) {
            b0.d(((DialogCheckInBinding) m()).f38654g);
            return;
        }
        b0.l(((DialogCheckInBinding) m()).f38654g);
        CheckInInfoResult checkInInfoResult = this.f45817u;
        Integer num2 = null;
        if (checkInInfoResult != null) {
            num = checkInInfoResult.getNotificationTaskId();
        } else {
            num = null;
        }
        if (num != null) {
            CheckInInfoResult checkInInfoResult2 = this.f45817u;
            if (checkInInfoResult2 != null && (notificationTaskBonus = checkInInfoResult2.getNotificationTaskBonus()) != null) {
                i10 = notificationTaskBonus.intValue();
            } else {
                i10 = 0;
            }
            if (i10 > 0) {
                BaseTextView baseTextView = ((DialogCheckInBinding) m()).f38653f;
                StringBuilder sb2 = new StringBuilder();
                sb2.append('+');
                CheckInInfoResult checkInInfoResult3 = this.f45817u;
                if (checkInInfoResult3 != null) {
                    num2 = checkInInfoResult3.getNotificationTaskBonus();
                }
                sb2.append(num2);
                baseTextView.setText(sb2.toString());
                b0.l(((DialogCheckInBinding) m()).f38653f);
                b0.d(((DialogCheckInBinding) m()).f38655h);
                return;
            }
        }
        b0.l(((DialogCheckInBinding) m()).f38655h);
        b0.d(((DialogCheckInBinding) m()).f38653f);
    }

    private final void x0() {
        U(Boolean.TRUE);
        s0();
        w0();
        v0();
        L0();
        E0();
        A0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y0(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("page", "discover_page");
        bundle.putString("button_name", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "button_click", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", "daily_checkin_discover");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "not_permission_success", bundle, 0L, 4, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_check_in;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        CheckInInfoResult a10 = AdSignInfoManager.f42264a.a();
        this.f45817u = a10;
        if (a10 == null) {
            dismissAllowingStateLoss();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f45817u == null) {
            return;
        }
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        x0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return g.a(355.0f);
    }
}
