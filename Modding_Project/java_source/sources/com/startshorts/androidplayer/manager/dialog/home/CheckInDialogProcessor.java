package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.manager.dialog.home.c;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CheckInDialogProcessor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCheckInDialogProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckInDialogProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1#2:65\n295#3,2:66\n*S KotlinDebug\n*F\n+ 1 CheckInDialogProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor\n*L\n27#1:66,2\n*E\n"})
/* loaded from: classes6.dex */
public final class CheckInDialogProcessor implements c {
    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    public boolean a() {
        return c.a.b(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.String] */
    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.ui.activity.MainActivity r10, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<kotlin.Unit> r11, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof com.startshorts.androidplayer.manager.dialog.home.CheckInDialogProcessor$process$1
            if (r0 == 0) goto L13
            r0 = r12
            com.startshorts.androidplayer.manager.dialog.home.CheckInDialogProcessor$process$1 r0 = (com.startshorts.androidplayer.manager.dialog.home.CheckInDialogProcessor$process$1) r0
            int r1 = r0.f42356j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42356j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.dialog.home.CheckInDialogProcessor$process$1 r0 = new com.startshorts.androidplayer.manager.dialog.home.CheckInDialogProcessor$process$1
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.f42354h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42356j
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.f.b(r12)
            goto Ldb
        L2a:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L32:
            kotlin.f.b(r12)
            boolean r12 = r9.c(r10)
            r2 = 0
            if (r12 != 0) goto L41
            java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.a.a(r2)
            return r10
        L41:
            kotlin.jvm.internal.Ref$ObjectRef r12 = new kotlin.jvm.internal.Ref$ObjectRef
            r12.<init>()
            java.lang.String r4 = ""
            r12.element = r4
            ud.b r4 = ud.b.f68412a
            java.lang.String r4 = r4.e2()
            if (r4 == 0) goto L54
            r12.element = r4
        L54:
            com.startshorts.androidplayer.utils.TimeUtil r4 = com.startshorts.androidplayer.utils.TimeUtil.f48175a
            java.util.Date r5 = new java.util.Date
            r5.<init>()
            java.util.Date r5 = jk.f.a(r5)
            T r12 = r12.element
            java.lang.String r12 = (java.lang.String) r12
            com.startshorts.androidplayer.utils.TimeUtil$Template r6 = com.startshorts.androidplayer.utils.TimeUtil.Template.YEAR_MONTH_DAY
            java.lang.String r12 = r4.h(r5, r12, r6)
            com.startshorts.androidplayer.manager.configure.ad.AdSignInfoManager r4 = com.startshorts.androidplayer.manager.configure.ad.AdSignInfoManager.f42264a
            com.startshorts.androidplayer.bean.checkin.CheckInInfoResult r4 = r4.a()
            r5 = 0
            if (r4 == 0) goto L9a
            java.util.List r6 = r4.getSignRecords()
            if (r6 == 0) goto L9a
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.Iterator r6 = r6.iterator()
        L7e:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L96
            java.lang.Object r7 = r6.next()
            r8 = r7
            com.startshorts.androidplayer.bean.checkin.CheckInInfo r8 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r8
            java.lang.String r8 = r8.getDay()
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r12)
            if (r8 == 0) goto L7e
            goto L97
        L96:
            r7 = r5
        L97:
            com.startshorts.androidplayer.bean.checkin.CheckInInfo r7 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r7
            goto L9b
        L9a:
            r7 = r5
        L9b:
            if (r7 == 0) goto La2
            boolean r6 = r7.isSign()
            goto La3
        La2:
            r6 = r2
        La3:
            com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory r7 = com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory.f42224a
            com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig r7 = r7.n1()
            kotlin.jvm.functions.Function0 r7 = r7.isEnable()
            java.lang.Object r7 = r7.invoke()
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto Lda
            ud.b r7 = ud.b.f68412a
            boolean r8 = r7.G1(r12)
            if (r8 == 0) goto Lda
            if (r4 == 0) goto Lda
            if (r6 != 0) goto Lda
            r7.T4(r12, r2)
            gt.j1 r12 = gt.q0.c()
            com.startshorts.androidplayer.manager.dialog.home.CheckInDialogProcessor$process$3 r2 = new com.startshorts.androidplayer.manager.dialog.home.CheckInDialogProcessor$process$3
            r2.<init>(r10, r11, r5)
            r0.f42356j = r3
            java.lang.Object r10 = gt.e.g(r12, r2, r0)
            if (r10 != r1) goto Ldb
            return r1
        Lda:
            r3 = r2
        Ldb:
            java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.a.a(r3)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.dialog.home.CheckInDialogProcessor.b(com.startshorts.androidplayer.ui.activity.MainActivity, kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }

    public boolean c(@NotNull MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return activity.p0();
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public String name() {
        return "CheckInDialogProcessor";
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public HomeDialogPriority priority() {
        return HomeDialogPriority.DIALOG_CHECK_IN;
    }
}
