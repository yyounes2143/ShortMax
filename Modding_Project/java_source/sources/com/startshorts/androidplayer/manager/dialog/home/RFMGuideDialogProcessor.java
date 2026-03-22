package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.manager.dialog.home.c;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RFMGuideDialogProcessor.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RFMGuideDialogProcessor implements c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42407a = new a(null);

    /* compiled from: RFMGuideDialogProcessor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
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
    public java.lang.Object b(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.ui.activity.MainActivity r13, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<kotlin.Unit> r14, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r15) {
        /*
            r12 = this;
            boolean r0 = r15 instanceof com.startshorts.androidplayer.manager.dialog.home.RFMGuideDialogProcessor$process$1
            if (r0 == 0) goto L13
            r0 = r15
            com.startshorts.androidplayer.manager.dialog.home.RFMGuideDialogProcessor$process$1 r0 = (com.startshorts.androidplayer.manager.dialog.home.RFMGuideDialogProcessor$process$1) r0
            int r1 = r0.f42410j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42410j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.dialog.home.RFMGuideDialogProcessor$process$1 r0 = new com.startshorts.androidplayer.manager.dialog.home.RFMGuideDialogProcessor$process$1
            r0.<init>(r12, r15)
        L18:
            java.lang.Object r15 = r0.f42408h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42410j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r15)
            goto L90
        L29:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L31:
            kotlin.f.b(r15)
            boolean r15 = r12.c(r13)
            r2 = 0
            if (r15 != 0) goto L40
            java.lang.Boolean r13 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r13
        L40:
            com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory r15 = com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory.f42224a
            com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig r15 = r15.c1()
            int r15 = r15.abTestIntValue()
            r4 = 2
            if (r15 == r4) goto L52
            java.lang.Boolean r13 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r13
        L52:
            ud.a r15 = ud.a.f68411a
            boolean r15 = r15.i()
            if (r15 != 0) goto L5f
            java.lang.Boolean r13 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r13
        L5f:
            ud.b r15 = ud.b.f68412a
            long r5 = r15.A1()
            com.startshorts.androidplayer.utils.DeviceUtil r4 = com.startshorts.androidplayer.utils.DeviceUtil.f48146a
            long r10 = r4.K()
            com.startshorts.androidplayer.utils.TimeUtil r4 = com.startshorts.androidplayer.utils.TimeUtil.f48175a
            r9 = 7
            r7 = r10
            boolean r4 = r4.m(r5, r7, r9)
            if (r4 != 0) goto L7a
            java.lang.Boolean r13 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r13
        L7a:
            r15.N4(r10)
            gt.j1 r15 = gt.q0.c()
            com.startshorts.androidplayer.manager.dialog.home.RFMGuideDialogProcessor$process$2 r2 = new com.startshorts.androidplayer.manager.dialog.home.RFMGuideDialogProcessor$process$2
            r4 = 0
            r2.<init>(r13, r12, r14, r4)
            r0.f42410j = r3
            java.lang.Object r13 = gt.e.g(r15, r2, r0)
            if (r13 != r1) goto L90
            return r1
        L90:
            java.lang.Boolean r13 = kotlin.coroutines.jvm.internal.a.a(r3)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.dialog.home.RFMGuideDialogProcessor.b(com.startshorts.androidplayer.ui.activity.MainActivity, kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }

    public boolean c(@NotNull MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return activity.p0();
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public String name() {
        return "RFMGuideDialogProcessor";
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public HomeDialogPriority priority() {
        return HomeDialogPriority.DIALOG_RFM_GUIDE;
    }
}
