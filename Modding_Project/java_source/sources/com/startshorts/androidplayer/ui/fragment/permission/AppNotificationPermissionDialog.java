package com.startshorts.androidplayer.ui.fragment.permission;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.configure.ServerConfig;
import com.startshorts.androidplayer.databinding.DialogAppNotificationPermissionBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import com.startshorts.androidplayer.repo.notification.NotificationRepo;
import com.startshorts.androidplayer.ui.fragment.permission.AppNotificationPermissionDialog;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: AppNotificationPermissionDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAppNotificationPermissionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppNotificationPermissionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1863#2,2:96\n*S KotlinDebug\n*F\n+ 1 AppNotificationPermissionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog\n*L\n52#1:96,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AppNotificationPermissionDialog extends NotificationPermissionDialogFragment<DialogAppNotificationPermissionBinding> {
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final a f46368u = new a(null);

    /* compiled from: AppNotificationPermissionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AppNotificationPermissionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            AppNotificationPermissionDialog.this.dismiss();
        }
    }

    /* compiled from: AppNotificationPermissionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(AppNotificationPermissionDialog appNotificationPermissionDialog) {
            appNotificationPermissionDialog.dismiss();
            NotificationRepo.f44301a.c();
            return Unit.f60915a;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager eventManager = EventManager.f42463a;
            EventManager.s0(eventManager, "noti_popup_click", null, 0L, 6, null);
            Bundle bundle = new Bundle();
            bundle.putString("from", "discover");
            bundle.putString("type", "newbie_task");
            bundle.putString("task_name", "customize");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "task_click", bundle, 0L, 4, null);
            final AppNotificationPermissionDialog appNotificationPermissionDialog = AppNotificationPermissionDialog.this;
            NotificationPermissionDialogFragment.Q(appNotificationPermissionDialog, new Function0() { // from class: ri.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit c10;
                    c10 = AppNotificationPermissionDialog.c.c(AppNotificationPermissionDialog.this);
                    return c10;
                }
            }, null, 2, null);
        }
    }

    private final String Y() {
        int i10;
        ServerConfig t10 = ConfigRepo.f43771a.t();
        if (t10 != null) {
            i10 = t10.getNotificationsBonus();
        } else {
            i10 = 0;
        }
        if (i10 <= 0) {
            String string = requireContext().getString(R$string.facebook_login_dialog_fragment_huge);
            Intrinsics.checkNotNull(string);
            return string;
        }
        return String.valueOf(i10);
    }

    private final void Z() {
        for (View view : CollectionsKt.q(((DialogAppNotificationPermissionBinding) m()).f38629c, ((DialogAppNotificationPermissionBinding) m()).f38627a)) {
            view.setOnClickListener(new b());
        }
    }

    private final void a0() {
        ((DialogAppNotificationPermissionBinding) m()).f38633g.setOnClickListener(new c());
    }

    private final void b0() {
        ((DialogAppNotificationPermissionBinding) m()).f38634h.setText(getString(R$string.notification_permission_dialog_title, Y()));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_app_notification_permission;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "AppNotificationPermissionDialog";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        if (!mk.c.f62521a.d()) {
            ud.b bVar = ud.b.f68412a;
            int F = bVar.F() + 1;
            bVar.P2(F);
            q("dismiss -> denialCount(" + F + ')');
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        b0();
        Z();
        a0();
        EventManager.s0(EventManager.f42463a, "noti_popup_show", null, 0L, 6, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }
}
