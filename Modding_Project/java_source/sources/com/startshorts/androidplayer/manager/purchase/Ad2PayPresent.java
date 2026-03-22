package com.startshorts.androidplayer.manager.purchase;

import android.os.SystemClock;
import androidx.exifinterface.media.ExifInterface;
import au.l;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.subs.Ad2PayConfig;
import com.startshorts.androidplayer.bean.subs.Ad2PayPopupConfig;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import gt.d0;
import gt.g;
import gt.g0;
import gt.q0;
import gt.r1;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ad2PayPresent.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAd2PayPresent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ad2PayPresent.kt\ncom/startshorts/androidplayer/manager/purchase/Ad2PayPresent\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,392:1\n1863#2,2:393\n295#2,2:395\n47#3,4:397\n47#3,4:401\n*S KotlinDebug\n*F\n+ 1 Ad2PayPresent.kt\ncom/startshorts/androidplayer/manager/purchase/Ad2PayPresent\n*L\n231#1:393,2\n332#1:395,2\n59#1:397,4\n75#1:401,4\n*E\n"})
/* loaded from: classes6.dex */
public final class Ad2PayPresent {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Ad2PayPresent f42733a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static volatile List<Ad2PayPopupConfig> f42734b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile boolean f42735c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final i f42736d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final i f42737e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static r f42738f;

    /* renamed from: g  reason: collision with root package name */
    private static volatile long f42739g;

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 Ad2PayPresent.kt\ncom/startshorts/androidplayer/manager/purchase/Ad2PayPresent\n*L\n1#1,49:1\n60#2,9:50\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a extends kotlin.coroutines.a implements d0 {
        public a(d0.b bVar) {
            super(bVar);
        }

        @Override // gt.d0
        public void handleException(CoroutineContext coroutineContext, Throwable th2) {
            new Exception("autoCatchMainScope:自动catch异常的协程scope捕获到异常", th2).printStackTrace();
        }
    }

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 Ad2PayPresent.kt\ncom/startshorts/androidplayer/manager/purchase/Ad2PayPresent\n*L\n1#1,49:1\n76#2,9:50\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends kotlin.coroutines.a implements d0 {
        public b(d0.b bVar) {
            super(bVar);
        }

        @Override // gt.d0
        public void handleException(CoroutineContext coroutineContext, Throwable th2) {
            new Exception("autoCatchMainScope:自动catch异常的协程scope捕获到异常", th2).printStackTrace();
        }
    }

    static {
        Ad2PayPresent ad2PayPresent = new Ad2PayPresent();
        f42733a = ad2PayPresent;
        f42736d = c.b(new Function0() { // from class: qf.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                g0 C;
                C = Ad2PayPresent.C();
                return C;
            }
        });
        f42737e = c.b(new Function0() { // from class: qf.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                g0 D;
                D = Ad2PayPresent.D();
                return D;
            }
        });
        au.c.d().p(ad2PayPresent);
    }

    private Ad2PayPresent() {
    }

    private final void B(String str, int i10) {
        ud.b.f68412a.t2(str, p(), i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g0 C() {
        return kotlinx.coroutines.i.a(q0.a().plus(r1.b(null, 1, null)).plus(new a(d0.D8)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g0 D() {
        return kotlinx.coroutines.i.a(q0.c().plus(r1.b(null, 1, null)).plus(new b(d0.D8)));
    }

    private final Ad2PayConfig f(List<Ad2PayConfig> list, int i10, String str) {
        boolean z10;
        Iterator<T> it = list.iterator();
        boolean z11 = false;
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Ad2PayConfig ad2PayConfig = (Ad2PayConfig) it.next();
            int interval = ad2PayConfig.getInterval();
            if (interval > 0) {
                int cycle = ad2PayConfig.getCycle();
                int i12 = (interval * cycle) + i11;
                if (i10 > i12) {
                    i11 = i12;
                } else {
                    int i13 = i10 - i11;
                    if (i13 <= 0) {
                        return null;
                    }
                    if (i13 % interval == 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    int i14 = i13 / interval;
                    if (1 <= i14 && i14 <= cycle) {
                        z11 = true;
                    }
                    if (!z10 || !z11 || f42733a.n(str, i10)) {
                        break;
                    }
                    return ad2PayConfig;
                }
            }
        }
        return null;
    }

    private final List<Ad2PayConfig> g(String str) {
        Object obj;
        List<Ad2PayPopupConfig> list = f42734b;
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((Ad2PayPopupConfig) obj).getScene(), str)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        Ad2PayPopupConfig ad2PayPopupConfig = (Ad2PayPopupConfig) obj;
        if (ad2PayPopupConfig == null) {
            return null;
        }
        return ad2PayPopupConfig.getConfig();
    }

    private final List<Ad2PayConfig> h() {
        return g("watchDrama");
    }

    private final Ad2PayConfig i() {
        List<Ad2PayConfig> g10 = g("watchDramaGroupB");
        if (g10 != null) {
            return (Ad2PayConfig) CollectionsKt.firstOrNull(g10);
        }
        return null;
    }

    private final List<Ad2PayConfig> j() {
        return g("taskCenter");
    }

    private final boolean n(String str, int i10) {
        if (ud.b.f68412a.f2(str, p()) == i10) {
            return true;
        }
        return false;
    }

    private final g0 o() {
        return (g0) f42736d.getValue();
    }

    private final String p() {
        return TimeUtil.f48175a.i(DeviceUtil.f48146a.K());
    }

    private final boolean q() {
        boolean z10;
        List<Ad2PayConfig> h10 = h();
        if (h10 != null && !h10.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        return !z10;
    }

    private final boolean r() {
        Ad2PayConfig i10 = i();
        if (i10 != null && (i10.getSkuResp() != null || i10.getSubscribeResp() != null)) {
            return true;
        }
        return false;
    }

    private final boolean s() {
        boolean z10;
        List<Ad2PayConfig> j10 = j();
        if (j10 != null && !j10.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        return !z10;
    }

    public final void A(long j10) {
        f42739g = j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(@org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod r8, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super java.lang.String, ? super com.startshorts.androidplayer.bean.subs.Ad2PayConfig, kotlin.Unit> r9, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<kotlin.Unit> r10) {
        /*
            r7 = this;
            java.lang.String r0 = "onReachedShowAd2PayDialog"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "onNotReachedShowAd2PayDialog"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            com.startshorts.androidplayer.bean.subs.Ad2PayConfig r0 = r7.t()
            r1 = 0
            if (r8 == 0) goto L16
            int r2 = r8.getTotalWatchAdNum()
            goto L17
        L16:
            r2 = r1
        L17:
            r3 = 1
            if (r2 <= 0) goto L29
            if (r8 == 0) goto L24
            int r8 = r8.getCanWatchAdNum()
            if (r8 != r3) goto L24
            r8 = r3
            goto L25
        L24:
            r8 = r1
        L25:
            if (r8 == 0) goto L29
            r8 = r3
            goto L2a
        L29:
            r8 = r1
        L2a:
            com.startshorts.androidplayer.bean.subs.Ad2PayConfig r2 = r7.k()
            if (r2 == 0) goto L35
            int r4 = r2.getCycle()
            goto L36
        L35:
            r4 = r1
        L36:
            int r5 = r7.l()
            if (r0 == 0) goto L3e
            r6 = r3
            goto L3f
        L3e:
            r6 = r1
        L3f:
            if (r8 == 0) goto L46
            if (r2 == 0) goto L46
            if (r5 >= r4) goto L46
            r1 = r3
        L46:
            java.lang.String r8 = "A"
            if (r6 == 0) goto L53
            if (r1 == 0) goto L53
            java.lang.Object r8 = r9.invoke(r8, r0)
            kotlin.Unit r8 = (kotlin.Unit) r8
            goto L6d
        L53:
            if (r1 == 0) goto L5e
            java.lang.String r8 = "B"
            java.lang.Object r8 = r9.invoke(r8, r2)
            kotlin.Unit r8 = (kotlin.Unit) r8
            goto L6d
        L5e:
            if (r6 == 0) goto L67
            java.lang.Object r8 = r9.invoke(r8, r0)
            kotlin.Unit r8 = (kotlin.Unit) r8
            goto L6d
        L67:
            java.lang.Object r8 = r10.invoke()
            kotlin.Unit r8 = (kotlin.Unit) r8
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.purchase.Ad2PayPresent.e(com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function0):void");
    }

    @Nullable
    public final Ad2PayConfig k() {
        if (!r()) {
            return null;
        }
        return i();
    }

    public final int l() {
        return ud.b.f68412a.i("B", p());
    }

    public final int m(@NotNull String scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        return ud.b.f68412a.j(scene, p());
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        v();
    }

    @Nullable
    public final Ad2PayConfig t() {
        if (f42734b != null && q()) {
            List<Ad2PayConfig> h10 = h();
            List<Ad2PayConfig> list = h10;
            if (list != null && !list.isEmpty()) {
                return f(h10, m(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS), ExifInterface.GPS_MEASUREMENT_IN_PROGRESS);
            }
        }
        return null;
    }

    @Nullable
    public final Ad2PayConfig u() {
        if (f42734b != null && s()) {
            List<Ad2PayConfig> j10 = j();
            List<Ad2PayConfig> list = j10;
            if (list != null && !list.isEmpty()) {
                return f(j10, m("C"), "C");
            }
        }
        return null;
    }

    public final void v() {
        r d10;
        if (!f42735c && SystemClock.elapsedRealtime() - f42739g > 5000) {
            r rVar = f42738f;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            f42735c = true;
            d10 = g.d(o(), null, null, new Ad2PayPresent$loadAd2SubSkuList$1(null), 3, null);
            f42738f = d10;
        }
    }

    public final void w() {
        ud.b.f68412a.r2("B", p(), l() + 1);
    }

    public final void x() {
        B(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, m(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS) + 1);
    }

    public final void y(@NotNull String scene, int i10) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        ud.b.f68412a.s2(scene, p(), i10);
    }

    public final void z() {
        B("C", m("C") + 1);
    }
}
