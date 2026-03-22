package com.startshorts.androidplayer.ui.fragment.checkin;

import com.startshorts.androidplayer.bean.checkin.CheckInInfo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* compiled from: HomeCheckInDialog.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestCheckIn$1$2$1$1", f = "HomeCheckInDialog.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nHomeCheckInDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,362:1\n1#2:363\n360#3,7:364\n*S KotlinDebug\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1\n*L\n226#1:364,7\n*E\n"})
/* loaded from: classes7.dex */
final class HomeCheckInDialog$requestCheckIn$1$2$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45840h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ HomeCheckInDialog f45841i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ CheckInInfo f45842j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeCheckInDialog$requestCheckIn$1$2$1$1(HomeCheckInDialog homeCheckInDialog, CheckInInfo checkInInfo, c<? super HomeCheckInDialog$requestCheckIn$1$2$1$1> cVar) {
        super(2, cVar);
        this.f45841i = homeCheckInDialog;
        this.f45842j = checkInInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new HomeCheckInDialog$requestCheckIn$1$2$1$1(this.f45841i, this.f45842j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((HomeCheckInDialog$requestCheckIn$1$2$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x009f, code lost:
        r6 = r6.f45819w;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.a.f()
            int r0 = r5.f45840h
            if (r0 != 0) goto Lb0
            kotlin.f.b(r6)
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r6 = r5.f45841i
            com.startshorts.androidplayer.databinding.DialogCheckInBinding r6 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.b0(r6)
            com.airbnb.lottie.LottieAnimationView r6 = r6.f38652e
            jk.b0.d(r6)
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r6 = r5.f45841i
            com.startshorts.androidplayer.bean.checkin.CheckInInfo r0 = r5.f45842j
            int r0 = r0.getBonus()
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.p0(r6, r0)
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r6 = r5.f45841i
            com.startshorts.androidplayer.bean.checkin.CheckInInfoResult r6 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.c0(r6)
            if (r6 == 0) goto L5b
            java.util.List r6 = r6.getSignRecords()
            if (r6 == 0) goto L5b
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r0 = r5.f45841i
            java.util.Iterator r6 = r6.iterator()
        L36:
            boolean r1 = r6.hasNext()
            if (r1 == 0) goto L52
            java.lang.Object r1 = r6.next()
            r2 = r1
            com.startshorts.androidplayer.bean.checkin.CheckInInfo r2 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r2
            java.lang.String r2 = r2.getDay()
            java.lang.String r3 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.f0(r0)
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 == 0) goto L36
            goto L53
        L52:
            r1 = 0
        L53:
            com.startshorts.androidplayer.bean.checkin.CheckInInfo r1 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r1
            if (r1 == 0) goto L5b
            r6 = 1
            r1.setSign(r6)
        L5b:
            com.startshorts.androidplayer.manager.configure.ad.AdSignInfoManager r6 = com.startshorts.androidplayer.manager.configure.ad.AdSignInfoManager.f42264a
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r0 = r5.f45841i
            com.startshorts.androidplayer.bean.checkin.CheckInInfoResult r0 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.c0(r0)
            r6.c(r0)
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r6 = r5.f45841i
            com.startshorts.androidplayer.bean.checkin.CheckInInfoResult r6 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.c0(r6)
            if (r6 == 0) goto La8
            java.util.List r6 = r6.getSignRecords()
            if (r6 == 0) goto La8
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r0 = r5.f45841i
            java.util.Iterator r6 = r6.iterator()
            r1 = 0
        L7b:
            boolean r2 = r6.hasNext()
            r3 = -1
            if (r2 == 0) goto L9a
            java.lang.Object r2 = r6.next()
            com.startshorts.androidplayer.bean.checkin.CheckInInfo r2 = (com.startshorts.androidplayer.bean.checkin.CheckInInfo) r2
            java.lang.String r2 = r2.getDay()
            java.lang.String r4 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.f0(r0)
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r4)
            if (r2 == 0) goto L97
            goto L9b
        L97:
            int r1 = r1 + 1
            goto L7b
        L9a:
            r1 = r3
        L9b:
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r6 = r5.f45841i
            if (r1 == r3) goto La8
            com.startshorts.androidplayer.adapter.checkin.HomeCheckInAdapter r6 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.d0(r6)
            if (r6 == 0) goto La8
            r6.notifyItemChanged(r1)
        La8:
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r6 = r5.f45841i
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.q0(r6)
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        Lb0:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestCheckIn$1$2$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
