package com.startshorts.androidplayer.db.repository;

import com.startshorts.androidplayer.db.DbManager;
import com.startshorts.androidplayer.db.model.DbEvent;
import com.startshorts.androidplayer.db.repository.EventRepository;
import com.startshorts.androidplayer.db.repository.base.BaseRepository;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.j;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import vd.a;
/* compiled from: EventRepository.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEventRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventRepository.kt\ncom/startshorts/androidplayer/db/repository/EventRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1863#2,2:166\n1872#2,3:168\n774#2:171\n865#2,2:172\n1863#2,2:174\n*S KotlinDebug\n*F\n+ 1 EventRepository.kt\ncom/startshorts/androidplayer/db/repository/EventRepository\n*L\n43#1:166,2\n81#1:168,3\n116#1:171\n116#1:172,2\n118#1:174,2\n*E\n"})
/* loaded from: classes6.dex */
public final class EventRepository extends BaseRepository {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final EventRepository f41474b = new EventRepository();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f41475c = c.b(new Function0() { // from class: wd.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List S;
            S = EventRepository.S();
            return S;
        }
    });

    private EventRepository() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean D(List list, DbEvent dbEvent) {
        return list.contains(Long.valueOf(dbEvent.getLocalId()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object G(rs.c<? super a> cVar) {
        return DbManager.f41467a.b(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean K(DbEvent dbEvent) {
        if (dbEvent.getStatus() == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(DbEvent dbEvent) {
        dbEvent.setStatus(1);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean M(String[] strArr, DbEvent dbEvent) {
        if (dbEvent.getStatus() == 0 && n.f0(strArr, dbEvent.getEventName())) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(DbEvent dbEvent) {
        dbEvent.setStatus(1);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<DbEvent> O() {
        return (List) f41475c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List S() {
        return Collections.synchronizedList(new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051 A[Catch: Exception -> 0x0032, TryCatch #1 {Exception -> 0x0032, blocks: (B:12:0x002e, B:23:0x004d, B:25:0x0051, B:29:0x005e), top: B:40:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005e A[Catch: Exception -> 0x0032, TRY_LEAVE, TryCatch #1 {Exception -> 0x0032, blocks: (B:12:0x002e, B:23:0x004d, B:25:0x0051, B:29:0x005e), top: B:40:0x002e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object U(com.startshorts.androidplayer.db.model.DbEvent r6, rs.c<? super java.lang.Long> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.db.repository.EventRepository$safeSaveEvent$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.db.repository.EventRepository$safeSaveEvent$1 r0 = (com.startshorts.androidplayer.db.repository.EventRepository$safeSaveEvent$1) r0
            int r1 = r0.f41488l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41488l = r1
            goto L18
        L13:
            com.startshorts.androidplayer.db.repository.EventRepository$safeSaveEvent$1 r0 = new com.startshorts.androidplayer.db.repository.EventRepository$safeSaveEvent$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f41486j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41488l
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r6 = r0.f41485i
            com.startshorts.androidplayer.db.model.DbEvent r6 = (com.startshorts.androidplayer.db.model.DbEvent) r6
            java.lang.Object r0 = r0.f41484h
            com.startshorts.androidplayer.db.repository.EventRepository r0 = (com.startshorts.androidplayer.db.repository.EventRepository) r0
            kotlin.f.b(r7)     // Catch: java.lang.Exception -> L32
            goto L4d
        L32:
            r7 = move-exception
            goto L6d
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3c:
            kotlin.f.b(r7)
            r0.f41484h = r5     // Catch: java.lang.Exception -> L6b
            r0.f41485i = r6     // Catch: java.lang.Exception -> L6b
            r0.f41488l = r3     // Catch: java.lang.Exception -> L6b
            java.lang.Object r7 = r5.G(r0)     // Catch: java.lang.Exception -> L6b
            if (r7 != r1) goto L4c
            return r1
        L4c:
            r0 = r5
        L4d:
            vd.a r7 = (vd.a) r7     // Catch: java.lang.Exception -> L32
            if (r7 == 0) goto L5a
            long r1 = r7.c(r6)     // Catch: java.lang.Exception -> L32
            java.lang.Long r7 = kotlin.coroutines.jvm.internal.a.e(r1)     // Catch: java.lang.Exception -> L32
            goto L5b
        L5a:
            r7 = r4
        L5b:
            if (r7 != 0) goto L5e
            goto L69
        L5e:
            long r0 = r7.longValue()     // Catch: java.lang.Exception -> L32
            r2 = -1
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 != 0) goto L69
            goto L91
        L69:
            r4 = r7
            goto L91
        L6b:
            r7 = move-exception
            r0 = r5
        L6d:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "safeSaveEvent("
            r1.append(r2)
            java.lang.String r6 = r6.getEventName()
            r1.append(r6)
            java.lang.String r6 = ") exception -> "
            r1.append(r6)
            java.lang.String r6 = r7.getMessage()
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            r0.b(r6)
        L91:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.db.repository.EventRepository.U(com.startshorts.androidplayer.db.model.DbEvent, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051 A[Catch: Exception -> 0x0032, TRY_LEAVE, TryCatch #1 {Exception -> 0x0032, blocks: (B:12:0x002e, B:23:0x004d, B:25:0x0051), top: B:33:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object V(java.util.List<com.startshorts.androidplayer.db.model.DbEvent> r6, rs.c<? super long[]> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.db.repository.EventRepository$safeSaveEvents$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.db.repository.EventRepository$safeSaveEvents$1 r0 = (com.startshorts.androidplayer.db.repository.EventRepository$safeSaveEvents$1) r0
            int r1 = r0.f41493l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41493l = r1
            goto L18
        L13:
            com.startshorts.androidplayer.db.repository.EventRepository$safeSaveEvents$1 r0 = new com.startshorts.androidplayer.db.repository.EventRepository$safeSaveEvents$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f41491j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41493l
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 != r4) goto L34
            java.lang.Object r6 = r0.f41490i
            java.util.List r6 = (java.util.List) r6
            java.lang.Object r0 = r0.f41489h
            com.startshorts.androidplayer.db.repository.EventRepository r0 = (com.startshorts.androidplayer.db.repository.EventRepository) r0
            kotlin.f.b(r7)     // Catch: java.lang.Exception -> L32
            goto L4d
        L32:
            r7 = move-exception
            goto L58
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3c:
            kotlin.f.b(r7)
            r0.f41489h = r5     // Catch: java.lang.Exception -> L56
            r0.f41490i = r6     // Catch: java.lang.Exception -> L56
            r0.f41493l = r4     // Catch: java.lang.Exception -> L56
            java.lang.Object r7 = r5.G(r0)     // Catch: java.lang.Exception -> L56
            if (r7 != r1) goto L4c
            return r1
        L4c:
            r0 = r5
        L4d:
            vd.a r7 = (vd.a) r7     // Catch: java.lang.Exception -> L32
            if (r7 == 0) goto L83
            long[] r3 = r7.d(r6)     // Catch: java.lang.Exception -> L32
            goto L83
        L56:
            r7 = move-exception
            r0 = r5
        L58:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "safeSaveEvents("
            r1.append(r2)
            r2 = 0
            java.lang.Object r6 = r6.get(r2)
            com.startshorts.androidplayer.db.model.DbEvent r6 = (com.startshorts.androidplayer.db.model.DbEvent) r6
            java.lang.String r6 = r6.getEventName()
            r1.append(r6)
            java.lang.String r6 = " exception -> "
            r1.append(r6)
            java.lang.String r6 = r7.getMessage()
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            r0.b(r6)
        L83:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.db.repository.EventRepository.V(java.util.List, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00af  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object C(@org.jetbrains.annotations.NotNull final java.util.List<java.lang.Long> r10, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.db.repository.EventRepository.C(java.util.List, rs.c):java.lang.Object");
    }

    public final int E() {
        if (O().isEmpty()) {
            return 0;
        }
        return H();
    }

    public final int H() {
        int i10;
        List<DbEvent> O = O();
        Intrinsics.checkNotNullExpressionValue(O, "<get-mEventList>(...)");
        synchronized (O) {
            try {
                List<DbEvent> O2 = f41474b.O();
                Intrinsics.checkNotNullExpressionValue(O2, "<get-mEventList>(...)");
                i10 = 0;
                for (DbEvent dbEvent : O2) {
                    if (dbEvent.getStatus() != 1) {
                        i10++;
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i10;
    }

    @NotNull
    public final List<DbEvent> I(int i10) {
        List<DbEvent> P;
        List<DbEvent> O = O();
        Intrinsics.checkNotNullExpressionValue(O, "<get-mEventList>(...)");
        synchronized (O) {
            List<DbEvent> O2 = f41474b.O();
            Intrinsics.checkNotNullExpressionValue(O2, "<get-mEventList>(...)");
            P = j.P(j.I(j.M(j.t(CollectionsKt.e0(O2), new Function1() { // from class: wd.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean K;
                    K = EventRepository.K((DbEvent) obj);
                    return Boolean.valueOf(K);
                }
            }), i10), new Function1() { // from class: wd.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit L;
                    L = EventRepository.L((DbEvent) obj);
                    return L;
                }
            }));
        }
        return P;
    }

    @NotNull
    public final List<DbEvent> J(@NotNull final String[] eventNames, int i10) {
        List<DbEvent> P;
        Intrinsics.checkNotNullParameter(eventNames, "eventNames");
        List<DbEvent> O = O();
        Intrinsics.checkNotNullExpressionValue(O, "<get-mEventList>(...)");
        synchronized (O) {
            List<DbEvent> O2 = f41474b.O();
            Intrinsics.checkNotNullExpressionValue(O2, "<get-mEventList>(...)");
            P = j.P(j.I(j.M(j.t(CollectionsKt.e0(O2), new Function1() { // from class: wd.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean M;
                    M = EventRepository.M(eventNames, (DbEvent) obj);
                    return Boolean.valueOf(M);
                }
            }), i10), new Function1() { // from class: wd.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit N;
                    N = EventRepository.N((DbEvent) obj);
                    return N;
                }
            }));
        }
        return P;
    }

    @NotNull
    public final r Q() {
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        return CoroutineUtil.k(coroutineUtil, coroutineUtil.o(), "loadEventListFromDb", false, new EventRepository$loadEventListFromDb$1(null), null, 20, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0074  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object X(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.db.model.DbEvent r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.db.repository.EventRepository$saveEvent$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.db.repository.EventRepository$saveEvent$1 r0 = (com.startshorts.androidplayer.db.repository.EventRepository$saveEvent$1) r0
            int r1 = r0.f41499m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41499m = r1
            goto L18
        L13:
            com.startshorts.androidplayer.db.repository.EventRepository$saveEvent$1 r0 = new com.startshorts.androidplayer.db.repository.EventRepository$saveEvent$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f41497k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41499m
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r5 = r0.f41496j
            com.startshorts.androidplayer.db.model.DbEvent r5 = (com.startshorts.androidplayer.db.model.DbEvent) r5
            java.lang.Object r1 = r0.f41495i
            com.startshorts.androidplayer.db.model.DbEvent r1 = (com.startshorts.androidplayer.db.model.DbEvent) r1
            java.lang.Object r0 = r0.f41494h
            com.startshorts.androidplayer.db.repository.EventRepository r0 = (com.startshorts.androidplayer.db.repository.EventRepository) r0
            kotlin.f.b(r6)
            goto L51
        L35:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3d:
            kotlin.f.b(r6)
            r0.f41494h = r4
            r0.f41495i = r5
            r0.f41496j = r5
            r0.f41499m = r3
            java.lang.Object r6 = r4.U(r5, r0)
            if (r6 != r1) goto L4f
            return r1
        L4f:
            r0 = r4
            r1 = r5
        L51:
            java.lang.Long r6 = (java.lang.Long) r6
            if (r6 == 0) goto L5a
            long r2 = r6.longValue()
            goto L5e
        L5a:
            long r2 = java.lang.System.nanoTime()
        L5e:
            r5.setLocalId(r2)
            java.util.List r5 = r0.O()
            r5.add(r1)
            java.lang.String r5 = r1.getEventName()
            java.lang.String r6 = "reel_show"
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 != 0) goto Lb5
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "saveEvent -> localId("
            r5.append(r6)
            long r2 = r1.getLocalId()
            r5.append(r2)
            java.lang.String r6 = ") eventName("
            r5.append(r6)
            java.lang.String r6 = r1.getEventName()
            r5.append(r6)
            java.lang.String r6 = ") eventExtra("
            r5.append(r6)
            java.lang.String r6 = r1.getEventExtra()
            r5.append(r6)
            java.lang.String r6 = ") eventId("
            r5.append(r6)
            java.lang.String r6 = r1.getEventId()
            r5.append(r6)
            r6 = 41
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            r0.e(r5)
        Lb5:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.db.repository.EventRepository.X(com.startshorts.androidplayer.db.model.DbEvent, rs.c):java.lang.Object");
    }

    @Override // com.startshorts.androidplayer.db.repository.base.BaseRepository
    @NotNull
    public String d() {
        return "EventRepository";
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k0(@org.jetbrains.annotations.NotNull java.util.List<com.startshorts.androidplayer.db.model.DbEvent> r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof com.startshorts.androidplayer.db.repository.EventRepository$saveEvents$1
            if (r0 == 0) goto L13
            r0 = r12
            com.startshorts.androidplayer.db.repository.EventRepository$saveEvents$1 r0 = (com.startshorts.androidplayer.db.repository.EventRepository$saveEvents$1) r0
            int r1 = r0.f41504l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41504l = r1
            goto L18
        L13:
            com.startshorts.androidplayer.db.repository.EventRepository$saveEvents$1 r0 = new com.startshorts.androidplayer.db.repository.EventRepository$saveEvents$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.f41502j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41504l
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r11 = r0.f41501i
            java.util.List r11 = (java.util.List) r11
            java.lang.Object r0 = r0.f41500h
            com.startshorts.androidplayer.db.repository.EventRepository r0 = (com.startshorts.androidplayer.db.repository.EventRepository) r0
            kotlin.f.b(r12)
            goto L4a
        L31:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L39:
            kotlin.f.b(r12)
            r0.f41500h = r10
            r0.f41501i = r11
            r0.f41504l = r3
            java.lang.Object r12 = r10.V(r11, r0)
            if (r12 != r1) goto L49
            return r1
        L49:
            r0 = r10
        L4a:
            r1 = r12
            long[] r1 = (long[]) r1
            r12 = r11
            java.lang.Iterable r12 = (java.lang.Iterable) r12
            java.util.Iterator r12 = r12.iterator()
            r2 = 0
            r3 = r2
        L56:
            boolean r4 = r12.hasNext()
            if (r4 == 0) goto L7f
            java.lang.Object r4 = r12.next()
            int r5 = r3 + 1
            if (r3 >= 0) goto L67
            kotlin.collections.CollectionsKt.y()
        L67:
            com.startshorts.androidplayer.db.model.DbEvent r4 = (com.startshorts.androidplayer.db.model.DbEvent) r4
            if (r1 == 0) goto L76
            java.lang.Long r3 = kotlin.collections.n.s0(r1, r3)
            if (r3 == 0) goto L76
            long r6 = r3.longValue()
            goto L7a
        L76:
            long r6 = java.lang.System.nanoTime()
        L7a:
            r4.setLocalId(r6)
            r3 = r5
            goto L56
        L7f:
            java.util.List r12 = r0.O()
            r3 = r11
            java.util.Collection r3 = (java.util.Collection) r3
            r12.addAll(r3)
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r3 = "saveEvents -> eventName("
            r12.append(r3)
            java.lang.Object r2 = r11.get(r2)
            com.startshorts.androidplayer.db.model.DbEvent r2 = (com.startshorts.androidplayer.db.model.DbEvent) r2
            java.lang.String r2 = r2.getEventName()
            r12.append(r2)
            java.lang.String r2 = ") size("
            r12.append(r2)
            int r11 = r11.size()
            r12.append(r11)
            java.lang.String r11 = ") localIdArray("
            r12.append(r11)
            if (r1 == 0) goto Lc2
            r8 = 62
            r9 = 0
            java.lang.String r2 = ","
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            java.lang.String r11 = kotlin.collections.n.T0(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            goto Lc3
        Lc2:
            r11 = 0
        Lc3:
            r12.append(r11)
            r11 = 41
            r12.append(r11)
            java.lang.String r11 = r12.toString()
            r0.e(r11)
            kotlin.Unit r11 = kotlin.Unit.f60915a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.db.repository.EventRepository.k0(java.util.List, rs.c):java.lang.Object");
    }

    public final void o0(@NotNull List<Long> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        if (!ids.isEmpty() && !O().isEmpty()) {
            List<DbEvent> O = O();
            Intrinsics.checkNotNullExpressionValue(O, "<get-mEventList>(...)");
            synchronized (O) {
                try {
                    List<DbEvent> O2 = f41474b.O();
                    Intrinsics.checkNotNullExpressionValue(O2, "<get-mEventList>(...)");
                    ArrayList<DbEvent> arrayList = new ArrayList();
                    for (Object obj : O2) {
                        if (ids.contains(Long.valueOf(((DbEvent) obj).getLocalId()))) {
                            arrayList.add(obj);
                        }
                    }
                    for (DbEvent dbEvent : arrayList) {
                        dbEvent.setStatus(0);
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
