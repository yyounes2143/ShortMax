package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: HomeDialogProcessor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHomeDialogProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeDialogProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,111:1\n1010#2,2:112\n116#3,11:114\n*S KotlinDebug\n*F\n+ 1 HomeDialogProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor\n*L\n49#1:112,2\n64#1:114,11\n*E\n"})
/* loaded from: classes6.dex */
public final class HomeDialogProcessor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final HomeDialogProcessor f42361a = new HomeDialogProcessor();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ms.i f42362b = kotlin.c.b(new Function0() { // from class: we.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            qt.a g10;
            g10 = HomeDialogProcessor.g();
            return g10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final ms.i f42363c = kotlin.c.b(new Function0() { // from class: we.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List h10;
            h10 = HomeDialogProcessor.h();
            return h10;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private static boolean f42364d;

    /* renamed from: e  reason: collision with root package name */
    private static int f42365e;

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 HomeDialogProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor\n*L\n1#1,102:1\n50#2:103\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((c) t10).priority().getValue()), Integer.valueOf(((c) t11).priority().getValue()));
        }
    }

    private HomeDialogProcessor() {
    }

    private final qt.a e() {
        return (qt.a) f42362b.getValue();
    }

    private final List<c> f() {
        return (List) f42363c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qt.a g() {
        return qt.d.b(false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List h() {
        return CollectionsKt.t(new UpdateDialogProcessor(), new h(), new MergeTouristDialogProcessor(), new HomeRetainDiscountSubProcessor(), new CheckInDialogProcessor(), new i(), new RFMGuideDialogProcessor(), new LoginGuideDialogProcessor(), new com.startshorts.androidplayer.manager.dialog.home.a(), new b(), new NotificationPermissionDialogProcessor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(final com.startshorts.androidplayer.ui.activity.MainActivity r8, final int r9, rs.c<? super kotlin.Unit> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor$showInLoop$1
            if (r0 == 0) goto L13
            r0 = r10
            com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor$showInLoop$1 r0 = (com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor$showInLoop$1) r0
            int r1 = r0.f42377n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42377n = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor$showInLoop$1 r0 = new com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor$showInLoop$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.f42375l
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42377n
            java.lang.String r3 = "showInLoop"
            java.lang.String r4 = "HomeDialogProcessor"
            r5 = 1
            if (r2 == 0) goto L44
            if (r2 != r5) goto L3c
            int r9 = r0.f42374k
            java.lang.Object r8 = r0.f42373j
            kotlin.jvm.functions.Function0 r8 = (kotlin.jvm.functions.Function0) r8
            java.lang.Object r1 = r0.f42372i
            com.startshorts.androidplayer.manager.dialog.home.c r1 = (com.startshorts.androidplayer.manager.dialog.home.c) r1
            java.lang.Object r0 = r0.f42371h
            com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor r0 = (com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor) r0
            kotlin.f.b(r10)
            goto L97
        L3c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L44:
            kotlin.f.b(r10)
            java.util.List r10 = r7.f()
            java.lang.Object r10 = kotlin.collections.CollectionsKt.t0(r10, r9)
            com.startshorts.androidplayer.manager.dialog.home.c r10 = (com.startshorts.androidplayer.manager.dialog.home.c) r10
            if (r10 != 0) goto L72
            com.startshorts.androidplayer.log.Logger r8 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r3)
            r10.append(r9)
            java.lang.String r9 = " -> end, processor == null"
            r10.append(r9)
            java.lang.String r9 = r10.toString()
            r8.h(r4, r9)
            r8 = 0
            com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor.f42364d = r8
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        L72:
            java.util.List r2 = r7.f()
            int r6 = r9 + 1
            java.lang.Object r2 = kotlin.collections.CollectionsKt.t0(r2, r6)
            com.startshorts.androidplayer.manager.dialog.home.c r2 = (com.startshorts.androidplayer.manager.dialog.home.c) r2
            we.d r6 = new we.d
            r6.<init>()
            r0.f42371h = r7
            r0.f42372i = r10
            r0.f42373j = r6
            r0.f42374k = r9
            r0.f42377n = r5
            java.lang.Object r8 = r10.b(r8, r6, r0)
            if (r8 != r1) goto L94
            return r1
        L94:
            r1 = r10
            r10 = r8
            r8 = r6
        L97:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto Lcf
            int r8 = com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor.f42365e
            int r8 = r8 + r5
            com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor.f42365e = r8
            com.startshorts.androidplayer.log.Logger r8 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r3)
            r10.append(r9)
            java.lang.String r9 = " -> start, mProcessing("
            r10.append(r9)
            boolean r9 = com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor.f42364d
            r10.append(r9)
            java.lang.String r9 = ") processor.name="
            r10.append(r9)
            java.lang.String r9 = r1.name()
            r10.append(r9)
            java.lang.String r9 = r10.toString()
            r8.h(r4, r9)
            goto Ld2
        Lcf:
            r8.invoke()
        Ld2:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor.j(com.startshorts.androidplayer.ui.activity.MainActivity, int, rs.c):java.lang.Object");
    }

    static /* synthetic */ Object k(HomeDialogProcessor homeDialogProcessor, MainActivity mainActivity, int i10, rs.c cVar, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return homeDialogProcessor.j(mainActivity, i10, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(c cVar, MainActivity mainActivity, int i10) {
        if (f42365e != 0 && (cVar == null || !cVar.a())) {
            f42364d = false;
        } else {
            CoroutineUtil.f48072a.j("showInLoop", true, new HomeDialogProcessor$showInLoop$showNextProcessor$1$1(mainActivity, i10, null));
        }
        return Unit.f60915a;
    }

    private final void m() {
        List<c> f10 = f();
        if (f10.size() > 1) {
            CollectionsKt.D(f10, new a());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0089 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #0 {all -> 0x003a, blocks: (B:14:0x0035, B:46:0x00ca, B:48:0x00ce, B:49:0x00d5, B:33:0x0085, B:35:0x0089, B:38:0x0094, B:40:0x009c, B:43:0x00a7), top: B:54:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0094 A[Catch: all -> 0x003a, TRY_ENTER, TryCatch #0 {all -> 0x003a, blocks: (B:14:0x0035, B:46:0x00ca, B:48:0x00ce, B:49:0x00d5, B:33:0x0085, B:35:0x0089, B:38:0x0094, B:40:0x009c, B:43:0x00a7), top: B:54:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ce A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:14:0x0035, B:46:0x00ca, B:48:0x00ce, B:49:0x00d5, B:33:0x0085, B:35:0x0089, B:38:0x0094, B:40:0x009c, B:43:0x00a7), top: B:54:0x002b }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.ui.activity.MainActivity r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r12) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor.i(com.startshorts.androidplayer.ui.activity.MainActivity, rs.c):java.lang.Object");
    }
}
