package mk;

import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.notification.NotificationRepo;
import com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PermissionDialogUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f62518a = new a();

    /* compiled from: PermissionDialogUtil.kt */
    @Metadata
    /* renamed from: mk.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0872a implements NotificationPermissionDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f62519a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, Unit> f62520b;

        /* JADX WARN: Multi-variable type inference failed */
        C0872a(String str, Function1<? super Boolean, Unit> function1) {
            this.f62519a = str;
            this.f62520b = function1;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment.b
        public void a(boolean z10, boolean z11) {
            Logger logger = Logger.f41511a;
            logger.h("PermissionDialogUtil", "requestNotificationPermission result -> requested(" + z10 + ") granted(" + z11 + ')');
            if (z11 && !Intrinsics.areEqual(this.f62519a, "discover")) {
                Function1<Boolean, Unit> function1 = this.f62520b;
                if (function1 != null) {
                    function1.invoke(Boolean.TRUE);
                    return;
                }
                return;
            }
            Function1<Boolean, Unit> function12 = this.f62520b;
            if (function12 != null) {
                function12.invoke(Boolean.FALSE);
            }
        }
    }

    private a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DialogFragment b(a aVar, FragmentManager fragmentManager, String str, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        if ((i10 & 8) != 0) {
            function1 = null;
        }
        return aVar.a(fragmentManager, str, z10, function1);
    }

    public static /* synthetic */ boolean d(a aVar, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return aVar.c(str, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean g(a aVar, FragmentManager fragmentManager, String str, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        if ((i10 & 8) != 0) {
            function1 = null;
        }
        return aVar.f(fragmentManager, str, z10, function1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
        if (r3.equals("immersion_back") == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
        if (r3.equals("coming_soon") == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0054, code lost:
        if (r3.equals("favorite_click") == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
        r2 = new com.startshorts.androidplayer.ui.fragment.permission.ChooseNotificationPermissionDialog();
        r2.T("noti_select");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if (r3.equals("check_in") == false) goto L22;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.fragment.app.DialogFragment a(@org.jetbrains.annotations.NotNull androidx.fragment.app.FragmentManager r2, @org.jetbrains.annotations.NotNull java.lang.String r3, boolean r4, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit> r5) {
        /*
            r1 = this;
            java.lang.String r0 = "fragmentManager"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r2 = "scene"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r2)
            com.startshorts.androidplayer.repo.notification.NotificationRepo r2 = com.startshorts.androidplayer.repo.notification.NotificationRepo.f44301a
            int r0 = r2.g(r3)
            if (r4 == 0) goto L17
            int r0 = r0 + (-1)
            r2.k(r3, r0)
        L17:
            int r2 = r3.hashCode()
            switch(r2) {
                case -1435153115: goto L4e;
                case -1394007047: goto L45;
                case -430010693: goto L3c;
                case 273184745: goto L28;
                case 1536888764: goto L1f;
                default: goto L1e;
            }
        L1e:
            goto L56
        L1f:
            java.lang.String r2 = "check_in"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L58
            goto L56
        L28:
            java.lang.String r2 = "discover"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L31
            goto L56
        L31:
            com.startshorts.androidplayer.ui.fragment.permission.AppNotificationPermissionDialog r2 = new com.startshorts.androidplayer.ui.fragment.permission.AppNotificationPermissionDialog
            r2.<init>()
            java.lang.String r4 = "customize"
            r2.T(r4)
            goto L62
        L3c:
            java.lang.String r2 = "immersion_back"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L58
            goto L56
        L45:
            java.lang.String r2 = "coming_soon"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L58
            goto L56
        L4e:
            java.lang.String r2 = "favorite_click"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L58
        L56:
            r2 = 0
            goto L62
        L58:
            com.startshorts.androidplayer.ui.fragment.permission.ChooseNotificationPermissionDialog r2 = new com.startshorts.androidplayer.ui.fragment.permission.ChooseNotificationPermissionDialog
            r2.<init>()
            java.lang.String r4 = "noti_select"
            r2.T(r4)
        L62:
            if (r2 == 0) goto L6f
            r2.W(r3)
            mk.a$a r4 = new mk.a$a
            r4.<init>(r3, r5)
            r2.V(r4)
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: mk.a.a(androidx.fragment.app.FragmentManager, java.lang.String, boolean, kotlin.jvm.functions.Function1):androidx.fragment.app.DialogFragment");
    }

    public final boolean c(@NotNull String scene, boolean z10) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        int g10 = NotificationRepo.f44301a.g(scene);
        if (z10 && g10 <= 0) {
            Logger logger = Logger.f41511a;
            logger.e("PermissionDialogUtil", "enableShow -> ignore, scene=" + scene + ",count=" + g10);
            return false;
        }
        Logger logger2 = Logger.f41511a;
        logger2.h("PermissionDialogUtil", "enableShow -> scene=" + scene + ",count=" + g10 + ",showInCountLimit=" + z10);
        return !c.f62521a.d();
    }

    @Nullable
    public final DialogFragment e(@NotNull FragmentManager fragmentManager, @NotNull String scene, boolean z10, @Nullable Function1<? super Boolean, Unit> function1) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(scene, "scene");
        try {
            if (!c(scene, z10)) {
                return null;
            }
            return a(fragmentManager, scene, z10, function1);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("PermissionDialogUtil", "tryCreateNotificationPermissionDialogFragment exception -> " + e10.getMessage());
            return null;
        }
    }

    public final boolean f(@NotNull FragmentManager fragmentManager, @NotNull String scene, boolean z10, @Nullable Function1<? super Boolean, Unit> function1) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(scene, "scene");
        if (!ae.a.f627a.h()) {
            return false;
        }
        DialogFragment e10 = e(fragmentManager, scene, z10, function1);
        if (e10 != null) {
            try {
                e10.show(fragmentManager, "NotificationPermissionDialog");
            } catch (Exception e11) {
                Logger logger = Logger.f41511a;
                logger.e("PermissionDialogUtil", "tryShowNotificationPermissionDialog exception -> " + e11.getMessage());
                return false;
            }
        }
        if (e10 == null) {
            return false;
        }
        return true;
    }
}
