package com.startshorts.androidplayer.manager.push;

import com.startshorts.androidplayer.bean.push.CustomPush;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.push.task.PushType;
import fk.z;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import ng.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: TestPushManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTestPushManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestPushManager.kt\ncom/startshorts/androidplayer/manager/push/TestPushManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,287:1\n1#2:288\n1863#3:289\n360#3,7:290\n1864#3:297\n*S KotlinDebug\n*F\n+ 1 TestPushManager.kt\ncom/startshorts/androidplayer/manager/push/TestPushManager\n*L\n273#1:289\n274#1:290,7\n273#1:297\n*E\n"})
/* loaded from: classes6.dex */
public final class TestPushManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final TestPushManager f42844a = new TestPushManager();

    /* renamed from: b  reason: collision with root package name */
    private static final int f42845b = g.a(44.0f);

    /* renamed from: c  reason: collision with root package name */
    private static final int f42846c = z.f51786a.p();

    /* renamed from: d  reason: collision with root package name */
    private static final int f42847d = g.a(56.0f);

    /* renamed from: e  reason: collision with root package name */
    private static final int f42848e = g.a(54.0f);

    /* renamed from: f  reason: collision with root package name */
    private static final int f42849f = g.a(72.0f);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final g0 f42850g = i.b();
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static List<CustomPush> f42851h = new ArrayList();

    /* compiled from: TestPushManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
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

    private TestPushManager() {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d8  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.manager.push.task.PushType r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.TestPushManager.a(com.startshorts.androidplayer.manager.push.task.PushType, java.lang.String, rs.c):java.lang.Object");
    }

    public final void b(@NotNull PushType type, @NotNull String id2) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(id2, "id");
        gt.g.d(f42850g, null, null, new TestPushManager$executePushTestTasks$1(type, id2, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.manager.push.TestPushManager$fetchCustomPush$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.manager.push.TestPushManager$fetchCustomPush$1 r0 = (com.startshorts.androidplayer.manager.push.TestPushManager$fetchCustomPush$1) r0
            int r1 = r0.f42861j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42861j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.TestPushManager$fetchCustomPush$1 r0 = new com.startshorts.androidplayer.manager.push.TestPushManager$fetchCustomPush$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f42859h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42861j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.n()
            goto L48
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.push.PushRemoteDS r8 = new com.startshorts.androidplayer.repo.push.PushRemoteDS
            r8.<init>()
            r0.f42861j = r3
            java.lang.Object r8 = r8.c(r0)
            if (r8 != r1) goto L48
            return r1
        L48:
            boolean r0 = kotlin.Result.j(r8)
            if (r0 == 0) goto Lb7
            boolean r0 = kotlin.Result.i(r8)
            r1 = 0
            if (r0 == 0) goto L56
            r8 = r1
        L56:
            com.startshorts.androidplayer.bean.push.CustomPushList r8 = (com.startshorts.androidplayer.bean.push.CustomPushList) r8
            if (r8 == 0) goto L5e
            java.util.List r1 = r8.getPushList()
        L5e:
            r8 = r1
            java.util.Collection r8 = (java.util.Collection) r8
            if (r8 == 0) goto Lb4
            boolean r8 = r8.isEmpty()
            if (r8 == 0) goto L6a
            goto Lb4
        L6a:
            java.util.List<com.startshorts.androidplayer.bean.push.CustomPush> r8 = com.startshorts.androidplayer.manager.push.TestPushManager.f42851h
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.Iterator r0 = r1.iterator()
        L72:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lb1
            java.lang.Object r1 = r0.next()
            com.startshorts.androidplayer.bean.push.CustomPush r1 = (com.startshorts.androidplayer.bean.push.CustomPush) r1
            java.util.Iterator r2 = r8.iterator()
            r3 = 0
        L83:
            boolean r4 = r2.hasNext()
            r5 = -1
            if (r4 == 0) goto La2
            java.lang.Object r4 = r2.next()
            com.startshorts.androidplayer.bean.push.CustomPush r4 = (com.startshorts.androidplayer.bean.push.CustomPush) r4
            java.lang.String r6 = r1.getId()
            java.lang.String r4 = r4.getId()
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r4)
            if (r4 == 0) goto L9f
            goto La3
        L9f:
            int r3 = r3 + 1
            goto L83
        La2:
            r3 = r5
        La3:
            if (r3 != r5) goto Lad
            boolean r1 = r8.add(r1)
            kotlin.coroutines.jvm.internal.a.a(r1)
            goto L72
        Lad:
            r8.set(r3, r1)
            goto L72
        Lb1:
            com.startshorts.androidplayer.manager.push.TestPushManager.f42851h = r8
            goto Lb7
        Lb4:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        Lb7:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.TestPushManager.c(rs.c):java.lang.Object");
    }

    @NotNull
    public final String d() {
        return (String) e.f62912a.i("checkInIcon", "");
    }

    public final void e(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Logger.f41511a.e("TestDefaultPushManager", str);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006e A[Catch: Exception -> 0x0032, TryCatch #0 {Exception -> 0x0032, blocks: (B:12:0x0028, B:19:0x0040, B:26:0x0055, B:28:0x006e, B:29:0x007b, B:22:0x0047), top: B:34:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0087 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.manager.push.TestPushManager$pushBonusWillExpiredNotification$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.manager.push.TestPushManager$pushBonusWillExpiredNotification$1 r0 = (com.startshorts.androidplayer.manager.push.TestPushManager$pushBonusWillExpiredNotification$1) r0
            int r1 = r0.f42865k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42865k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.TestPushManager$pushBonusWillExpiredNotification$1 r0 = new com.startshorts.androidplayer.manager.push.TestPushManager$pushBonusWillExpiredNotification$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f42863i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42865k
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L32
            kotlin.Result r8 = (kotlin.Result) r8     // Catch: java.lang.Exception -> L32
            java.lang.Object r8 = r8.n()     // Catch: java.lang.Exception -> L32
            goto L9b
        L32:
            r8 = move-exception
            goto L88
        L34:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3c:
            java.lang.Object r2 = r0.f42862h
            com.startshorts.androidplayer.manager.push.TestPushManager r2 = (com.startshorts.androidplayer.manager.push.TestPushManager) r2
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L32
            goto L55
        L44:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.push.PushRepo r8 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L32
            r0.f42862h = r7     // Catch: java.lang.Exception -> L32
            r0.f42865k = r4     // Catch: java.lang.Exception -> L32
            java.lang.Object r8 = r8.t(r0)     // Catch: java.lang.Exception -> L32
            if (r8 != r1) goto L54
            return r1
        L54:
            r2 = r7
        L55:
            com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification r8 = (com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification) r8     // Catch: java.lang.Exception -> L32
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L32
            r4.<init>()     // Catch: java.lang.Exception -> L32
            java.lang.String r5 = "pushBonusWillExpiredNotification: "
            r4.append(r5)     // Catch: java.lang.Exception -> L32
            r4.append(r8)     // Catch: java.lang.Exception -> L32
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L32
            r2.e(r4)     // Catch: java.lang.Exception -> L32
            r4 = 0
            if (r8 != 0) goto L7b
            com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification r8 = new com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification     // Catch: java.lang.Exception -> L32
            java.lang.String r5 = "fake title"
            java.lang.String r6 = "pushBonusWillExpiredNotificationfake content:TestDefaultPushManager"
            java.lang.String r2 = r2.d()     // Catch: java.lang.Exception -> L32
            r8.<init>(r5, r6, r2, r4)     // Catch: java.lang.Exception -> L32
        L7b:
            com.startshorts.androidplayer.manager.push.util.PushUtil r2 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L32
            r0.f42862h = r4     // Catch: java.lang.Exception -> L32
            r0.f42865k = r3     // Catch: java.lang.Exception -> L32
            java.lang.Object r8 = r2.J(r8, r0)     // Catch: java.lang.Exception -> L32
            if (r8 != r1) goto L9b
            return r1
        L88:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r8 = r8.getMessage()
            r0.<init>(r8)
            java.lang.Object r8 = kotlin.f.a(r0)
            java.lang.Object r8 = kotlin.Result.d(r8)
        L9b:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.TestPushManager.f(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.manager.push.TestPushManager$pushCheckInNotification$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.manager.push.TestPushManager$pushCheckInNotification$1 r0 = (com.startshorts.androidplayer.manager.push.TestPushManager$pushCheckInNotification$1) r0
            int r1 = r0.f42868j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42868j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.TestPushManager$pushCheckInNotification$1 r0 = new com.startshorts.androidplayer.manager.push.TestPushManager$pushCheckInNotification$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f42866h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42868j
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
            r0.f42868j = r3     // Catch: java.lang.Exception -> L2f
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
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.TestPushManager.g(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0083 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:16:0x0038, B:77:0x015c, B:78:0x015f, B:79:0x0177, B:23:0x004c, B:71:0x013a, B:26:0x0059, B:58:0x00d3, B:61:0x00d9, B:63:0x00e4, B:65:0x0105, B:67:0x0124, B:73:0x013e, B:64:0x00f5, B:29:0x0066, B:36:0x007b, B:38:0x0083, B:39:0x0089, B:41:0x008f, B:45:0x009e, B:55:0x00c0, B:46:0x00a1, B:47:0x00a7, B:49:0x00ad, B:53:0x00bc, B:32:0x006d), top: B:83:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a1 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:16:0x0038, B:77:0x015c, B:78:0x015f, B:79:0x0177, B:23:0x004c, B:71:0x013a, B:26:0x0059, B:58:0x00d3, B:61:0x00d9, B:63:0x00e4, B:65:0x0105, B:67:0x0124, B:73:0x013e, B:64:0x00f5, B:29:0x0066, B:36:0x007b, B:38:0x0083, B:39:0x0089, B:41:0x008f, B:45:0x009e, B:55:0x00c0, B:46:0x00a1, B:47:0x00a7, B:49:0x00ad, B:53:0x00bc, B:32:0x006d), top: B:83:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c0 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:16:0x0038, B:77:0x015c, B:78:0x015f, B:79:0x0177, B:23:0x004c, B:71:0x013a, B:26:0x0059, B:58:0x00d3, B:61:0x00d9, B:63:0x00e4, B:65:0x0105, B:67:0x0124, B:73:0x013e, B:64:0x00f5, B:29:0x0066, B:36:0x007b, B:38:0x0083, B:39:0x0089, B:41:0x008f, B:45:0x009e, B:55:0x00c0, B:46:0x00a1, B:47:0x00a7, B:49:0x00ad, B:53:0x00bc, B:32:0x006d), top: B:83:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00d9 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:16:0x0038, B:77:0x015c, B:78:0x015f, B:79:0x0177, B:23:0x004c, B:71:0x013a, B:26:0x0059, B:58:0x00d3, B:61:0x00d9, B:63:0x00e4, B:65:0x0105, B:67:0x0124, B:73:0x013e, B:64:0x00f5, B:29:0x0066, B:36:0x007b, B:38:0x0083, B:39:0x0089, B:41:0x008f, B:45:0x009e, B:55:0x00c0, B:46:0x00a1, B:47:0x00a7, B:49:0x00ad, B:53:0x00bc, B:32:0x006d), top: B:83:0x002a }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(@org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r13) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.TestPushManager.h(java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0052 A[Catch: Exception -> 0x0032, TryCatch #0 {Exception -> 0x0032, blocks: (B:12:0x0028, B:18:0x003c, B:24:0x004e, B:26:0x0052, B:27:0x005e, B:21:0x0043), top: B:32:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.manager.push.TestPushManager$pushMissCheckInNotification$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.manager.push.TestPushManager$pushMissCheckInNotification$1 r0 = (com.startshorts.androidplayer.manager.push.TestPushManager$pushMissCheckInNotification$1) r0
            int r1 = r0.f42876j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42876j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.TestPushManager$pushMissCheckInNotification$1 r0 = new com.startshorts.androidplayer.manager.push.TestPushManager$pushMissCheckInNotification$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f42874h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42876j
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L32
            kotlin.Result r8 = (kotlin.Result) r8     // Catch: java.lang.Exception -> L32
            java.lang.Object r8 = r8.n()     // Catch: java.lang.Exception -> L32
            goto L7c
        L32:
            r8 = move-exception
            goto L69
        L34:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3c:
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L32
            goto L4e
        L40:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.push.PushRepo r8 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L32
            r0.f42876j = r4     // Catch: java.lang.Exception -> L32
            java.lang.Object r8 = r8.y(r0)     // Catch: java.lang.Exception -> L32
            if (r8 != r1) goto L4e
            return r1
        L4e:
            com.startshorts.androidplayer.bean.notification.MissCheckInNotification r8 = (com.startshorts.androidplayer.bean.notification.MissCheckInNotification) r8     // Catch: java.lang.Exception -> L32
            if (r8 != 0) goto L5e
            com.startshorts.androidplayer.bean.notification.MissCheckInNotification r8 = new com.startshorts.androidplayer.bean.notification.MissCheckInNotification     // Catch: java.lang.Exception -> L32
            java.lang.String r2 = "fake title"
            java.lang.String r4 = "MissCheckInNotification:fake content:TestDefaultPushManager"
            java.lang.String r5 = ""
            r6 = 0
            r8.<init>(r2, r4, r5, r6)     // Catch: java.lang.Exception -> L32
        L5e:
            com.startshorts.androidplayer.manager.push.util.PushUtil r2 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L32
            r0.f42876j = r3     // Catch: java.lang.Exception -> L32
            java.lang.Object r8 = r2.N(r8, r0)     // Catch: java.lang.Exception -> L32
            if (r8 != r1) goto L7c
            return r1
        L69:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r8 = r8.getMessage()
            r0.<init>(r8)
            java.lang.Object r8 = kotlin.f.a(r0)
            java.lang.Object r8 = kotlin.Result.d(r8)
        L7c:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.TestPushManager.i(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0050 A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:13:0x002c, B:31:0x007e, B:32:0x0084, B:19:0x003a, B:25:0x004c, B:27:0x0050, B:22:0x0041), top: B:36:0x0022 }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.manager.push.TestPushManager$pushNewShortsNotification$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.manager.push.TestPushManager$pushNewShortsNotification$1 r0 = (com.startshorts.androidplayer.manager.push.TestPushManager$pushNewShortsNotification$1) r0
            int r1 = r0.f42880k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42880k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.TestPushManager$pushNewShortsNotification$1 r0 = new com.startshorts.androidplayer.manager.push.TestPushManager$pushNewShortsNotification$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f42878i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42880k
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r0 = r0.f42877h
            com.startshorts.androidplayer.bean.notification.NewShortsNotification r0 = (com.startshorts.androidplayer.bean.notification.NewShortsNotification) r0
            kotlin.f.b(r7)     // Catch: java.lang.Exception -> L30
            goto L7e
        L30:
            r7 = move-exception
            goto L8b
        L32:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L3a:
            kotlin.f.b(r7)     // Catch: java.lang.Exception -> L30
            goto L4c
        L3e:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.push.PushRepo r7 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L30
            r0.f42880k = r4     // Catch: java.lang.Exception -> L30
            java.lang.Object r7 = r7.x(r0)     // Catch: java.lang.Exception -> L30
            if (r7 != r1) goto L4c
            return r1
        L4c:
            com.startshorts.androidplayer.bean.notification.NewShortsNotification r7 = (com.startshorts.androidplayer.bean.notification.NewShortsNotification) r7     // Catch: java.lang.Exception -> L30
            if (r7 != 0) goto L84
            com.startshorts.androidplayer.bean.notification.NewShortsNotification r7 = new com.startshorts.androidplayer.bean.notification.NewShortsNotification     // Catch: java.lang.Exception -> L30
            r7.<init>()     // Catch: java.lang.Exception -> L30
            r2 = 111305(0x1b2c9, float:1.55972E-40)
            r7.setShortPlayId(r2)     // Catch: java.lang.Exception -> L30
            java.lang.String r2 = "fake title"
            r7.setTitle(r2)     // Catch: java.lang.Exception -> L30
            java.lang.String r2 = "pushNewShortsNotification:fake content:TestDefaultPushManager"
            r7.setRecommendation(r2)     // Catch: java.lang.Exception -> L30
            java.lang.String r2 = "https://akamai-static.shorttv.live/images/cover/2024/03/18/7d3795ba3a6846d5be8bbddab02322c0.jpg?auth_key=1748320846-0-0-dc5b0b47b3a9696fd2d6708bdb0d5aaa"
            r7.setCoverId(r2)     // Catch: java.lang.Exception -> L30
            com.startshorts.androidplayer.repo.push.PushRepo r2 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L30
            java.lang.String r4 = r7.getCoverId()     // Catch: java.lang.Exception -> L30
            r0.f42877h = r7     // Catch: java.lang.Exception -> L30
            r0.f42880k = r3     // Catch: java.lang.Exception -> L30
            java.lang.Object r0 = r2.n(r4, r0)     // Catch: java.lang.Exception -> L30
            if (r0 != r1) goto L7b
            return r1
        L7b:
            r5 = r0
            r0 = r7
            r7 = r5
        L7e:
            android.graphics.Bitmap r7 = (android.graphics.Bitmap) r7     // Catch: java.lang.Exception -> L30
            r0.setCover(r7)     // Catch: java.lang.Exception -> L30
            r7 = r0
        L84:
            com.startshorts.androidplayer.manager.push.util.PushUtil r0 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L30
            java.lang.Object r7 = r0.O(r7)     // Catch: java.lang.Exception -> L30
            goto L9e
        L8b:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r7 = r7.getMessage()
            r0.<init>(r7)
            java.lang.Object r7 = kotlin.f.a(r0)
            java.lang.Object r7 = kotlin.Result.d(r7)
        L9e:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.TestPushManager.j(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0053 A[Catch: Exception -> 0x0032, TryCatch #0 {Exception -> 0x0032, blocks: (B:13:0x002e, B:31:0x0082, B:32:0x0088, B:34:0x0094, B:36:0x009a, B:19:0x003d, B:25:0x004f, B:27:0x0053, B:22:0x0044), top: B:40:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0094 A[Catch: Exception -> 0x0032, TryCatch #0 {Exception -> 0x0032, blocks: (B:13:0x002e, B:31:0x0082, B:32:0x0088, B:34:0x0094, B:36:0x009a, B:19:0x003d, B:25:0x004f, B:27:0x0053, B:22:0x0044), top: B:40:0x0024 }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r7 = this;
            java.lang.String r0 = "pushNewShortsNotification:fake content:TestDefaultPushManager"
            boolean r1 = r8 instanceof com.startshorts.androidplayer.manager.push.TestPushManager$pushRecommendShortsNotification$1
            if (r1 == 0) goto L15
            r1 = r8
            com.startshorts.androidplayer.manager.push.TestPushManager$pushRecommendShortsNotification$1 r1 = (com.startshorts.androidplayer.manager.push.TestPushManager$pushRecommendShortsNotification$1) r1
            int r2 = r1.f42884k
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f42884k = r2
            goto L1a
        L15:
            com.startshorts.androidplayer.manager.push.TestPushManager$pushRecommendShortsNotification$1 r1 = new com.startshorts.androidplayer.manager.push.TestPushManager$pushRecommendShortsNotification$1
            r1.<init>(r7, r8)
        L1a:
            java.lang.Object r8 = r1.f42882i
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r1.f42884k
            r4 = 2
            r5 = 1
            if (r3 == 0) goto L41
            if (r3 == r5) goto L3d
            if (r3 != r4) goto L35
            java.lang.Object r0 = r1.f42881h
            com.startshorts.androidplayer.bean.notification.RecommendShortsNotification r0 = (com.startshorts.androidplayer.bean.notification.RecommendShortsNotification) r0
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L32
            goto L82
        L32:
            r8 = move-exception
            goto Laf
        L35:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3d:
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L32
            goto L4f
        L41:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.push.PushRepo r8 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L32
            r1.f42884k = r5     // Catch: java.lang.Exception -> L32
            java.lang.Object r8 = r8.z(r1)     // Catch: java.lang.Exception -> L32
            if (r8 != r2) goto L4f
            return r2
        L4f:
            com.startshorts.androidplayer.bean.notification.RecommendShortsNotification r8 = (com.startshorts.androidplayer.bean.notification.RecommendShortsNotification) r8     // Catch: java.lang.Exception -> L32
            if (r8 != 0) goto L88
            com.startshorts.androidplayer.bean.notification.RecommendShortsNotification r8 = new com.startshorts.androidplayer.bean.notification.RecommendShortsNotification     // Catch: java.lang.Exception -> L32
            r8.<init>()     // Catch: java.lang.Exception -> L32
            r3 = 111305(0x1b2c9, float:1.55972E-40)
            r8.setShortPlayId(r3)     // Catch: java.lang.Exception -> L32
            java.lang.String r3 = "fake title"
            r8.setTitle(r3)     // Catch: java.lang.Exception -> L32
            r8.setRecommendation(r0)     // Catch: java.lang.Exception -> L32
            r8.setSummary(r0)     // Catch: java.lang.Exception -> L32
            java.lang.String r0 = "https://akamai-static.shorttv.live/images/cover/2024/03/18/7d3795ba3a6846d5be8bbddab02322c0.jpg?auth_key=1748320846-0-0-dc5b0b47b3a9696fd2d6708bdb0d5aaa"
            r8.setCoverId(r0)     // Catch: java.lang.Exception -> L32
            com.startshorts.androidplayer.repo.push.PushRepo r0 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L32
            java.lang.String r3 = r8.getCoverId()     // Catch: java.lang.Exception -> L32
            r1.f42881h = r8     // Catch: java.lang.Exception -> L32
            r1.f42884k = r4     // Catch: java.lang.Exception -> L32
            java.lang.Object r0 = r0.n(r3, r1)     // Catch: java.lang.Exception -> L32
            if (r0 != r2) goto L7f
            return r2
        L7f:
            r6 = r0
            r0 = r8
            r8 = r6
        L82:
            android.graphics.Bitmap r8 = (android.graphics.Bitmap) r8     // Catch: java.lang.Exception -> L32
            r0.setCover(r8)     // Catch: java.lang.Exception -> L32
            r8 = r0
        L88:
            com.startshorts.androidplayer.manager.push.util.PushUtil r0 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L32
            java.lang.Object r0 = r0.S(r8)     // Catch: java.lang.Exception -> L32
            boolean r1 = kotlin.Result.j(r0)     // Catch: java.lang.Exception -> L32
            if (r1 == 0) goto Lae
            boolean r8 = r8.getFromLocal()     // Catch: java.lang.Exception -> L32
            if (r8 == 0) goto Lae
            com.startshorts.androidplayer.utils.TimeUtil r8 = com.startshorts.androidplayer.utils.TimeUtil.f48175a     // Catch: java.lang.Exception -> L32
            java.util.Date r1 = new java.util.Date     // Catch: java.lang.Exception -> L32
            r1.<init>()     // Catch: java.lang.Exception -> L32
            java.util.Date r1 = jk.f.a(r1)     // Catch: java.lang.Exception -> L32
            java.lang.String r8 = r8.f(r1)     // Catch: java.lang.Exception -> L32
            ud.b r1 = ud.b.f68412a     // Catch: java.lang.Exception -> L32
            r1.g4(r8, r5)     // Catch: java.lang.Exception -> L32
        Lae:
            return r0
        Laf:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r8 = r8.getMessage()
            r0.<init>(r8)
            java.lang.Object r8 = kotlin.f.a(r0)
            java.lang.Object r8 = kotlin.Result.d(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.TestPushManager.k(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0050 A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:13:0x002c, B:31:0x007e, B:32:0x0084, B:19:0x003a, B:25:0x004c, B:27:0x0050, B:22:0x0041), top: B:36:0x0022 }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object l(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.manager.push.TestPushManager$pushStartRechargingNotification$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.manager.push.TestPushManager$pushStartRechargingNotification$1 r0 = (com.startshorts.androidplayer.manager.push.TestPushManager$pushStartRechargingNotification$1) r0
            int r1 = r0.f42888k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42888k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.TestPushManager$pushStartRechargingNotification$1 r0 = new com.startshorts.androidplayer.manager.push.TestPushManager$pushStartRechargingNotification$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f42886i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42888k
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r0 = r0.f42885h
            com.startshorts.androidplayer.bean.notification.StartRechargingNotification r0 = (com.startshorts.androidplayer.bean.notification.StartRechargingNotification) r0
            kotlin.f.b(r7)     // Catch: java.lang.Exception -> L30
            goto L7e
        L30:
            r7 = move-exception
            goto L8b
        L32:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L3a:
            kotlin.f.b(r7)     // Catch: java.lang.Exception -> L30
            goto L4c
        L3e:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.push.PushRepo r7 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L30
            r0.f42888k = r4     // Catch: java.lang.Exception -> L30
            java.lang.Object r7 = r7.A(r0)     // Catch: java.lang.Exception -> L30
            if (r7 != r1) goto L4c
            return r1
        L4c:
            com.startshorts.androidplayer.bean.notification.StartRechargingNotification r7 = (com.startshorts.androidplayer.bean.notification.StartRechargingNotification) r7     // Catch: java.lang.Exception -> L30
            if (r7 != 0) goto L84
            com.startshorts.androidplayer.bean.notification.StartRechargingNotification r7 = new com.startshorts.androidplayer.bean.notification.StartRechargingNotification     // Catch: java.lang.Exception -> L30
            r7.<init>()     // Catch: java.lang.Exception -> L30
            r2 = 111305(0x1b2c9, float:1.55972E-40)
            r7.setShortPlayId(r2)     // Catch: java.lang.Exception -> L30
            java.lang.String r2 = "fake title"
            r7.setTitle(r2)     // Catch: java.lang.Exception -> L30
            java.lang.String r2 = "pushStartRechargingNotification:fake content:TestDefaultPushManager"
            r7.setContent(r2)     // Catch: java.lang.Exception -> L30
            java.lang.String r2 = "https://akamai-static.shorttv.live/images/cover/2024/03/18/7d3795ba3a6846d5be8bbddab02322c0.jpg?auth_key=1748320846-0-0-dc5b0b47b3a9696fd2d6708bdb0d5aaa"
            r7.setCoverId(r2)     // Catch: java.lang.Exception -> L30
            com.startshorts.androidplayer.repo.push.PushRepo r2 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L30
            java.lang.String r4 = r7.getCoverId()     // Catch: java.lang.Exception -> L30
            r0.f42885h = r7     // Catch: java.lang.Exception -> L30
            r0.f42888k = r3     // Catch: java.lang.Exception -> L30
            java.lang.Object r0 = r2.n(r4, r0)     // Catch: java.lang.Exception -> L30
            if (r0 != r1) goto L7b
            return r1
        L7b:
            r5 = r0
            r0 = r7
            r7 = r5
        L7e:
            android.graphics.Bitmap r7 = (android.graphics.Bitmap) r7     // Catch: java.lang.Exception -> L30
            r0.setCover(r7)     // Catch: java.lang.Exception -> L30
            r7 = r0
        L84:
            com.startshorts.androidplayer.manager.push.util.PushUtil r0 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L30
            java.lang.Object r7 = r0.U(r7)     // Catch: java.lang.Exception -> L30
            goto L9e
        L8b:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r7 = r7.getMessage()
            r0.<init>(r7)
            java.lang.Object r7 = kotlin.f.a(r0)
            java.lang.Object r7 = kotlin.Result.d(r7)
        L9e:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.TestPushManager.l(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.manager.push.TestPushManager$pushSubsBonusNotification$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.manager.push.TestPushManager$pushSubsBonusNotification$1 r0 = (com.startshorts.androidplayer.manager.push.TestPushManager$pushSubsBonusNotification$1) r0
            int r1 = r0.f42892k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42892k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.TestPushManager$pushSubsBonusNotification$1 r0 = new com.startshorts.androidplayer.manager.push.TestPushManager$pushSubsBonusNotification$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f42890i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42892k
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L45
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L33
            kotlin.Result r8 = (kotlin.Result) r8     // Catch: java.lang.Exception -> L33
            java.lang.Object r8 = r8.n()     // Catch: java.lang.Exception -> L33
            goto Laf
        L33:
            r8 = move-exception
            goto L9c
        L35:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3d:
            java.lang.Object r2 = r0.f42889h
            com.startshorts.androidplayer.manager.push.TestPushManager r2 = (com.startshorts.androidplayer.manager.push.TestPushManager) r2
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L33
            goto L56
        L45:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.push.PushRepo r8 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a     // Catch: java.lang.Exception -> L33
            r0.f42889h = r7     // Catch: java.lang.Exception -> L33
            r0.f42892k = r4     // Catch: java.lang.Exception -> L33
            java.lang.Object r8 = r8.B(r0)     // Catch: java.lang.Exception -> L33
            if (r8 != r1) goto L55
            return r1
        L55:
            r2 = r7
        L56:
            com.startshorts.androidplayer.bean.notification.SubsBonusNotification r8 = (com.startshorts.androidplayer.bean.notification.SubsBonusNotification) r8     // Catch: java.lang.Exception -> L33
            r4 = 0
            if (r8 == 0) goto L67
            java.lang.String r5 = r8.getTitle()     // Catch: java.lang.Exception -> L33
            if (r5 == 0) goto L67
            int r5 = r5.length()     // Catch: java.lang.Exception -> L33
            if (r5 != 0) goto L74
        L67:
            com.startshorts.androidplayer.bean.notification.SubsBonusNotification r8 = new com.startshorts.androidplayer.bean.notification.SubsBonusNotification     // Catch: java.lang.Exception -> L33
            java.lang.String r5 = "fake title"
            java.lang.String r6 = "pushSubsBonusNotification:fake content:TestDefaultPushManager"
            java.lang.String r2 = r2.d()     // Catch: java.lang.Exception -> L33
            r8.<init>(r5, r6, r2, r4)     // Catch: java.lang.Exception -> L33
        L74:
            java.lang.String r2 = r8.getTitle()     // Catch: java.lang.Exception -> L33
            if (r2 == 0) goto L8e
            int r2 = r2.length()     // Catch: java.lang.Exception -> L33
            if (r2 != 0) goto L81
            goto L8e
        L81:
            com.startshorts.androidplayer.manager.push.util.PushUtil r2 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a     // Catch: java.lang.Exception -> L33
            r0.f42889h = r4     // Catch: java.lang.Exception -> L33
            r0.f42892k = r3     // Catch: java.lang.Exception -> L33
            java.lang.Object r8 = r2.V(r8, r0)     // Catch: java.lang.Exception -> L33
            if (r8 != r1) goto Laf
            return r1
        L8e:
            com.startshorts.androidplayer.log.Logger r8 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Exception -> L33
            java.lang.String r0 = "TestDefaultPushManager"
            java.lang.String r1 = "ignore pushSubsBonusNotification"
            r8.h(r0, r1)     // Catch: java.lang.Exception -> L33
            java.lang.Object r8 = kotlin.Result.d(r4)     // Catch: java.lang.Exception -> L33
            goto Laf
        L9c:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Throwable r0 = new java.lang.Throwable
            java.lang.String r8 = r8.getMessage()
            r0.<init>(r8)
            java.lang.Object r8 = kotlin.f.a(r0)
            java.lang.Object r8 = kotlin.Result.d(r8)
        Laf:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.TestPushManager.m(rs.c):java.lang.Object");
    }
}
