package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.ui.activity.MainActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LoginGuideDialogProcessor.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LoginGuideDialogProcessor implements c {
    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    public boolean a() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.ui.activity.MainActivity r7, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<kotlin.Unit> r8, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.manager.dialog.home.LoginGuideDialogProcessor$process$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.manager.dialog.home.LoginGuideDialogProcessor$process$1 r0 = (com.startshorts.androidplayer.manager.dialog.home.LoginGuideDialogProcessor$process$1) r0
            int r1 = r0.f42386j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42386j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.dialog.home.LoginGuideDialogProcessor$process$1 r0 = new com.startshorts.androidplayer.manager.dialog.home.LoginGuideDialogProcessor$process$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.f42384h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42386j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r9)
            goto L88
        L29:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L31:
            kotlin.f.b(r9)
            boolean r9 = r6.c(r7)
            r2 = 0
            if (r9 != 0) goto L40
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r7
        L40:
            com.startshorts.androidplayer.repo.account.AccountRepo r9 = com.startshorts.androidplayer.repo.account.AccountRepo.f43052a
            boolean r9 = r9.J0()
            if (r9 == 0) goto L4d
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r7
        L4d:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo r9 = com.startshorts.androidplayer.repo.campaign.CampaignRepo.f43678a
            boolean r9 = r9.w()
            if (r9 != 0) goto L5a
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r7
        L5a:
            com.startshorts.androidplayer.utils.TimeUtil r9 = com.startshorts.androidplayer.utils.TimeUtil.f48175a
            java.util.Date r4 = new java.util.Date
            r4.<init>()
            java.util.Date r4 = jk.f.a(r4)
            java.lang.String r9 = r9.f(r4)
            ud.b r4 = ud.b.f68412a
            boolean r5 = r4.H1(r9)
            if (r5 == 0) goto L87
            r4.U4(r9, r2)
            gt.j1 r9 = gt.q0.c()
            com.startshorts.androidplayer.manager.dialog.home.LoginGuideDialogProcessor$process$2 r2 = new com.startshorts.androidplayer.manager.dialog.home.LoginGuideDialogProcessor$process$2
            r4 = 0
            r2.<init>(r7, r6, r8, r4)
            r0.f42386j = r3
            java.lang.Object r7 = gt.e.g(r9, r2, r0)
            if (r7 != r1) goto L88
            return r1
        L87:
            r3 = r2
        L88:
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.a.a(r3)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.dialog.home.LoginGuideDialogProcessor.b(com.startshorts.androidplayer.ui.activity.MainActivity, kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }

    public boolean c(@NotNull MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return activity.p0();
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public String name() {
        return "LoginGuideDialogProcessor";
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public HomeDialogPriority priority() {
        return HomeDialogPriority.DIALOG_LOGIN_GUIDE;
    }
}
