package com.startshorts.androidplayer.ui.fragment.permission;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.repo.notification.NotificationRepo;
import com.startshorts.androidplayer.ui.fragment.base.PermissionDialogFragment;
import com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment;
import id.d;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NotificationPermissionDialogFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class NotificationPermissionDialogFragment<VDB extends ViewDataBinding> extends PermissionDialogFragment<VDB> {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f46377t = new a(null);

    /* renamed from: m  reason: collision with root package name */
    private boolean f46378m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f46379n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private String f46380o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private String f46381p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private String f46382q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private b f46383r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private Boolean f46384s;

    /* compiled from: NotificationPermissionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: NotificationPermissionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a(boolean z10, boolean z11);
    }

    /* compiled from: NotificationPermissionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends mk.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NotificationPermissionDialogFragment<VDB> f46385a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f46386b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f46387c;

        c(NotificationPermissionDialogFragment<VDB> notificationPermissionDialogFragment, Function0<Unit> function0, Function0<Unit> function02) {
            this.f46385a = notificationPermissionDialogFragment;
            this.f46386b = function0;
            this.f46387c = function02;
        }

        @Override // mk.b
        public void a(List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            NotificationPermissionDialogFragment<VDB> notificationPermissionDialogFragment = this.f46385a;
            notificationPermissionDialogFragment.q("onDenied -> permissions(" + permissions + ')');
            NotificationRepo.f44301a.j();
            this.f46387c.invoke();
        }

        @Override // mk.b
        public void b(boolean z10, List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            NotificationPermissionDialogFragment<VDB> notificationPermissionDialogFragment = this.f46385a;
            notificationPermissionDialogFragment.q("onGranted -> requestPermission(" + z10 + ") permissions(" + permissions + ')');
            ((NotificationPermissionDialogFragment) this.f46385a).f46378m = true;
            if (this.f46385a.M() == null || Intrinsics.areEqual(this.f46385a.M(), Boolean.FALSE)) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                NotificationPermissionDialogFragment<VDB> notificationPermissionDialogFragment2 = this.f46385a;
                bundle.putString("scene", notificationPermissionDialogFragment2.N());
                bundle.putString("from", notificationPermissionDialogFragment2.L());
                String O = notificationPermissionDialogFragment2.O();
                if (O != null) {
                    bundle.putString("select", O);
                }
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "not_permission_success", bundle, 0L, 4, null);
            }
            PushManager.f(PushManager.f42838a, false, 1, null);
            this.f46386b.invoke();
        }

        @Override // mk.b
        public void c() {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            NotificationPermissionDialogFragment<VDB> notificationPermissionDialogFragment = this.f46385a;
            bundle.putString("scene", notificationPermissionDialogFragment.N());
            bundle.putString("from", notificationPermissionDialogFragment.L());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "system_not_permission_show", bundle, 0L, 4, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void Q(final NotificationPermissionDialogFragment notificationPermissionDialogFragment, Function0 function0, Function0 function02, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                function0 = new Function0() { // from class: ri.e
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit R;
                        R = NotificationPermissionDialogFragment.R(NotificationPermissionDialogFragment.this);
                        return R;
                    }
                };
            }
            if ((i10 & 2) != 0) {
                function02 = new Function0() { // from class: ri.f
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit S;
                        S = NotificationPermissionDialogFragment.S(NotificationPermissionDialogFragment.this);
                        return S;
                    }
                };
            }
            notificationPermissionDialogFragment.P(function0, function02);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: requestNotificationPermission");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(NotificationPermissionDialogFragment notificationPermissionDialogFragment) {
        notificationPermissionDialogFragment.dismiss();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S(NotificationPermissionDialogFragment notificationPermissionDialogFragment) {
        notificationPermissionDialogFragment.dismiss();
        return Unit.f60915a;
    }

    @Nullable
    public final String L() {
        return this.f46381p;
    }

    @Nullable
    public final Boolean M() {
        return this.f46384s;
    }

    @Nullable
    public final String N() {
        return this.f46380o;
    }

    @Nullable
    public final String O() {
        return this.f46382q;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void P(@NotNull Function0<Unit> onGranted, @NotNull Function0<Unit> onDenied) {
        Intrinsics.checkNotNullParameter(onGranted, "onGranted");
        Intrinsics.checkNotNullParameter(onDenied, "onDenied");
        this.f46379n = true;
        PermissionDialogFragment.H(this, d.f53400a.a(), false, 2001, new c(this, onGranted, onDenied), 2, null);
    }

    public final void T(@Nullable String str) {
        this.f46381p = str;
    }

    public final void U(@Nullable Boolean bool) {
        this.f46384s = bool;
    }

    public final void V(@Nullable b bVar) {
        this.f46383r = bVar;
    }

    public final void W(@Nullable String str) {
        this.f46380o = str;
    }

    public final void X(@Nullable String str) {
        this.f46382q = str;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int l() {
        return 17;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "NotificationPermissionDialogFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        b bVar = this.f46383r;
        if (bVar != null) {
            bVar.a(this.f46379n, this.f46378m);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return -1;
    }
}
