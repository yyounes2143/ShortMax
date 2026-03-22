package com.startshorts.androidplayer.manager.push.util;

import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.provider.Settings;
import android.service.notification.StatusBarNotification;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import b7.d0;
import com.appsflyer.AdRevenueScheme;
import com.hades.aar.activity.IDActivity;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.notification.CustomNotification;
import com.startshorts.androidplayer.bean.notification.NewShortsNotification;
import com.startshorts.androidplayer.bean.notification.NotificationData;
import com.startshorts.androidplayer.bean.notification.RecommendShortsNotification;
import com.startshorts.androidplayer.bean.notification.RewardsNotification;
import com.startshorts.androidplayer.bean.notification.ShortPlayNotification;
import com.startshorts.androidplayer.bean.notification.StartRechargingNotification;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.receiver.NotificationDeletedReceiver;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.ui.activity.notification.LocalNotificationNavigatorActivity;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.a0;
import fk.u;
import fk.z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import jk.l;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.random.Random;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.a;
import qt.d;
import ud.b;
/* compiled from: PushUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPushUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushUtil.kt\ncom/startshorts/androidplayer/manager/push/util/PushUtil\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,974:1\n13402#2,2:975\n*S KotlinDebug\n*F\n+ 1 PushUtil.kt\ncom/startshorts/androidplayer/manager/push/util/PushUtil\n*L\n906#1:975,2\n*E\n"})
/* loaded from: classes6.dex */
public final class PushUtil {
    @SuppressLint({"StaticFieldLeak"})
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static NotificationManagerCompat f42897c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static NotificationManager f42898d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static PowerManager f42899e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static KeyguardManager f42900f;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f42901g;

    /* renamed from: k  reason: collision with root package name */
    private static int f42905k;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final PushUtil f42895a = new PushUtil();

    /* renamed from: b  reason: collision with root package name */
    private static final int f42896b = z.f51786a.p();
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final a f42902h = d.b(false, 1, null);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final ConcurrentHashMap<PushType, Long> f42903i = new ConcurrentHashMap<>();
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final List<Pair<PushType, Integer>> f42904j = new ArrayList();

    private PushUtil() {
    }

    private final boolean A() {
        m();
        PowerManager powerManager = f42899e;
        if (powerManager != null) {
            return powerManager.isInteractive();
        }
        return false;
    }

    private final boolean C() {
        int i10 = Calendar.getInstance().get(11);
        boolean z10 = false;
        if (6 <= i10 && i10 < 22) {
            z10 = true;
        }
        return !z10;
    }

    private final boolean D() {
        h();
        KeyguardManager keyguardManager = f42900f;
        if (keyguardManager != null) {
            return keyguardManager.isKeyguardLocked();
        }
        return false;
    }

    private final boolean E() {
        h();
        KeyguardManager keyguardManager = f42900f;
        if (keyguardManager != null) {
            return keyguardManager.isKeyguardSecure();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean G() {
        /*
            r16 = this;
            java.lang.String r1 = "remote_views_notification_permanent_shorts_fold"
            java.lang.String r2 = "TextAppearance.Compat.Notification.Title"
            java.lang.String r3 = ""
            r4 = 0
            fk.u r0 = fk.u.f51776a     // Catch: java.lang.Exception -> L2f
            android.content.Context r5 = r0.b()     // Catch: java.lang.Exception -> L2f
            android.content.res.Resources r5 = r5.getResources()     // Catch: java.lang.Exception -> L2f
            android.content.Context r0 = r0.b()     // Catch: java.lang.Exception -> L2f
            java.lang.String r0 = r0.getPackageName()     // Catch: java.lang.Exception -> L2f
            java.lang.String r6 = "style"
            int r6 = r5.getIdentifier(r2, r6, r0)     // Catch: java.lang.Exception -> L2f
            java.lang.String r7 = "layout"
            int r0 = r5.getIdentifier(r1, r7, r0)     // Catch: java.lang.Exception -> L2d
            if (r6 == 0) goto L3a
            if (r0 != 0) goto L2b
            goto L3a
        L2b:
            r4 = 1
            goto L3a
        L2d:
            r0 = move-exception
            goto L31
        L2f:
            r0 = move-exception
            r6 = r4
        L31:
            java.lang.String r0 = r0.getMessage()
            if (r0 != 0) goto L38
            goto L39
        L38:
            r3 = r0
        L39:
            r0 = r4
        L3a:
            java.lang.String r5 = ",layoutID:"
            java.lang.String r7 = "PushUtil"
            if (r4 == 0) goto L5d
            com.startshorts.androidplayer.log.Logger r1 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "isNotificationResourceValid valid -> styleId:"
            r2.append(r3)
            r2.append(r6)
            r2.append(r5)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.h(r7, r0)
            goto Lab
        L5d:
            com.startshorts.androidplayer.log.Logger r8 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "isNotificationResourceValid invalid -> styleId:"
            r9.append(r10)
            r9.append(r6)
            r9.append(r5)
            r9.append(r0)
            java.lang.String r5 = ",error="
            r9.append(r5)
            r9.append(r3)
            r5 = 46
            r9.append(r5)
            java.lang.String r5 = r9.toString()
            r8.e(r7, r5)
            com.startshorts.androidplayer.manager.event.EventManager r9 = com.startshorts.androidplayer.manager.event.EventManager.f42463a
            android.os.Bundle r11 = new android.os.Bundle
            r11.<init>()
            java.lang.String r5 = java.lang.String.valueOf(r6)
            r11.putString(r2, r5)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r11.putString(r1, r0)
            java.lang.String r0 = "err_msg"
            r11.putString(r0, r3)
            kotlin.Unit r0 = kotlin.Unit.f60915a
            r14 = 4
            r15 = 0
            java.lang.String r10 = "notification_resource_check_invalid"
            r12 = 0
            com.startshorts.androidplayer.manager.event.EventManager.s0(r9, r10, r11, r12, r14, r15)
        Lab:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.util.PushUtil.G():boolean");
    }

    private final boolean H(PushType pushType) {
        long L = DeviceUtil.f48146a.L();
        ConcurrentHashMap<PushType, Long> concurrentHashMap = f42903i;
        Long orDefault = concurrentHashMap.getOrDefault(pushType, 0L);
        Intrinsics.checkNotNullExpressionValue(orDefault, "getOrDefault(...)");
        if (L - orDefault.longValue() < 2000) {
            Logger logger = Logger.f41511a;
            logger.e("PushUtil", "push " + pushType + " too frequently");
            return true;
        }
        concurrentHashMap.put(pushType, Long.valueOf(L));
        return false;
    }

    @SuppressLint({"MissingPermission"})
    private final void P(String str, int i10, Notification notification) {
        g(str);
        NotificationManagerCompat l10 = l();
        if (l10 != null) {
            l10.notify(i10, notification);
        }
        p();
        if (a0.f51704a.b()) {
            X();
        }
    }

    private final Object Q(String str, int i10, RemoteViews remoteViews, RemoteViews remoteViews2, PendingIntent pendingIntent, PendingIntent pendingIntent2, boolean z10, boolean z11) {
        if (ud.a.f68411a.t()) {
            Logger.f41511a.e("PushUtil", "pushNotification failed -> app on foreground");
            Result.a aVar = Result.f60901b;
            return Result.d(f.a(new Throwable("app on foreground")));
        } else if (B()) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(f.a(new Throwable("disable push")));
        } else {
            P(str, i10, j(this, str, 0, false, String.valueOf(i10), remoteViews, remoteViews2, pendingIntent, pendingIntent2, z10, z11, false, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, null));
            uf.a.f68420a.c();
            return Result.d("");
        }
    }

    static /* synthetic */ Object R(PushUtil pushUtil, String str, int i10, RemoteViews remoteViews, RemoteViews remoteViews2, PendingIntent pendingIntent, PendingIntent pendingIntent2, boolean z10, boolean z11, int i11, Object obj) {
        PendingIntent pendingIntent3;
        PendingIntent pendingIntent4;
        boolean z12;
        boolean z13;
        if ((i11 & 16) != 0) {
            pendingIntent3 = null;
        } else {
            pendingIntent3 = pendingIntent;
        }
        if ((i11 & 32) != 0) {
            pendingIntent4 = null;
        } else {
            pendingIntent4 = pendingIntent2;
        }
        if ((i11 & 64) != 0) {
            z12 = false;
        } else {
            z12 = z10;
        }
        if ((i11 & 128) != 0) {
            z13 = false;
        } else {
            z13 = z11;
        }
        return pushUtil.Q(str, i10, remoteViews, remoteViews2, pendingIntent3, pendingIntent4, z12, z13);
    }

    private final void g(String str) {
        if (Intrinsics.areEqual(str, "com.startshorts.androidplayer.short_tv_push")) {
            o();
        } else if (Intrinsics.areEqual(str, "com.startshorts.androidplayer.short_tv_Live")) {
            n();
        }
    }

    private final void h() {
        KeyguardManager keyguardManager;
        if (f42900f == null) {
            Object systemService = u.f51776a.b().getSystemService("keyguard");
            if (systemService instanceof KeyguardManager) {
                keyguardManager = (KeyguardManager) systemService;
            } else {
                keyguardManager = null;
            }
            f42900f = keyguardManager;
        }
    }

    private final Notification i(String str, int i10, boolean z10, String str2, RemoteViews remoteViews, RemoteViews remoteViews2, PendingIntent pendingIntent, PendingIntent pendingIntent2, boolean z11, boolean z12, boolean z13) {
        boolean C;
        Context b10 = u.f51776a.b();
        boolean b11 = a0.f51704a.b();
        if (z13) {
            C = true;
        } else {
            C = C();
        }
        NotificationCompat.Builder visibility = new NotificationCompat.Builder(b10, str).setSmallIcon(R$drawable.ic_stat_ic_notification).setWhen(System.currentTimeMillis()).setPriority(i10).setAutoCancel(!z10).setGroup(str2).setDefaults(-1).setSilent(C).setStyle(new NotificationCompat.DecoratedCustomViewStyle()).setNumber(1).setVisibility(1);
        Intrinsics.checkNotNullExpressionValue(visibility, "setVisibility(...)");
        if (pendingIntent != null) {
            visibility.setContentIntent(pendingIntent);
        }
        if (z10) {
            visibility.setOngoing(true);
        }
        if (b11 && !z10) {
            if (!z11) {
                visibility.setContentTitle(b10.getString(R$string.app_name));
            }
            Intent intent = new Intent();
            intent.setClass(b10, NotificationDeletedReceiver.class);
            intent.setAction(NotificationDeletedReceiver.f42893a.a());
            Unit unit = Unit.f60915a;
            visibility.setDeleteIntent(PendingIntent.getBroadcast(b10, 10001, intent, 201326592));
        }
        boolean E = E();
        boolean I = I();
        Logger.f41511a.h("PushUtil", "createNotification -> forceShowHeadUp(" + z12 + ") keyguardSecure(" + E + ") isScreenOn(" + I + ") isSilent(" + C + ')');
        if (DeviceUtil.f48146a.Y()) {
            visibility.setContent(remoteViews2);
        } else {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 31) {
                visibility.setCustomContentView(remoteViews);
                visibility.setCustomBigContentView(remoteViews2);
            } else if (i11 != 26 && i11 != 27) {
                visibility.setCustomContentView(remoteViews);
                visibility.setCustomBigContentView(remoteViews2);
            } else {
                visibility.setCustomContentView(remoteViews);
            }
        }
        Notification build = visibility.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    static /* synthetic */ Notification j(PushUtil pushUtil, String str, int i10, boolean z10, String str2, RemoteViews remoteViews, RemoteViews remoteViews2, PendingIntent pendingIntent, PendingIntent pendingIntent2, boolean z11, boolean z12, boolean z13, int i11, Object obj) {
        int i12;
        boolean z14;
        PendingIntent pendingIntent3;
        PendingIntent pendingIntent4;
        boolean z15;
        boolean z16;
        boolean z17;
        if ((i11 & 2) != 0) {
            i12 = 1;
        } else {
            i12 = i10;
        }
        if ((i11 & 4) != 0) {
            z14 = false;
        } else {
            z14 = z10;
        }
        if ((i11 & 64) != 0) {
            pendingIntent3 = null;
        } else {
            pendingIntent3 = pendingIntent;
        }
        if ((i11 & 128) != 0) {
            pendingIntent4 = null;
        } else {
            pendingIntent4 = pendingIntent2;
        }
        if ((i11 & 256) != 0) {
            z15 = false;
        } else {
            z15 = z11;
        }
        if ((i11 & 512) != 0) {
            z16 = false;
        } else {
            z16 = z12;
        }
        if ((i11 & 1024) != 0) {
            z17 = false;
        } else {
            z17 = z13;
        }
        return pushUtil.i(str, i12, z14, str2, remoteViews, remoteViews2, pendingIntent3, pendingIntent4, z15, z16, z17);
    }

    private final NotificationManager k() {
        NotificationManager notificationManager = f42898d;
        if (notificationManager == null) {
            Object systemService = u.f51776a.b().getSystemService("notification");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            NotificationManager notificationManager2 = (NotificationManager) systemService;
            f42898d = notificationManager2;
            return notificationManager2;
        }
        return notificationManager;
    }

    private final NotificationManagerCompat l() {
        NotificationManagerCompat notificationManagerCompat = f42897c;
        if (notificationManagerCompat == null) {
            NotificationManagerCompat from = NotificationManagerCompat.from(u.f51776a.b());
            Intrinsics.checkNotNullExpressionValue(from, "from(...)");
            f42897c = from;
            return from;
        }
        return notificationManagerCompat;
    }

    private final void m() {
        PowerManager powerManager;
        if (f42899e == null) {
            Object systemService = u.f51776a.b().getSystemService("power");
            if (systemService instanceof PowerManager) {
                powerManager = (PowerManager) systemService;
            } else {
                powerManager = null;
            }
            f42899e = powerManager;
        }
    }

    private final void n() {
        if (Build.VERSION.SDK_INT >= 26 && !f42901g) {
            f42901g = true;
            d0.a();
            NotificationChannel a10 = androidx.browser.trusted.f.a("com.startshorts.androidplayer.short_tv_Live", "Short TV Push", 3);
            a10.setLockscreenVisibility(1);
            a10.enableLights(true);
            a10.enableVibration(true);
            a10.setSound(Settings.System.DEFAULT_NOTIFICATION_URI, Notification.AUDIO_ATTRIBUTES_DEFAULT);
            a10.setShowBadge(true);
            NotificationManagerCompat l10 = l();
            if (l10 != null) {
                l10.createNotificationChannel(a10);
            }
        }
    }

    private final void o() {
        if (Build.VERSION.SDK_INT >= 26 && !f42901g) {
            f42901g = true;
            d0.a();
            NotificationChannel a10 = androidx.browser.trusted.f.a("com.startshorts.androidplayer.short_tv_push", "Short TV Push", 4);
            a10.setLockscreenVisibility(1);
            a10.enableLights(true);
            a10.enableVibration(true);
            a10.setSound(Settings.System.DEFAULT_NOTIFICATION_URI, Notification.AUDIO_ATTRIBUTES_DEFAULT);
            a10.setShowBadge(true);
            NotificationManagerCompat l10 = l();
            if (l10 != null) {
                l10.createNotificationChannel(a10);
            }
        }
    }

    private final boolean p() {
        return !C();
    }

    private final int q(PushType pushType) {
        return x(pushType) + 1;
    }

    private final int u(PushType pushType) {
        return x(pushType) + 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int w() {
        StatusBarNotification[] statusBarNotificationArr;
        NotificationManager k10 = k();
        if (k10 != null) {
            statusBarNotificationArr = k10.getActiveNotifications();
        } else {
            statusBarNotificationArr = null;
        }
        if (statusBarNotificationArr == null) {
            return 0;
        }
        int i10 = 0;
        for (StatusBarNotification statusBarNotification : statusBarNotificationArr) {
            if (statusBarNotification.isClearable()) {
                i10++;
            }
        }
        return i10;
    }

    private final int x(PushType pushType) {
        return (y(pushType) * 10000) + 1;
    }

    private final int y(PushType pushType) {
        int i10;
        Iterator<Pair<PushType, Integer>> it = f42904j.iterator();
        while (true) {
            if (it.hasNext()) {
                Pair<PushType, Integer> next = it.next();
                if (next.e().ordinal() == pushType.ordinal()) {
                    i10 = next.f().intValue();
                    break;
                }
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 == -1) {
            List<Pair<PushType, Integer>> list = f42904j;
            int size = list.size() + 5;
            list.add(new Pair<>(pushType, Integer.valueOf(size)));
            return size;
        }
        return i10;
    }

    private final boolean z() {
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        if (!deviceUtil.d0() && !deviceUtil.e0() && !deviceUtil.i0()) {
            return false;
        }
        return true;
    }

    public final boolean B() {
        if (b.f68412a.m1()) {
            return true;
        }
        List<String> push = pe.a.f64855a.value().getPush();
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        String C = deviceUtil.C();
        String O = deviceUtil.O();
        List<String> list = push;
        if (list != null && !list.isEmpty() && push.contains(C)) {
            Logger logger = Logger.f41511a;
            logger.e("PushUtil", "disable push -> " + C + " is in black device list");
            return true;
        }
        a0 a0Var = a0.f51704a;
        if (a0Var.a()) {
            if (StringsKt.b0(O, "7", false, 2, null) || StringsKt.b0(O, "7.0", false, 2, null) || Intrinsics.areEqual(O, "7.1.1") || StringsKt.b0(O, "8", false, 2, null) || StringsKt.b0(O, "8.0", false, 2, null) || Intrinsics.areEqual(O, "8.1.0") || StringsKt.b0(O, "9", false, 2, null) || StringsKt.b0(O, "9.0", false, 2, null)) {
                return true;
            }
        } else if (a0Var.b() && ((StringsKt.b0(O, "7", false, 2, null) || StringsKt.b0(O, "7.0", false, 2, null) || Intrinsics.areEqual(O, "7.1.1")) && (StringsKt.b0(C, "SM-T", false, 2, null) || StringsKt.b0(C, "SM-J", false, 2, null) || StringsKt.b0(C, "SM-P", false, 2, null)))) {
            return true;
        }
        if (Build.VERSION.SDK_INT > 27 || !a0Var.b() || G()) {
            return false;
        }
        Logger.f41511a.e("PushUtil", "disable push -> notification resource invalid");
        return true;
    }

    public final boolean F() {
        NotificationManagerCompat l10 = l();
        if (l10 != null) {
            return l10.areNotificationsEnabled();
        }
        return false;
    }

    public final boolean I() {
        if (A() && !D()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0129  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object J(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<java.lang.String>> r14) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.util.PushUtil.J(com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x013f  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object K(@org.jetbrains.annotations.Nullable java.lang.String r14, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<java.lang.String>> r15) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.util.PushUtil.K(java.lang.String, rs.c):java.lang.Object");
    }

    @NotNull
    public final Object L(@NotNull ShortPlayNotification notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context b10 = u.f51776a.b();
        uf.f fVar = uf.f.f68421a;
        RemoteViews c10 = fVar.c(R$layout.remote_views_notification_cur_play_short_fold, notification);
        RemoteViews c11 = fVar.c(R$layout.remote_views_notification_cur_play_short_unfold, notification);
        Intent intent = new Intent(b10, LocalNotificationNavigatorActivity.class);
        intent.putExtra("data", l.d(new NotificationData(11, l.d(notification))));
        Unit unit = Unit.f60915a;
        Object R = R(this, "com.startshorts.androidplayer.short_tv_Live", 10086, c10, c11, PendingIntent.getActivity(b10, 40004, intent, 201326592), null, false, false, 224, null);
        if (Result.j(R)) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString(AdRevenueScheme.COUNTRY, DeviceUtil.f48146a.k());
            bundle.putString(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, "and");
            bundle.putString("type", "Real_time_Watch");
            bundle.putString("reel_id", String.valueOf(notification.getShortPlayCode()));
            bundle.putString("episode", String.valueOf(notification.getDramaNum()));
            EventManager.s0(eventManager, "realtimeactivity_show", bundle, 0L, 4, null);
        }
        return R;
    }

    @NotNull
    public final Object M(@NotNull CustomNotification notification) {
        boolean z10;
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(notification, "notification");
        if (H(PushType.CUSTOM)) {
            Result.a aVar = Result.f60901b;
            return Result.d(f.a(new Throwable("Too frequently")));
        }
        if (notification.getPush().getShortId() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Context b10 = u.f51776a.b();
        int notificationId = notification.getNotificationId();
        uf.f fVar = uf.f.f68421a;
        if (z()) {
            if (z10) {
                i10 = R$layout.remote_views_notification_custom_short_compact_fold;
            } else {
                i10 = R$layout.remote_views_notification_custom_compact_fold;
            }
        } else if (z10) {
            i10 = R$layout.remote_views_notification_custom_short_fold;
        } else {
            i10 = R$layout.remote_views_notification_custom_fold;
        }
        RemoteViews d10 = fVar.d(i10, notification, z10);
        if (z10) {
            i11 = R$layout.remote_views_notification_custom_short_unfold;
        } else {
            i11 = R$layout.remote_views_notification_custom_unfold;
        }
        RemoteViews d11 = fVar.d(i11, notification, z10);
        int notificationRequestCode = notification.getNotificationRequestCode();
        Intent intent = new Intent(b10, LocalNotificationNavigatorActivity.class);
        intent.putExtra("data", l.d(new NotificationData(6, l.d(notification))));
        Unit unit = Unit.f60915a;
        Object R = R(this, "com.startshorts.androidplayer.short_tv_push", notificationId, d10, d11, PendingIntent.getActivity(b10, notificationRequestCode, intent, 201326592), null, false, false, 224, null);
        if (Result.j(R)) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("push_name", "customize");
            if (notification.getPush().getShortId() > 0) {
                bundle.putString("reel_id", notification.getPush().getShortPlayCode());
            }
            bundle.putString("push_id", notification.getPush().getPushId());
            bundle.putString("title", notification.getPush().getTitle());
            bundle.putString("content", notification.getPush().getContent());
            EventManager.s0(eventManager, "push_send", bundle, 0L, 4, null);
            if (notification.getPush().getShortId() > 0) {
                ag.a.d(ag.a.f646a, "Push", notification.getPush().getShortPlayCode(), null, 0, null, null, null, notification.getPush().getUpack(), null, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, null);
            }
        }
        return R;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0129  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object N(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.notification.MissCheckInNotification r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<java.lang.String>> r14) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.util.PushUtil.N(com.startshorts.androidplayer.bean.notification.MissCheckInNotification, rs.c):java.lang.Object");
    }

    @NotNull
    public final Object O(@NotNull NewShortsNotification notification) {
        int i10;
        Intrinsics.checkNotNullParameter(notification, "notification");
        PushType pushType = PushType.NEW_SHORTS;
        if (H(pushType)) {
            Result.a aVar = Result.f60901b;
            return Result.d(f.a(new Throwable("Too frequently")));
        }
        Context b10 = u.f51776a.b();
        uf.f fVar = uf.f.f68421a;
        if (z()) {
            i10 = R$layout.remote_views_notification_default_new_shorts_compact_fold;
        } else {
            i10 = R$layout.remote_views_notification_default_new_shorts_fold;
        }
        RemoteViews e10 = fVar.e(i10, notification);
        RemoteViews e11 = fVar.e(R$layout.remote_views_notification_default_new_shorts_unfold, notification);
        int x10 = x(pushType);
        int q10 = q(pushType);
        Intent intent = new Intent(b10, LocalNotificationNavigatorActivity.class);
        intent.putExtra("data", l.d(new NotificationData(3, l.d(notification))));
        Unit unit = Unit.f60915a;
        Object R = R(this, "com.startshorts.androidplayer.short_tv_push", x10, e10, e11, PendingIntent.getActivity(b10, q10, intent, 201326592), null, false, false, 224, null);
        if (Result.j(R)) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("push_name", "reel_update");
            bundle.putString("reel_id", notification.getShortPlayCode());
            bundle.putString("title", notification.getTitle());
            bundle.putString("content", notification.getRecommendation());
            EventManager.s0(eventManager, "push_send", bundle, 0L, 4, null);
            ag.a.d(ag.a.f646a, "Push", notification.getShortPlayCode(), null, 0, null, null, null, notification.getUpack(), null, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, null);
        }
        return R;
    }

    @NotNull
    public final Object S(@NotNull RecommendShortsNotification notification) {
        int i10;
        String summary;
        Intrinsics.checkNotNullParameter(notification, "notification");
        PushType pushType = PushType.RECOMMEND_SHORTS;
        if (H(pushType)) {
            Result.a aVar = Result.f60901b;
            return Result.d(f.a(new Throwable("Too frequently")));
        }
        Context b10 = u.f51776a.b();
        int x10 = x(pushType);
        uf.f fVar = uf.f.f68421a;
        if (z()) {
            i10 = R$layout.remote_views_notification_recommend_shorts_compact_fold;
        } else {
            i10 = R$layout.remote_views_notification_recommend_shorts_fold;
        }
        RemoteViews g10 = fVar.g(i10, notification);
        RemoteViews g11 = fVar.g(R$layout.remote_views_notification_recommend_shorts_unfold, notification);
        int q10 = q(pushType);
        Intent intent = new Intent(b10, LocalNotificationNavigatorActivity.class);
        intent.putExtra("data", l.d(new NotificationData(4, l.d(notification))));
        Unit unit = Unit.f60915a;
        Object R = R(this, "com.startshorts.androidplayer.short_tv_push", x10, g10, g11, PendingIntent.getActivity(b10, q10, intent, 201326592), null, false, false, 224, null);
        if (Result.j(R)) {
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(notification);
            C.putString("push_name", "active_push");
            C.putString("title", notification.getTitle());
            String recommendation = notification.getRecommendation();
            if (recommendation != null && recommendation.length() != 0) {
                summary = notification.getRecommendation();
            } else {
                summary = notification.getSummary();
            }
            C.putString("content", summary);
            EventManager.s0(eventManager, "push_send", C, 0L, 4, null);
            ag.a.d(ag.a.f646a, "Push", notification.getShortPlayCode(), null, 0, null, null, null, notification.getUpack(), null, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, null);
        }
        return R;
    }

    @NotNull
    public final Object T() {
        IDActivity b10;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 == null || (b10 = d10.get()) == null) {
            b10 = u.f51776a.b();
        }
        List<String> b11 = jk.d.b(b10, "reel_time_activity_rewards_title_", 1);
        int intValue = ((Number) CollectionsKt.M0(CollectionsKt.f(CollectionsKt.o(b11)), Random.f61065a)).intValue();
        RewardsNotification rewardsNotification = new RewardsNotification();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(b11.get(intValue), Arrays.copyOf(new Object[]{String.valueOf(ud.a.f68411a.H())}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        rewardsNotification.setTitle(format);
        rewardsNotification.setContent(b10.getString(R$string.reel_time_activity_rewards_content));
        rewardsNotification.setBonusIconResource(Integer.valueOf(R$drawable.ic_push_msg_rewards_gift));
        uf.f fVar = uf.f.f68421a;
        RemoteViews h10 = fVar.h(R$layout.remote_views_notification_rewards_fold, rewardsNotification);
        RemoteViews h11 = fVar.h(R$layout.remote_views_notification_rewards_unfold, rewardsNotification);
        Intent intent = new Intent(b10, LocalNotificationNavigatorActivity.class);
        intent.putExtra("data", l.d(new NotificationData(12, l.d(rewardsNotification))));
        Unit unit = Unit.f60915a;
        Object R = R(this, "com.startshorts.androidplayer.short_tv_push", 6666, h10, h11, PendingIntent.getActivity(b10, 40005, intent, 201326592), null, false, false, 224, null);
        if (Result.j(R)) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString(AdRevenueScheme.COUNTRY, DeviceUtil.f48146a.k());
            bundle.putString(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, "and");
            bundle.putString("type", "Real_time_Rewards");
            EventManager.s0(eventManager, "realtimeactivity_show", bundle, 0L, 4, null);
        }
        return R;
    }

    @NotNull
    public final Object U(@NotNull StartRechargingNotification notification) {
        IDActivity b10;
        int i10;
        Intrinsics.checkNotNullParameter(notification, "notification");
        PushType pushType = PushType.START_RECHARGING;
        if (H(pushType)) {
            Result.a aVar = Result.f60901b;
            return Result.d(f.a(new Throwable("Too frequently")));
        }
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 == null || (b10 = d10.get()) == null) {
            b10 = u.f51776a.b();
        }
        int x10 = x(pushType);
        uf.f fVar = uf.f.f68421a;
        if (z()) {
            i10 = R$layout.remote_views_notification_start_recharging_compact_fold;
        } else {
            i10 = R$layout.remote_views_notification_start_recharging_fold;
        }
        RemoteViews i11 = fVar.i(i10, notification);
        RemoteViews i12 = fVar.i(R$layout.remote_views_notification_start_recharging_unfold, notification);
        int q10 = q(pushType);
        Intent intent = new Intent(b10, LocalNotificationNavigatorActivity.class);
        intent.putExtra("data", l.d(new NotificationData(8, l.d(notification))));
        Unit unit = Unit.f60915a;
        Object R = R(this, "com.startshorts.androidplayer.short_tv_push", x10, i11, i12, PendingIntent.getActivity(b10, q10, intent, 201326592), null, false, false, 224, null);
        if (Result.j(R)) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("push_name", "start_charging");
            bundle.putString("title", notification.getTitle());
            bundle.putString("content", notification.getContent());
            EventManager.s0(eventManager, "push_send", bundle, 0L, 4, null);
        }
        return R;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0111  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object V(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.notification.SubsBonusNotification r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<java.lang.String>> r14) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.util.PushUtil.V(com.startshorts.androidplayer.bean.notification.SubsBonusNotification, rs.c):java.lang.Object");
    }

    public final void W(int i10) {
        f42905k = i10;
    }

    @NotNull
    public final r X() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "updateNotificationCount", false, new PushUtil$updateNotificationCount$1(null), 2, null);
    }

    public final void c(int i10) {
        uf.a.f68420a.d();
        NotificationManager k10 = k();
        if (k10 != null) {
            k10.cancel(i10);
        }
    }

    public final void d() {
        e(1002);
    }

    public final void e(int i10) {
        uf.a.f68420a.d();
        NotificationManager k10 = k();
        if (k10 != null) {
            k10.cancel(i10);
        }
    }

    public final void f(@NotNull PushType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        e(x(type));
    }

    public final int r() {
        return f42905k + 40003;
    }

    public final int s() {
        return f42905k + 40001;
    }

    public final int t() {
        return f42905k + 40002;
    }

    public final int v() {
        return f42905k;
    }
}
