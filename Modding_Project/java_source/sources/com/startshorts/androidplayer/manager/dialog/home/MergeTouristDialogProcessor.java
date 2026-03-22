package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.manager.dialog.home.c;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: MergeTouristDialogProcessor.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MergeTouristDialogProcessor implements c {
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
            boolean r0 = r8 instanceof com.startshorts.androidplayer.manager.dialog.home.MergeTouristDialogProcessor$process$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.manager.dialog.home.MergeTouristDialogProcessor$process$1 r0 = (com.startshorts.androidplayer.manager.dialog.home.MergeTouristDialogProcessor$process$1) r0
            int r1 = r0.f42393j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42393j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.dialog.home.MergeTouristDialogProcessor$process$1 r0 = new com.startshorts.androidplayer.manager.dialog.home.MergeTouristDialogProcessor$process$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f42391h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42393j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r8)
            goto L60
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.f.b(r8)
            boolean r8 = r5.c(r6)
            r2 = 0
            if (r8 != 0) goto L40
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r6
        L40:
            com.startshorts.androidplayer.manager.account.AccountMergeManager r8 = com.startshorts.androidplayer.manager.account.AccountMergeManager.f41550a
            boolean r8 = r8.i()
            if (r8 != 0) goto L4d
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r6
        L4d:
            gt.j1 r8 = gt.q0.c()
            com.startshorts.androidplayer.manager.dialog.home.MergeTouristDialogProcessor$process$2 r2 = new com.startshorts.androidplayer.manager.dialog.home.MergeTouristDialogProcessor$process$2
            r4 = 0
            r2.<init>(r6, r5, r7, r4)
            r0.f42393j = r3
            java.lang.Object r6 = gt.e.g(r8, r2, r0)
            if (r6 != r1) goto L60
            return r1
        L60:
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.a.a(r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.dialog.home.MergeTouristDialogProcessor.b(com.startshorts.androidplayer.ui.activity.MainActivity, kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }

    public boolean c(@NotNull MainActivity mainActivity) {
        return c.a.a(this, mainActivity);
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public String name() {
        return "MergeTouristDialogProcessor";
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public HomeDialogPriority priority() {
        return HomeDialogPriority.DIALOG_COMBINE_ACCOUNT;
    }
}
