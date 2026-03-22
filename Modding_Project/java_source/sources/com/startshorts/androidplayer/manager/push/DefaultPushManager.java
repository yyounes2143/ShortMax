package com.startshorts.androidplayer.manager.push;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.PeriodicWorkRequest;
import com.startshorts.androidplayer.bean.notification.ShortPlayNotification;
import com.startshorts.androidplayer.bean.push.PushTime;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.push.DefaultPushManager;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.manager.push.util.PushUtil;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.u;
import gt.q0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.d;
import rs.c;
import tf.e;
import tf.f;
import tf.g;
import tf.h;
/* compiled from: DefaultPushManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDefaultPushManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultPushManager.kt\ncom/startshorts/androidplayer/manager/push/DefaultPushManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,525:1\n1863#2,2:526\n*S KotlinDebug\n*F\n+ 1 DefaultPushManager.kt\ncom/startshorts/androidplayer/manager/push/DefaultPushManager\n*L\n503#1:526,2\n*E\n"})
/* loaded from: classes6.dex */
public final class DefaultPushManager implements rf.b {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f42760j = new a(null);

    /* renamed from: k  reason: collision with root package name */
    private static final long f42761k = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final String f42762l = DeviceUtil.f48146a.B() + ".fixedCheckPush";

    /* renamed from: a  reason: collision with root package name */
    private boolean f42763a;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private PendingIntent f42765c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private r f42766d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f42767e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f42769g;

    /* renamed from: h  reason: collision with root package name */
    private long f42770h;

    /* renamed from: i  reason: collision with root package name */
    private long f42771i;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final qt.a f42764b = d.b(false, 1, null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final DefaultPushManager$mBroadcastReceiver$1 f42768f = new BroadcastReceiver() { // from class: com.startshorts.androidplayer.manager.push.DefaultPushManager$mBroadcastReceiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z10;
            boolean z11;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(intent, "intent");
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onReceive -> mStarted(");
            z10 = DefaultPushManager.this.f42763a;
            sb2.append(z10);
            sb2.append(") action(");
            sb2.append(intent.getAction());
            sb2.append(')');
            logger.h("DefaultPushManager", sb2.toString());
            z11 = DefaultPushManager.this.f42763a;
            if (z11) {
                DefaultPushManager.this.E(intent.getAction());
            }
        }
    };

    /* compiled from: DefaultPushManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DefaultPushManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PushType.values().length];
            try {
                iArr[PushType.CUSTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PushType.CHECK_IN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PushType.SUBS_BONUS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PushType.START_RECHARGING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PushType.MISS_CHECK_IN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PushType.BONUS_WILL_EXPIRED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PushType.NEW_SHORTS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PushType.RECOMMEND_SHORTS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        if (this.f42765c != null) {
            Logger.f41511a.h("DefaultPushManager", "cancel FixedCheckPushIntent");
        }
        this.f42765c = null;
        r rVar = this.f42766d;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("DefaultPushManager", "cancel FixedCheckPushJob");
        }
        this.f42766d = null;
    }

    private final Object B(c<? super Unit> cVar) {
        String str;
        sf.b bVar = null;
        String str2 = null;
        for (sf.b bVar2 : D()) {
            PushTime a10 = bVar2.a();
            if (a10 != null) {
                if (bVar2.c() == PushType.CUSTOM) {
                    str = bVar2.getId();
                } else {
                    str = bVar2.c().name() + '_' + a10.getBeginTime() + '_' + a10.getEndTime();
                }
                int n12 = ud.b.f68412a.n1(str);
                if (n12 < a10.getMaxCount()) {
                    Logger.f41511a.h("DefaultPushManager", bVar2.c() + " pushShowedCount(" + n12 + ") maxCount(" + a10.getMaxCount() + ')');
                    if (bVar == null || bVar2.priority().getValue() < bVar.priority().getValue()) {
                        bVar = bVar2;
                        str2 = str;
                    }
                }
            }
        }
        if (bVar != null && str2 != null && str2.length() != 0) {
            if (bVar.c() != PushType.CUSTOM) {
                long L = DeviceUtil.f48146a.L();
                if (L - this.f42771i < f42761k) {
                    Logger.f41511a.e("DefaultPushManager", "checkPushInternal too frequently -> currentTime(" + L + ") lastPushTime(" + this.f42771i + ')');
                    this.f42769g = false;
                    return Unit.f60915a;
                }
            }
            Object C = C(str2, bVar, cVar);
            if (C == kotlin.coroutines.intrinsics.a.f()) {
                return C;
            }
            return Unit.f60915a;
        }
        Logger.f41511a.e("DefaultPushManager", "checkPushInternal -> no meet condition task find");
        P();
        this.f42769g = false;
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object C(java.lang.String r22, sf.b r23, rs.c<? super java.lang.Boolean> r24) {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.DefaultPushManager.C(java.lang.String, sf.b, rs.c):java.lang.Object");
    }

    private final List<sf.b> D() {
        ArrayList arrayList = new ArrayList();
        List<tf.c> o10 = PushRepo.f44374a.o();
        if (o10 != null) {
            arrayList.addAll(o10);
        }
        arrayList.add(new tf.b());
        arrayList.add(new h());
        arrayList.add(new g());
        arrayList.add(new tf.d());
        arrayList.add(new tf.a());
        arrayList.add(new e());
        arrayList.add(new f());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final r E(String str) {
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        return CoroutineUtil.l(coroutineUtil, "handleIntent(" + str + ')', false, new DefaultPushManager$handleIntent$1(str, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean F() {
        if (!this.f42763a) {
            Logger.f41511a.e("DefaultPushManager", "handleIntent failed -> mStarted(false)");
            return false;
        } else if (this.f42769g) {
            Logger.f41511a.e("DefaultPushManager", "handleIntent failed -> mPushChecking(true)");
            return false;
        } else if (!PushUtil.f42895a.F()) {
            Logger.f41511a.e("DefaultPushManager", "handleIntent failed -> notificationEnabled(false)");
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005a A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:12:0x0028, B:19:0x0041, B:26:0x0056, B:28:0x005a, B:29:0x006c, B:31:0x0070, B:32:0x0082, B:22:0x0048), top: B:37:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006c A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:12:0x0028, B:19:0x0041, B:26:0x0056, B:28:0x005a, B:29:0x006c, B:31:0x0070, B:32:0x0082, B:22:0x0048), top: B:37:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object G(rs.c<? super kotlin.Result<? extends java.lang.Object>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.manager.push.DefaultPushManager$pushBonusWillExpiredNotification$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushBonusWillExpiredNotification$1 r0 = (com.startshorts.androidplayer.manager.push.DefaultPushManager$pushBonusWillExpiredNotification$1) r0
            int r1 = r0.f42788k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42788k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushBonusWillExpiredNotification$1 r0 = new com.startshorts.androidplayer.manager.push.DefaultPushManager$pushBonusWillExpiredNotification$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f42786i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42788k
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L45
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            kotlin.f.b(r6)     // Catch: java.lang.Exception -> L33
            kotlin.Result r6 = (kotlin.Result) r6     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = r6.n()     // Catch: java.lang.Exception -> L33
            goto La3
        L33:
            r6 = move-exception
            goto L90
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3d:
            java.lang.Object r2 = r0.f42785h
            com.startshorts.androidplayer.manager.push.DefaultPushManager r2 = (com.startshorts.androidplayer.manager.push.DefaultPushManager) r2
            kotlin.f.b(r6)     // Catch: java.lang.Exception -> L33
            goto L56
        L45:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.push.PushRepo r6 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L33
            r0.f42785h = r5     // Catch: java.lang.Exception -> L33
            r0.f42788k = r4     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = r6.t(r0)     // Catch: java.lang.Exception -> L33
            if (r6 != r1) goto L55
            return r1
        L55:
            r2 = r5
        L56:
            com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification r6 = (com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification) r6     // Catch: java.lang.Exception -> L33
            if (r6 != 0) goto L6c
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L33
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L33
            java.lang.String r0 = "notification is null"
            r6.<init>(r0)     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L33
            goto La3
        L6c:
            boolean r2 = r2.f42763a     // Catch: java.lang.Exception -> L33
            if (r2 != 0) goto L82
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L33
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L33
            java.lang.String r0 = "not start yet"
            r6.<init>(r0)     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L33
            goto La3
        L82:
            com.startshorts.androidplayer.manager.push.util.PushUtil r2 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L33
            r4 = 0
            r0.f42785h = r4     // Catch: java.lang.Exception -> L33
            r0.f42788k = r3     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = r2.J(r6, r0)     // Catch: java.lang.Exception -> L33
            if (r6 != r1) goto La3
            return r1
        L90:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r6 = r6.getMessage()
            r0.<init>(r6)
            java.lang.Object r6 = kotlin.f.a(r0)
            java.lang.Object r6 = kotlin.Result.d(r6)
        La3:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.DefaultPushManager.G(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object H(rs.c<? super kotlin.Result<? extends java.lang.Object>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.manager.push.DefaultPushManager$pushCheckInNotification$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushCheckInNotification$1 r0 = (com.startshorts.androidplayer.manager.push.DefaultPushManager$pushCheckInNotification$1) r0
            int r1 = r0.f42791j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42791j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushCheckInNotification$1 r0 = new com.startshorts.androidplayer.manager.push.DefaultPushManager$pushCheckInNotification$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f42789h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42791j
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            kotlin.f.b(r5)     // Catch: java.lang.Exception -> L2f
            kotlin.Result r5 = (kotlin.Result) r5     // Catch: java.lang.Exception -> L2f
            java.lang.Object r5 = r5.n()     // Catch: java.lang.Exception -> L2f
            goto L60
        L2f:
            r5 = move-exception
            goto L4d
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L39:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.push.PushRepo r5 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L2f
            java.lang.String r5 = r5.u()     // Catch: java.lang.Exception -> L2f
            com.startshorts.androidplayer.manager.push.util.PushUtil r2 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L2f
            r0.f42791j = r3     // Catch: java.lang.Exception -> L2f
            java.lang.Object r5 = r2.K(r5, r0)     // Catch: java.lang.Exception -> L2f
            if (r5 != r1) goto L60
            return r1
        L4d:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r5 = r5.getMessage()
            r0.<init>(r5)
            java.lang.Object r5 = kotlin.f.a(r0)
            java.lang.Object r5 = kotlin.Result.d(r5)
        L60:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.DefaultPushManager.H(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f A[Catch: Exception -> 0x002f, TryCatch #0 {Exception -> 0x002f, blocks: (B:12:0x002b, B:23:0x004b, B:25:0x004f, B:26:0x0061, B:28:0x0065, B:29:0x0077, B:31:0x0081, B:33:0x0087, B:34:0x009e, B:19:0x003d), top: B:38:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0061 A[Catch: Exception -> 0x002f, TryCatch #0 {Exception -> 0x002f, blocks: (B:12:0x002b, B:23:0x004b, B:25:0x004f, B:26:0x0061, B:28:0x0065, B:29:0x0077, B:31:0x0081, B:33:0x0087, B:34:0x009e, B:19:0x003d), top: B:38:0x0023 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object I(java.lang.String r6, rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r5 = this;
            java.lang.String r0 = "CustomNotification:img download failed,bitmap is null"
            boolean r1 = r7 instanceof com.startshorts.androidplayer.manager.push.DefaultPushManager$pushCustomNotification$1
            if (r1 == 0) goto L15
            r1 = r7
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushCustomNotification$1 r1 = (com.startshorts.androidplayer.manager.push.DefaultPushManager$pushCustomNotification$1) r1
            int r2 = r1.f42795k
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f42795k = r2
            goto L1a
        L15:
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushCustomNotification$1 r1 = new com.startshorts.androidplayer.manager.push.DefaultPushManager$pushCustomNotification$1
            r1.<init>(r5, r7)
        L1a:
            java.lang.Object r7 = r1.f42793i
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r1.f42795k
            r4 = 1
            if (r3 == 0) goto L3a
            if (r3 != r4) goto L32
            java.lang.Object r6 = r1.f42792h
            com.startshorts.androidplayer.manager.push.DefaultPushManager r6 = (com.startshorts.androidplayer.manager.push.DefaultPushManager) r6
            kotlin.f.b(r7)     // Catch: java.lang.Exception -> L2f
            goto L4b
        L2f:
            r6 = move-exception
            goto La5
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.push.PushRepo r7 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L2f
            r1.f42792h = r5     // Catch: java.lang.Exception -> L2f
            r1.f42795k = r4     // Catch: java.lang.Exception -> L2f
            java.lang.Object r7 = r7.v(r6, r1)     // Catch: java.lang.Exception -> L2f
            if (r7 != r2) goto L4a
            return r2
        L4a:
            r6 = r5
        L4b:
            com.startshorts.androidplayer.bean.notification.CustomNotification r7 = (com.startshorts.androidplayer.bean.notification.CustomNotification) r7     // Catch: java.lang.Exception -> L2f
            if (r7 != 0) goto L61
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            java.lang.String r7 = "notification is null"
            r6.<init>(r7)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lb8
        L61:
            boolean r6 = r6.f42763a     // Catch: java.lang.Exception -> L2f
            if (r6 != 0) goto L77
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            java.lang.String r7 = "not start yet"
            r6.<init>(r7)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lb8
        L77:
            com.startshorts.androidplayer.bean.push.CustomPush r6 = r7.getPush()     // Catch: java.lang.Exception -> L2f
            int r6 = r6.getShortId()     // Catch: java.lang.Exception -> L2f
            if (r6 <= 0) goto L9e
            android.graphics.Bitmap r6 = r7.getCover()     // Catch: java.lang.Exception -> L2f
            if (r6 != 0) goto L9e
            com.startshorts.androidplayer.log.Logger r6 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Exception -> L2f
            java.lang.String r7 = "PushUtil"
            r6.e(r7, r0)     // Catch: java.lang.Exception -> L2f
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            r6.<init>(r0)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lb8
        L9e:
            com.startshorts.androidplayer.manager.push.util.PushUtil r6 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = r6.M(r7)     // Catch: java.lang.Exception -> L2f
            goto Lb8
        La5:
            kotlin.Result$a r7 = kotlin.Result.f60901b
            java.lang.Throwable r7 = new java.lang.Throwable
            java.lang.String r6 = r6.getMessage()
            r7.<init>(r6)
            java.lang.Object r6 = kotlin.f.a(r7)
            java.lang.Object r6 = kotlin.Result.d(r6)
        Lb8:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.DefaultPushManager.I(java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005a A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:12:0x0028, B:19:0x0041, B:26:0x0056, B:28:0x005a, B:29:0x006c, B:31:0x0070, B:32:0x0082, B:22:0x0048), top: B:37:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006c A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:12:0x0028, B:19:0x0041, B:26:0x0056, B:28:0x005a, B:29:0x006c, B:31:0x0070, B:32:0x0082, B:22:0x0048), top: B:37:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object J(rs.c<? super kotlin.Result<? extends java.lang.Object>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.manager.push.DefaultPushManager$pushMissCheckInNotification$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushMissCheckInNotification$1 r0 = (com.startshorts.androidplayer.manager.push.DefaultPushManager$pushMissCheckInNotification$1) r0
            int r1 = r0.f42799k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42799k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushMissCheckInNotification$1 r0 = new com.startshorts.androidplayer.manager.push.DefaultPushManager$pushMissCheckInNotification$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f42797i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42799k
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L45
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            kotlin.f.b(r6)     // Catch: java.lang.Exception -> L33
            kotlin.Result r6 = (kotlin.Result) r6     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = r6.n()     // Catch: java.lang.Exception -> L33
            goto La3
        L33:
            r6 = move-exception
            goto L90
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3d:
            java.lang.Object r2 = r0.f42796h
            com.startshorts.androidplayer.manager.push.DefaultPushManager r2 = (com.startshorts.androidplayer.manager.push.DefaultPushManager) r2
            kotlin.f.b(r6)     // Catch: java.lang.Exception -> L33
            goto L56
        L45:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.push.PushRepo r6 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L33
            r0.f42796h = r5     // Catch: java.lang.Exception -> L33
            r0.f42799k = r4     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = r6.y(r0)     // Catch: java.lang.Exception -> L33
            if (r6 != r1) goto L55
            return r1
        L55:
            r2 = r5
        L56:
            com.startshorts.androidplayer.bean.notification.MissCheckInNotification r6 = (com.startshorts.androidplayer.bean.notification.MissCheckInNotification) r6     // Catch: java.lang.Exception -> L33
            if (r6 != 0) goto L6c
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L33
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L33
            java.lang.String r0 = "notification is null"
            r6.<init>(r0)     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L33
            goto La3
        L6c:
            boolean r2 = r2.f42763a     // Catch: java.lang.Exception -> L33
            if (r2 != 0) goto L82
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L33
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L33
            java.lang.String r0 = "not start yet"
            r6.<init>(r0)     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L33
            goto La3
        L82:
            com.startshorts.androidplayer.manager.push.util.PushUtil r2 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L33
            r4 = 0
            r0.f42796h = r4     // Catch: java.lang.Exception -> L33
            r0.f42799k = r3     // Catch: java.lang.Exception -> L33
            java.lang.Object r6 = r2.N(r6, r0)     // Catch: java.lang.Exception -> L33
            if (r6 != r1) goto La3
            return r1
        L90:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r6 = r6.getMessage()
            r0.<init>(r6)
            java.lang.Object r6 = kotlin.f.a(r0)
            java.lang.Object r6 = kotlin.Result.d(r6)
        La3:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.DefaultPushManager.J(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e A[Catch: Exception -> 0x002f, TryCatch #0 {Exception -> 0x002f, blocks: (B:12:0x002b, B:23:0x004a, B:25:0x004e, B:26:0x0060, B:28:0x0064, B:29:0x0076, B:31:0x007c, B:32:0x0093, B:19:0x003c), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060 A[Catch: Exception -> 0x002f, TryCatch #0 {Exception -> 0x002f, blocks: (B:12:0x002b, B:23:0x004a, B:25:0x004e, B:26:0x0060, B:28:0x0064, B:29:0x0076, B:31:0x007c, B:32:0x0093, B:19:0x003c), top: B:36:0x0023 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object K(rs.c<? super kotlin.Result<? extends java.lang.Object>> r6) {
        /*
            r5 = this;
            java.lang.String r0 = "NewShortsNotification:img download failed,bitmap is null"
            boolean r1 = r6 instanceof com.startshorts.androidplayer.manager.push.DefaultPushManager$pushNewShortsNotification$1
            if (r1 == 0) goto L15
            r1 = r6
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushNewShortsNotification$1 r1 = (com.startshorts.androidplayer.manager.push.DefaultPushManager$pushNewShortsNotification$1) r1
            int r2 = r1.f42803k
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f42803k = r2
            goto L1a
        L15:
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushNewShortsNotification$1 r1 = new com.startshorts.androidplayer.manager.push.DefaultPushManager$pushNewShortsNotification$1
            r1.<init>(r5, r6)
        L1a:
            java.lang.Object r6 = r1.f42801i
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r1.f42803k
            r4 = 1
            if (r3 == 0) goto L39
            if (r3 != r4) goto L31
            java.lang.Object r1 = r1.f42800h
            com.startshorts.androidplayer.manager.push.DefaultPushManager r1 = (com.startshorts.androidplayer.manager.push.DefaultPushManager) r1
            kotlin.f.b(r6)     // Catch: java.lang.Exception -> L2f
            goto L4a
        L2f:
            r6 = move-exception
            goto L9a
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L39:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.push.PushRepo r6 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L2f
            r1.f42800h = r5     // Catch: java.lang.Exception -> L2f
            r1.f42803k = r4     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = r6.x(r1)     // Catch: java.lang.Exception -> L2f
            if (r6 != r2) goto L49
            return r2
        L49:
            r1 = r5
        L4a:
            com.startshorts.androidplayer.bean.notification.NewShortsNotification r6 = (com.startshorts.androidplayer.bean.notification.NewShortsNotification) r6     // Catch: java.lang.Exception -> L2f
            if (r6 != 0) goto L60
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            java.lang.String r0 = "notification is null"
            r6.<init>(r0)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lad
        L60:
            boolean r1 = r1.f42763a     // Catch: java.lang.Exception -> L2f
            if (r1 != 0) goto L76
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            java.lang.String r0 = "not start yet"
            r6.<init>(r0)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lad
        L76:
            android.graphics.Bitmap r1 = r6.getCover()     // Catch: java.lang.Exception -> L2f
            if (r1 != 0) goto L93
            com.startshorts.androidplayer.log.Logger r6 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Exception -> L2f
            java.lang.String r1 = "PushUtil"
            r6.e(r1, r0)     // Catch: java.lang.Exception -> L2f
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            r6.<init>(r0)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lad
        L93:
            com.startshorts.androidplayer.manager.push.util.PushUtil r0 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = r0.O(r6)     // Catch: java.lang.Exception -> L2f
            goto Lad
        L9a:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r6 = r6.getMessage()
            r0.<init>(r6)
            java.lang.Object r6 = kotlin.f.a(r0)
            java.lang.Object r6 = kotlin.Result.d(r6)
        Lad:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.DefaultPushManager.K(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f A[Catch: Exception -> 0x002f, TryCatch #0 {Exception -> 0x002f, blocks: (B:12:0x002b, B:23:0x004b, B:25:0x004f, B:26:0x0061, B:28:0x0065, B:29:0x0077, B:31:0x007d, B:32:0x0094, B:34:0x00a0, B:36:0x00a6, B:19:0x003d), top: B:40:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0061 A[Catch: Exception -> 0x002f, TryCatch #0 {Exception -> 0x002f, blocks: (B:12:0x002b, B:23:0x004b, B:25:0x004f, B:26:0x0061, B:28:0x0065, B:29:0x0077, B:31:0x007d, B:32:0x0094, B:34:0x00a0, B:36:0x00a6, B:19:0x003d), top: B:40:0x0023 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object L(rs.c<? super kotlin.Result<? extends java.lang.Object>> r6) {
        /*
            r5 = this;
            java.lang.String r0 = "RecommendShorts:img download failed,bitmap is null"
            boolean r1 = r6 instanceof com.startshorts.androidplayer.manager.push.DefaultPushManager$pushRecommendShortsNotification$1
            if (r1 == 0) goto L15
            r1 = r6
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushRecommendShortsNotification$1 r1 = (com.startshorts.androidplayer.manager.push.DefaultPushManager$pushRecommendShortsNotification$1) r1
            int r2 = r1.f42807k
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f42807k = r2
            goto L1a
        L15:
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushRecommendShortsNotification$1 r1 = new com.startshorts.androidplayer.manager.push.DefaultPushManager$pushRecommendShortsNotification$1
            r1.<init>(r5, r6)
        L1a:
            java.lang.Object r6 = r1.f42805i
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r1.f42807k
            r4 = 1
            if (r3 == 0) goto L3a
            if (r3 != r4) goto L32
            java.lang.Object r1 = r1.f42804h
            com.startshorts.androidplayer.manager.push.DefaultPushManager r1 = (com.startshorts.androidplayer.manager.push.DefaultPushManager) r1
            kotlin.f.b(r6)     // Catch: java.lang.Exception -> L2f
            goto L4b
        L2f:
            r6 = move-exception
            goto Lbb
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3a:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.push.PushRepo r6 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L2f
            r1.f42804h = r5     // Catch: java.lang.Exception -> L2f
            r1.f42807k = r4     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = r6.z(r1)     // Catch: java.lang.Exception -> L2f
            if (r6 != r2) goto L4a
            return r2
        L4a:
            r1 = r5
        L4b:
            com.startshorts.androidplayer.bean.notification.RecommendShortsNotification r6 = (com.startshorts.androidplayer.bean.notification.RecommendShortsNotification) r6     // Catch: java.lang.Exception -> L2f
            if (r6 != 0) goto L61
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            java.lang.String r0 = "notification is null"
            r6.<init>(r0)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lce
        L61:
            boolean r1 = r1.f42763a     // Catch: java.lang.Exception -> L2f
            if (r1 != 0) goto L77
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            java.lang.String r0 = "not start yet"
            r6.<init>(r0)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lce
        L77:
            android.graphics.Bitmap r1 = r6.getCover()     // Catch: java.lang.Exception -> L2f
            if (r1 != 0) goto L94
            com.startshorts.androidplayer.log.Logger r6 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Exception -> L2f
            java.lang.String r1 = "PushUtil"
            r6.e(r1, r0)     // Catch: java.lang.Exception -> L2f
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            r6.<init>(r0)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lce
        L94:
            com.startshorts.androidplayer.manager.push.util.PushUtil r0 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L2f
            java.lang.Object r0 = r0.S(r6)     // Catch: java.lang.Exception -> L2f
            boolean r1 = kotlin.Result.j(r0)     // Catch: java.lang.Exception -> L2f
            if (r1 == 0) goto Lba
            boolean r6 = r6.getFromLocal()     // Catch: java.lang.Exception -> L2f
            if (r6 == 0) goto Lba
            com.startshorts.androidplayer.utils.TimeUtil r6 = com.startshorts.androidplayer.utils.TimeUtil.f48175a     // Catch: java.lang.Exception -> L2f
            java.util.Date r1 = new java.util.Date     // Catch: java.lang.Exception -> L2f
            r1.<init>()     // Catch: java.lang.Exception -> L2f
            java.util.Date r1 = jk.f.a(r1)     // Catch: java.lang.Exception -> L2f
            java.lang.String r6 = r6.f(r1)     // Catch: java.lang.Exception -> L2f
            ud.b r1 = ud.b.f68412a     // Catch: java.lang.Exception -> L2f
            r1.g4(r6, r4)     // Catch: java.lang.Exception -> L2f
        Lba:
            return r0
        Lbb:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r6 = r6.getMessage()
            r0.<init>(r6)
            java.lang.Object r6 = kotlin.f.a(r0)
            java.lang.Object r6 = kotlin.Result.d(r6)
        Lce:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.DefaultPushManager.L(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e A[Catch: Exception -> 0x002f, TryCatch #0 {Exception -> 0x002f, blocks: (B:12:0x002b, B:23:0x004a, B:25:0x004e, B:26:0x0060, B:28:0x0064, B:29:0x0076, B:31:0x007c, B:32:0x0093, B:19:0x003c), top: B:36:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060 A[Catch: Exception -> 0x002f, TryCatch #0 {Exception -> 0x002f, blocks: (B:12:0x002b, B:23:0x004a, B:25:0x004e, B:26:0x0060, B:28:0x0064, B:29:0x0076, B:31:0x007c, B:32:0x0093, B:19:0x003c), top: B:36:0x0023 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object M(rs.c<? super kotlin.Result<? extends java.lang.Object>> r6) {
        /*
            r5 = this;
            java.lang.String r0 = "StartRecharging:img download failed,bitmap is null"
            boolean r1 = r6 instanceof com.startshorts.androidplayer.manager.push.DefaultPushManager$pushStartRechargingNotification$1
            if (r1 == 0) goto L15
            r1 = r6
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushStartRechargingNotification$1 r1 = (com.startshorts.androidplayer.manager.push.DefaultPushManager$pushStartRechargingNotification$1) r1
            int r2 = r1.f42814k
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f42814k = r2
            goto L1a
        L15:
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushStartRechargingNotification$1 r1 = new com.startshorts.androidplayer.manager.push.DefaultPushManager$pushStartRechargingNotification$1
            r1.<init>(r5, r6)
        L1a:
            java.lang.Object r6 = r1.f42812i
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r1.f42814k
            r4 = 1
            if (r3 == 0) goto L39
            if (r3 != r4) goto L31
            java.lang.Object r1 = r1.f42811h
            com.startshorts.androidplayer.manager.push.DefaultPushManager r1 = (com.startshorts.androidplayer.manager.push.DefaultPushManager) r1
            kotlin.f.b(r6)     // Catch: java.lang.Exception -> L2f
            goto L4a
        L2f:
            r6 = move-exception
            goto L9a
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L39:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.push.PushRepo r6 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L2f
            r1.f42811h = r5     // Catch: java.lang.Exception -> L2f
            r1.f42814k = r4     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = r6.A(r1)     // Catch: java.lang.Exception -> L2f
            if (r6 != r2) goto L49
            return r2
        L49:
            r1 = r5
        L4a:
            com.startshorts.androidplayer.bean.notification.StartRechargingNotification r6 = (com.startshorts.androidplayer.bean.notification.StartRechargingNotification) r6     // Catch: java.lang.Exception -> L2f
            if (r6 != 0) goto L60
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            java.lang.String r0 = "notification is null"
            r6.<init>(r0)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lad
        L60:
            boolean r1 = r1.f42763a     // Catch: java.lang.Exception -> L2f
            if (r1 != 0) goto L76
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            java.lang.String r0 = "not start yet"
            r6.<init>(r0)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lad
        L76:
            android.graphics.Bitmap r1 = r6.getCover()     // Catch: java.lang.Exception -> L2f
            if (r1 != 0) goto L93
            com.startshorts.androidplayer.log.Logger r6 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Exception -> L2f
            java.lang.String r1 = "PushUtil"
            r6.e(r1, r0)     // Catch: java.lang.Exception -> L2f
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L2f
            java.lang.Throwable r6 = new java.lang.Throwable     // Catch: java.lang.Exception -> L2f
            r6.<init>(r0)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.f.a(r6)     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2f
            goto Lad
        L93:
            com.startshorts.androidplayer.manager.push.util.PushUtil r0 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L2f
            java.lang.Object r6 = r0.U(r6)     // Catch: java.lang.Exception -> L2f
            goto Lad
        L9a:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r6 = r6.getMessage()
            r0.<init>(r6)
            java.lang.Object r6 = kotlin.f.a(r0)
            java.lang.Object r6 = kotlin.Result.d(r6)
        Lad:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.DefaultPushManager.M(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005b A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:12:0x0028, B:19:0x0042, B:26:0x0057, B:28:0x005b, B:29:0x006d, B:31:0x0074, B:34:0x007b, B:36:0x007f, B:37:0x0091, B:40:0x009e, B:22:0x0049), top: B:44:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006d A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:12:0x0028, B:19:0x0042, B:26:0x0057, B:28:0x005b, B:29:0x006d, B:31:0x0074, B:34:0x007b, B:36:0x007f, B:37:0x0091, B:40:0x009e, B:22:0x0049), top: B:44:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object N(rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.manager.push.DefaultPushManager$pushSubsBonusNotification$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushSubsBonusNotification$1 r0 = (com.startshorts.androidplayer.manager.push.DefaultPushManager$pushSubsBonusNotification$1) r0
            int r1 = r0.f42818k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42818k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.DefaultPushManager$pushSubsBonusNotification$1 r0 = new com.startshorts.androidplayer.manager.push.DefaultPushManager$pushSubsBonusNotification$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f42816i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42818k
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L46
            if (r2 == r4) goto L3e
            if (r2 != r3) goto L36
            kotlin.f.b(r7)     // Catch: java.lang.Exception -> L33
            kotlin.Result r7 = (kotlin.Result) r7     // Catch: java.lang.Exception -> L33
            java.lang.Object r7 = r7.n()     // Catch: java.lang.Exception -> L33
            goto Lbf
        L33:
            r7 = move-exception
            goto Lac
        L36:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L3e:
            java.lang.Object r2 = r0.f42815h
            com.startshorts.androidplayer.manager.push.DefaultPushManager r2 = (com.startshorts.androidplayer.manager.push.DefaultPushManager) r2
            kotlin.f.b(r7)     // Catch: java.lang.Exception -> L33
            goto L57
        L46:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.push.PushRepo r7 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L33
            r0.f42815h = r6     // Catch: java.lang.Exception -> L33
            r0.f42818k = r4     // Catch: java.lang.Exception -> L33
            java.lang.Object r7 = r7.B(r0)     // Catch: java.lang.Exception -> L33
            if (r7 != r1) goto L56
            return r1
        L56:
            r2 = r6
        L57:
            com.startshorts.androidplayer.bean.notification.SubsBonusNotification r7 = (com.startshorts.androidplayer.bean.notification.SubsBonusNotification) r7     // Catch: java.lang.Exception -> L33
            if (r7 != 0) goto L6d
            kotlin.Result$a r7 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L33
            java.lang.Throwable r7 = new java.lang.Throwable     // Catch: java.lang.Exception -> L33
            java.lang.String r0 = "notification is null"
            r7.<init>(r0)     // Catch: java.lang.Exception -> L33
            java.lang.Object r7 = kotlin.f.a(r7)     // Catch: java.lang.Exception -> L33
            java.lang.Object r7 = kotlin.Result.d(r7)     // Catch: java.lang.Exception -> L33
            goto Lbf
        L6d:
            java.lang.String r4 = r7.getTitle()     // Catch: java.lang.Exception -> L33
            r5 = 0
            if (r4 == 0) goto L9e
            int r4 = r4.length()     // Catch: java.lang.Exception -> L33
            if (r4 != 0) goto L7b
            goto L9e
        L7b:
            boolean r2 = r2.f42763a     // Catch: java.lang.Exception -> L33
            if (r2 != 0) goto L91
            kotlin.Result$a r7 = kotlin.Result.f60901b     // Catch: java.lang.Exception -> L33
            java.lang.Throwable r7 = new java.lang.Throwable     // Catch: java.lang.Exception -> L33
            java.lang.String r0 = "not start yet"
            r7.<init>(r0)     // Catch: java.lang.Exception -> L33
            java.lang.Object r7 = kotlin.f.a(r7)     // Catch: java.lang.Exception -> L33
            java.lang.Object r7 = kotlin.Result.d(r7)     // Catch: java.lang.Exception -> L33
            goto Lbf
        L91:
            com.startshorts.androidplayer.manager.push.util.PushUtil r2 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L33
            r0.f42815h = r5     // Catch: java.lang.Exception -> L33
            r0.f42818k = r3     // Catch: java.lang.Exception -> L33
            java.lang.Object r7 = r2.V(r7, r0)     // Catch: java.lang.Exception -> L33
            if (r7 != r1) goto Lbf
            return r1
        L9e:
            com.startshorts.androidplayer.log.Logger r7 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Exception -> L33
            java.lang.String r0 = "DefaultPushManager"
            java.lang.String r1 = "ignore pushSubsBonusNotification"
            r7.h(r0, r1)     // Catch: java.lang.Exception -> L33
            java.lang.Object r7 = kotlin.Result.d(r5)     // Catch: java.lang.Exception -> L33
            goto Lbf
        Lac:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r7 = r7.getMessage()
            r0.<init>(r7)
            java.lang.Object r7 = kotlin.f.a(r0)
            java.lang.Object r7 = kotlin.Result.d(r7)
        Lbf:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.DefaultPushManager.N(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O() {
        if (!this.f42767e) {
            Logger.f41511a.h("DefaultPushManager", "registerBroadcastReceiver");
            this.f42767e = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(f42762l);
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.TIME_SET");
            try {
                if (!DeviceUtil.f48146a.X()) {
                    u.f51776a.b().registerReceiver(this.f42768f, intentFilter, 2);
                } else {
                    u.f51776a.b().registerReceiver(this.f42768f, intentFilter);
                }
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("DefaultPushManager", "registerBroadcastReceiver failed -> " + e10.getMessage());
                this.f42767e = false;
                Unit unit = Unit.f60915a;
            }
        }
    }

    private final void P() {
        Logger.f41511a.h("DefaultPushManager", "resetLastPushFailed");
        for (PushType pushType : CollectionsKt.t(PushType.NEW_SHORTS, PushType.SUBS_BONUS, PushType.START_RECHARGING, PushType.MISS_CHECK_IN, PushType.BONUS_WILL_EXPIRED)) {
            ud.a.f68411a.A0(pushType.name(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q() {
        A();
        Logger logger = Logger.f41511a;
        logger.h("DefaultPushManager", "startFixedCheckPushJob -> interval(" + PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS + "ms)");
        this.f42765c = null;
        this.f42766d = CoroutineUtil.f48072a.f(PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS, q0.a(), new Function0() { // from class: rf.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit R;
                R = DefaultPushManager.R(DefaultPushManager.this);
                return R;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(DefaultPushManager defaultPushManager) {
        defaultPushManager.E(f42762l);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object S(rs.c<? super kotlin.Unit> r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof com.startshorts.androidplayer.manager.push.DefaultPushManager$tryPushNotification$1
            if (r0 == 0) goto L13
            r0 = r11
            com.startshorts.androidplayer.manager.push.DefaultPushManager$tryPushNotification$1 r0 = (com.startshorts.androidplayer.manager.push.DefaultPushManager$tryPushNotification$1) r0
            int r1 = r0.f42830k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42830k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.DefaultPushManager$tryPushNotification$1 r0 = new com.startshorts.androidplayer.manager.push.DefaultPushManager$tryPushNotification$1
            r0.<init>(r10, r11)
        L18:
            java.lang.Object r11 = r0.f42828i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42830k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.f42827h
            com.startshorts.androidplayer.manager.push.DefaultPushManager r0 = (com.startshorts.androidplayer.manager.push.DefaultPushManager) r0
            kotlin.f.b(r11)
            goto L65
        L2d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L35:
            kotlin.f.b(r11)
            com.startshorts.androidplayer.utils.DeviceUtil r11 = com.startshorts.androidplayer.utils.DeviceUtil.f48146a
            long r4 = r11.L()
            long r6 = r10.f42770h
            long r6 = r4 - r6
            r8 = 2000(0x7d0, double:9.88E-321)
            int r11 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r11 >= 0) goto L55
            com.startshorts.androidplayer.log.Logger r11 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r0 = "DefaultPushManager"
            java.lang.String r1 = "tryPushNotification too frequently, less than 2s"
            r11.e(r0, r1)
            kotlin.Unit r11 = kotlin.Unit.f60915a
            return r11
        L55:
            r10.f42770h = r4
            r10.f42769g = r3
            r0.f42827h = r10
            r0.f42830k = r3
            java.lang.Object r11 = r10.B(r0)
            if (r11 != r1) goto L64
            return r1
        L64:
            r0 = r10
        L65:
            r11 = 0
            r0.f42769g = r11
            kotlin.Unit r11 = kotlin.Unit.f60915a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.DefaultPushManager.S(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T() {
        if (this.f42767e) {
            this.f42767e = false;
            Logger.f41511a.h("DefaultPushManager", "unregisterBroadcastReceiver");
            try {
                u.f51776a.b().unregisterReceiver(this.f42768f);
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("DefaultPushManager", "unregisterBroadcastReceiver failed -> " + e10.getMessage());
            }
        }
    }

    @Override // rf.b
    public void a() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "cancelRewardsNotification", false, new DefaultPushManager$cancelRewardsNotification$1(null), 2, null);
    }

    @Override // rf.b
    public void b(@NotNull ShortPlayNotification bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        CoroutineUtil.l(CoroutineUtil.f48072a, "pushShortVideoPlayStateNotification", false, new DefaultPushManager$pushShortVideoPlayStateNotification$1(bean, null), 2, null);
    }

    @Override // rf.b
    public void c() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "pushRewardsNotification", false, new DefaultPushManager$pushRewardsNotification$1(null), 2, null);
    }

    @Override // rf.b
    public void e() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "cancelShortVideoPlayStateNotification", false, new DefaultPushManager$cancelShortVideoPlayStateNotification$1(null), 2, null);
    }

    @Override // rf.b
    public void start() {
        if (!this.f42763a && !ud.a.f68411a.t()) {
            CoroutineUtil.l(CoroutineUtil.f48072a, "BackgroundPusher:start", false, new DefaultPushManager$start$1(this, null), 2, null);
        }
    }

    @Override // rf.b
    public void stop() {
        if (!this.f42763a) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "BackgroundPusher:stop", false, new DefaultPushManager$stop$1(this, null), 2, null);
    }

    @Override // rf.b
    public void d() {
    }
}
