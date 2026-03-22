package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.dialog.home.c;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NotificationPermissionDialogProcessor.kt */
@Metadata
/* loaded from: classes6.dex */
public final class NotificationPermissionDialogProcessor implements c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42398a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private static boolean f42399b;

    /* compiled from: NotificationPermissionDialogProcessor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(@NotNull MainActivity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            if (!activity.p0()) {
                return false;
            }
            if (DeviceUtil.f48146a.X()) {
                Logger.f41511a.h("NotificationPermissionDialogProcessor", "process -> ignore isBelowAndroid13=true");
                return false;
            }
            ud.b bVar = ud.b.f68412a;
            if (bVar.d()) {
                Logger.f41511a.h("NotificationPermissionDialogProcessor", "process -> ignore acceptedNotificationPermissionReward Already");
                return false;
            }
            int F = bVar.F();
            if (F >= 3) {
                Logger logger = Logger.f41511a;
                logger.h("NotificationPermissionDialogProcessor", "process -> ignore denialCount(" + F + ")>=3");
                return false;
            }
            return true;
        }

        private a() {
        }
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    public boolean a() {
        return c.a.b(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.ui.activity.MainActivity r6, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<kotlin.Unit> r7, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor$process$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor$process$1 r0 = (com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor$process$1) r0
            int r1 = r0.f42402j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42402j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor$process$1 r0 = new com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor$process$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f42400h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42402j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r8)
            goto L6b
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.manager.update.UpdateManager r8 = com.startshorts.androidplayer.manager.update.UpdateManager.f42992a
            boolean r8 = r8.k()
            r2 = 0
            if (r8 == 0) goto L4b
            com.startshorts.androidplayer.log.Logger r6 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r7 = "NotificationPermissionDialogProcessor"
            java.lang.String r8 = "process -> ignore UpdateDialog is showing"
            r6.e(r7, r8)
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r6
        L4b:
            com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor$a r8 = com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor.f42398a
            boolean r8 = r8.a(r6)
            if (r8 != 0) goto L58
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r6
        L58:
            gt.j1 r8 = gt.q0.c()
            com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor$process$show$1 r2 = new com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor$process$show$1
            r4 = 0
            r2.<init>(r6, r5, r7, r4)
            r0.f42402j = r3
            java.lang.Object r8 = gt.e.g(r8, r2, r0)
            if (r8 != r1) goto L6b
            return r1
        L6b:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r6 = r8.booleanValue()
            com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor.f42399b = r6
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.a.a(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor.b(com.startshorts.androidplayer.ui.activity.MainActivity, kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public String name() {
        return "NotificationPermissionDialogProcessor";
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public HomeDialogPriority priority() {
        return HomeDialogPriority.DIALOG_NOTIFICATION_PERMISSION;
    }
}
