package com.startshorts.androidplayer.ui.fragment.checkin;

import com.ss.ttvideoengine.model.VideoRef;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HomeCheckInDialog.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestCheckIn$1", f = "HomeCheckInDialog.kt", l = {217, 218, VideoRef.VALUE_VIDEO_REF_AI_BARRAGE_URL}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nHomeCheckInDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,362:1\n295#2,2:363\n*S KotlinDebug\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1\n*L\n216#1:363,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HomeCheckInDialog$requestCheckIn$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f45836h;

    /* renamed from: i  reason: collision with root package name */
    Object f45837i;

    /* renamed from: j  reason: collision with root package name */
    int f45838j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HomeCheckInDialog f45839k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeCheckInDialog$requestCheckIn$1(HomeCheckInDialog homeCheckInDialog, c<? super HomeCheckInDialog$requestCheckIn$1> cVar) {
        super(2, cVar);
        this.f45839k = homeCheckInDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new HomeCheckInDialog$requestCheckIn$1(this.f45839k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((HomeCheckInDialog$requestCheckIn$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bc  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r10.f45838j
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L3f
            if (r1 == r4) goto L2a
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            kotlin.f.b(r11)
            goto Ld2
        L17:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L1f:
            java.lang.Object r1 = r10.f45837i
            java.lang.Object r3 = r10.f45836h
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r3 = (com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog) r3
            kotlin.f.b(r11)
            goto Lb5
        L2a:
            java.lang.Object r1 = r10.f45837i
            com.startshorts.androidplayer.bean.checkin.CheckInInfo r1 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r1
            java.lang.Object r4 = r10.f45836h
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r4 = (com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog) r4
            kotlin.f.b(r11)
            kotlin.Result r11 = (kotlin.Result) r11
            java.lang.Object r11 = r11.n()
            r9 = r1
            r1 = r11
            r11 = r9
            goto L98
        L3f:
            kotlin.f.b(r11)
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r11 = r10.f45839k
            com.startshorts.androidplayer.bean.checkin.CheckInInfoResult r11 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.c0(r11)
            if (r11 == 0) goto Ld2
            java.util.List r11 = r11.getSignRecords()
            if (r11 == 0) goto Ld2
            java.lang.Iterable r11 = (java.lang.Iterable) r11
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r1 = r10.f45839k
            java.util.Iterator r11 = r11.iterator()
        L58:
            boolean r6 = r11.hasNext()
            if (r6 == 0) goto L74
            java.lang.Object r6 = r11.next()
            r7 = r6
            com.startshorts.androidplayer.bean.checkin.CheckInInfo r7 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r7
            java.lang.String r7 = r7.getDay()
            java.lang.String r8 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.f0(r1)
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r8)
            if (r7 == 0) goto L58
            goto L75
        L74:
            r6 = r5
        L75:
            r1 = r6
            com.startshorts.androidplayer.bean.checkin.CheckInInfo r1 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r1
            if (r1 == 0) goto Ld2
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r11 = r10.f45839k
            com.startshorts.androidplayer.repo.rewards.RewardsRepo r6 = com.startshorts.androidplayer.repo.rewards.RewardsRepo.f44515a
            android.content.Context r7 = r11.getContext()
            java.lang.String r8 = r1.getDay()
            r10.f45836h = r11
            r10.f45837i = r1
            r10.f45838j = r4
            r4 = 0
            java.lang.Object r4 = r6.e(r7, r8, r4, r10)
            if (r4 != r0) goto L94
            return r0
        L94:
            r9 = r4
            r4 = r11
            r11 = r1
            r1 = r9
        L98:
            boolean r6 = kotlin.Result.j(r1)
            if (r6 == 0) goto Lb6
            gt.j1 r6 = gt.q0.c()
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestCheckIn$1$2$1$1 r7 = new com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestCheckIn$1$2$1$1
            r7.<init>(r4, r11, r5)
            r10.f45836h = r4
            r10.f45837i = r1
            r10.f45838j = r3
            java.lang.Object r11 = gt.e.g(r6, r7, r10)
            if (r11 != r0) goto Lb4
            return r0
        Lb4:
            r3 = r4
        Lb5:
            r4 = r3
        Lb6:
            java.lang.Throwable r11 = kotlin.Result.g(r1)
            if (r11 == 0) goto Ld2
            gt.j1 r3 = gt.q0.c()
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestCheckIn$1$2$2$1 r6 = new com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestCheckIn$1$2$2$1
            r6.<init>(r4, r11, r5)
            r10.f45836h = r1
            r10.f45837i = r5
            r10.f45838j = r2
            java.lang.Object r11 = gt.e.g(r3, r6, r10)
            if (r11 != r0) goto Ld2
            return r0
        Ld2:
            kotlin.Unit r11 = kotlin.Unit.f60915a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestCheckIn$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
