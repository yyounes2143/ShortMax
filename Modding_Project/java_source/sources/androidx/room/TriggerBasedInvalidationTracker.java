package androidx.room;

import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import gt.f0;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: InvalidationTracker.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 CloseBarrier.kt\nandroidx/room/concurrent/CloseBarrierKt\n+ 7 InvalidationTracker.kt\nandroidx/room/ObservedTableStates\n+ 8 ReentrantLock.kt\nandroidx/room/concurrent/ReentrantLockKt\n*L\n1#1,654:1\n216#2,2:655\n13472#3:657\n13473#3:659\n12667#3,2:712\n1#4:658\n37#5:660\n36#5,3:661\n99#6,3:664\n103#6,3:709\n99#6,5:714\n523#7:667\n524#7,3:671\n528#7,19:675\n522#7:694\n548#7,14:695\n28#8,3:668\n32#8:674\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker\n*L\n190#1:655,2\n288#1:657\n288#1:659\n374#1:712,2\n292#1:660\n292#1:661,3\n304#1:664,3\n304#1:709,3\n407#1:714,5\n305#1:667\n305#1:671,3\n305#1:675,19\n305#1:694\n305#1:695,14\n305#1:668,3\n305#1:674\n*E\n"})
/* loaded from: classes2.dex */
public final class TriggerBasedInvalidationTracker {
    @NotNull
    private static final String CREATE_TRACKING_TABLE_SQL = "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)";
    @NotNull
    private static final String DROP_TRACKING_TABLE_SQL = "DROP TABLE IF EXISTS room_table_modification_log";
    @NotNull
    private static final String INVALIDATED_COLUMN_NAME = "invalidated";
    @NotNull
    private static final String RESET_UPDATED_TABLES_SQL = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1";
    @NotNull
    private static final String SELECT_UPDATED_TABLES_SQL = "SELECT * FROM room_table_modification_log WHERE invalidated = 1";
    @NotNull
    private static final String TABLE_ID_COLUMN_NAME = "table_id";
    @NotNull
    private static final String UPDATE_TABLE_NAME = "room_table_modification_log";
    @NotNull
    private final RoomDatabase database;
    @NotNull
    private final ObservedTableStates observedTableStates;
    @NotNull
    private final ObservedTableVersions observedTableVersions;
    @NotNull
    private Function0<Boolean> onAllowRefresh;
    @NotNull
    private final Function1<Set<Integer>, Unit> onInvalidatedTablesIds;
    @NotNull
    private final AtomicBoolean pendingRefresh;
    @NotNull
    private final Map<String, String> shadowTablesMap;
    @NotNull
    private final Map<String, Integer> tableIdLookup;
    @NotNull
    private final String[] tablesNames;
    private final boolean useTempTable;
    @NotNull
    private final Map<String, Set<String>> viewTables;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String[] TRIGGERS = {"INSERT", "UPDATE", "DELETE"};

    /* compiled from: InvalidationTracker.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getTriggerName(String str, String str2) {
            return "room_table_modification_trigger_" + str + '_' + str2;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TriggerBasedInvalidationTracker(@NotNull RoomDatabase database, @NotNull Map<String, String> shadowTablesMap, @NotNull Map<String, ? extends Set<String>> viewTables, @NotNull String[] tableNames, boolean z10, @NotNull Function1<? super Set<Integer>, Unit> onInvalidatedTablesIds) {
        String str;
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(shadowTablesMap, "shadowTablesMap");
        Intrinsics.checkNotNullParameter(viewTables, "viewTables");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(onInvalidatedTablesIds, "onInvalidatedTablesIds");
        this.database = database;
        this.shadowTablesMap = shadowTablesMap;
        this.viewTables = viewTables;
        this.useTempTable = z10;
        this.onInvalidatedTablesIds = onInvalidatedTablesIds;
        this.pendingRefresh = new AtomicBoolean(false);
        this.onAllowRefresh = new Function0() { // from class: androidx.room.w
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                boolean onAllowRefresh$lambda$0;
                onAllowRefresh$lambda$0 = TriggerBasedInvalidationTracker.onAllowRefresh$lambda$0();
                return Boolean.valueOf(onAllowRefresh$lambda$0);
            }
        };
        this.tableIdLookup = new LinkedHashMap();
        int length = tableNames.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str2 = tableNames[i10];
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            this.tableIdLookup.put(lowerCase, Integer.valueOf(i10));
            String str3 = this.shadowTablesMap.get(tableNames[i10]);
            if (str3 != null) {
                str = str3.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(str, "toLowerCase(...)");
            } else {
                str = null;
            }
            if (str != null) {
                lowerCase = str;
            }
            strArr[i10] = lowerCase;
        }
        this.tablesNames = strArr;
        for (Map.Entry<String, String> entry : this.shadowTablesMap.entrySet()) {
            Locale locale2 = Locale.ROOT;
            String lowerCase2 = entry.getValue().toLowerCase(locale2);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            if (this.tableIdLookup.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
                Map<String, Integer> map = this.tableIdLookup;
                map.put(lowerCase3, p0.j(map, lowerCase2));
            }
        }
        this.observedTableStates = new ObservedTableStates(this.tablesNames.length);
        this.observedTableVersions = new ObservedTableVersions(this.tablesNames.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object checkInvalidatedTables(androidx.room.PooledConnection r6, rs.c<? super java.util.Set<java.lang.Integer>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r6 = r0.L$0
            java.util.Set r6 = (java.util.Set) r6
            kotlin.f.b(r7)
            goto L6e
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            java.lang.Object r6 = r0.L$0
            androidx.room.PooledConnection r6 = (androidx.room.PooledConnection) r6
            kotlin.f.b(r7)
            goto L55
        L40:
            kotlin.f.b(r7)
            androidx.room.v r7 = new androidx.room.v
            r7.<init>()
            r0.L$0 = r6
            r0.label = r4
            java.lang.String r2 = "SELECT * FROM room_table_modification_log WHERE invalidated = 1"
            java.lang.Object r7 = r6.usePrepared(r2, r7, r0)
            if (r7 != r1) goto L55
            return r1
        L55:
            java.util.Set r7 = (java.util.Set) r7
            r2 = r7
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto L6f
            r0.L$0 = r7
            r0.label = r3
            java.lang.String r2 = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"
            java.lang.Object r6 = androidx.room.TransactorKt.execSQL(r6, r2, r0)
            if (r6 != r1) goto L6d
            return r1
        L6d:
            r6 = r7
        L6e:
            r7 = r6
        L6f:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.checkInvalidatedTables(androidx.room.PooledConnection, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set checkInvalidatedTables$lambda$15(SQLiteStatement statement) {
        Intrinsics.checkNotNullParameter(statement, "statement");
        Set b10 = y0.b();
        while (statement.step()) {
            b10.add(Integer.valueOf((int) statement.getLong(0)));
        }
        return y0.a(b10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0094 A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #1 {all -> 0x002d, blocks: (B:12:0x0029, B:36:0x0089, B:38:0x0094), top: B:46:0x0029 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object notifyInvalidation(rs.c<? super java.util.Set<java.lang.Integer>> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r0 = r0.L$0
            androidx.room.concurrent.CloseBarrier r0 = (androidx.room.concurrent.CloseBarrier) r0
            kotlin.f.b(r9)     // Catch: java.lang.Throwable -> L2d
            goto L89
        L2d:
            r9 = move-exception
            goto La2
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L38:
            kotlin.f.b(r9)
            androidx.room.RoomDatabase r9 = r8.database
            androidx.room.concurrent.CloseBarrier r9 = r9.getCloseBarrier$room_runtime()
            boolean r2 = r9.block$room_runtime()
            if (r2 == 0) goto La6
            java.util.concurrent.atomic.AtomicBoolean r2 = r8.pendingRefresh     // Catch: java.lang.Throwable -> L58
            r4 = 0
            boolean r2 = r2.compareAndSet(r3, r4)     // Catch: java.lang.Throwable -> L58
            if (r2 != 0) goto L5d
            java.util.Set r0 = kotlin.collections.y0.f()     // Catch: java.lang.Throwable -> L58
            r9.unblock$room_runtime()
            return r0
        L58:
            r0 = move-exception
            r7 = r0
            r0 = r9
            r9 = r7
            goto La2
        L5d:
            kotlin.jvm.functions.Function0<java.lang.Boolean> r2 = r8.onAllowRefresh     // Catch: java.lang.Throwable -> L58
            java.lang.Object r2 = r2.invoke()     // Catch: java.lang.Throwable -> L58
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L58
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L58
            if (r2 != 0) goto L73
            java.util.Set r0 = kotlin.collections.y0.f()     // Catch: java.lang.Throwable -> L58
            r9.unblock$room_runtime()
            return r0
        L73:
            androidx.room.RoomDatabase r2 = r8.database     // Catch: java.lang.Throwable -> L58
            androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 r5 = new androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1     // Catch: java.lang.Throwable -> L58
            r6 = 0
            r5.<init>(r8, r6)     // Catch: java.lang.Throwable -> L58
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L58
            r0.label = r3     // Catch: java.lang.Throwable -> L58
            java.lang.Object r0 = r2.useConnection(r4, r5, r0)     // Catch: java.lang.Throwable -> L58
            if (r0 != r1) goto L86
            return r1
        L86:
            r7 = r0
            r0 = r9
            r9 = r7
        L89:
            java.util.Set r9 = (java.util.Set) r9     // Catch: java.lang.Throwable -> L2d
            r1 = r9
            java.util.Collection r1 = (java.util.Collection) r1     // Catch: java.lang.Throwable -> L2d
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L2d
            if (r1 != 0) goto L9e
            androidx.room.ObservedTableVersions r1 = r8.observedTableVersions     // Catch: java.lang.Throwable -> L2d
            r1.increment(r9)     // Catch: java.lang.Throwable -> L2d
            kotlin.jvm.functions.Function1<java.util.Set<java.lang.Integer>, kotlin.Unit> r1 = r8.onInvalidatedTablesIds     // Catch: java.lang.Throwable -> L2d
            r1.invoke(r9)     // Catch: java.lang.Throwable -> L2d
        L9e:
            r0.unblock$room_runtime()
            return r9
        La2:
            r0.unblock$room_runtime()
            throw r9
        La6:
            java.util.Set r9 = kotlin.collections.y0.f()
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.notifyInvalidation(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onAllowRefresh$lambda$0() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object refreshInvalidation$room_runtime$default(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, String[] strArr, Function0 function0, Function0 function02, rs.c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function0 = new Function0() { // from class: androidx.room.z
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit unit;
                    unit = Unit.f60915a;
                    return unit;
                }
            };
        }
        if ((i10 & 4) != 0) {
            function02 = new Function0() { // from class: androidx.room.a0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit unit;
                    unit = Unit.f60915a;
                    return unit;
                }
            };
        }
        return triggerBasedInvalidationTracker.refreshInvalidation$room_runtime(strArr, function0, function02, cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void refreshInvalidationAsync$room_runtime$default(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Function0 function0, Function0 function02, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function0 = new Function0() { // from class: androidx.room.x
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit unit;
                    unit = Unit.f60915a;
                    return unit;
                }
            };
        }
        if ((i10 & 2) != 0) {
            function02 = new Function0() { // from class: androidx.room.y
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit unit;
                    unit = Unit.f60915a;
                    return unit;
                }
            };
        }
        triggerBasedInvalidationTracker.refreshInvalidationAsync$room_runtime(function0, function02);
    }

    private final String[] resolveViews(String[] strArr) {
        Set b10 = y0.b();
        for (String str : strArr) {
            Map<String, Set<String>> map = this.viewTables;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            Set<String> set = map.get(lowerCase);
            if (set != null) {
                b10.addAll(set);
            } else {
                b10.add(str);
            }
        }
        return (String[]) y0.a(b10).toArray(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00e0 -> B:28:0x00e3). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object startTrackingTable(androidx.room.PooledConnection r13, int r14, rs.c<? super kotlin.Unit> r15) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.startTrackingTable(androidx.room.PooledConnection, int, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0085 -> B:20:0x0087). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object stopTrackingTable(androidx.room.PooledConnection r10, int r11, rs.c<? super kotlin.Unit> r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L42
            if (r2 != r3) goto L3a
            int r10 = r0.I$1
            int r11 = r0.I$0
            java.lang.Object r2 = r0.L$2
            java.lang.String[] r2 = (java.lang.String[]) r2
            java.lang.Object r4 = r0.L$1
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r5 = r0.L$0
            androidx.room.PooledConnection r5 = (androidx.room.PooledConnection) r5
            kotlin.f.b(r12)
            r12 = r4
            goto L87
        L3a:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L42:
            kotlin.f.b(r12)
            java.lang.String[] r12 = r9.tablesNames
            r11 = r12[r11]
            java.lang.String[] r12 = androidx.room.TriggerBasedInvalidationTracker.TRIGGERS
            int r2 = r12.length
            r4 = 0
            r8 = r11
            r11 = r10
            r10 = r2
            r2 = r12
            r12 = r8
        L52:
            if (r4 >= r10) goto L8b
            r5 = r2[r4]
            androidx.room.TriggerBasedInvalidationTracker$Companion r6 = androidx.room.TriggerBasedInvalidationTracker.Companion
            java.lang.String r5 = androidx.room.TriggerBasedInvalidationTracker.Companion.access$getTriggerName(r6, r12, r5)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "DROP TRIGGER IF EXISTS `"
            r6.append(r7)
            r6.append(r5)
            r5 = 96
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            r0.L$0 = r11
            r0.L$1 = r12
            r0.L$2 = r2
            r0.I$0 = r4
            r0.I$1 = r10
            r0.label = r3
            java.lang.Object r5 = androidx.room.TransactorKt.execSQL(r11, r5, r0)
            if (r5 != r1) goto L85
            return r1
        L85:
            r5 = r11
            r11 = r4
        L87:
            int r4 = r11 + 1
            r11 = r5
            goto L52
        L8b:
            kotlin.Unit r10 = kotlin.Unit.f60915a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.stopTrackingTable(androidx.room.PooledConnection, int, rs.c):java.lang.Object");
    }

    public final void configureConnection(@NotNull SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        SQLiteStatement prepare = connection.prepare("PRAGMA query_only");
        try {
            prepare.step();
            boolean z10 = prepare.getBoolean(0);
            ys.a.a(prepare, null);
            if (!z10) {
                SQLite.execSQL(connection, "PRAGMA temp_store = MEMORY");
                SQLite.execSQL(connection, "PRAGMA recursive_triggers = 1");
                SQLite.execSQL(connection, DROP_TRACKING_TABLE_SQL);
                if (this.useTempTable) {
                    SQLite.execSQL(connection, CREATE_TRACKING_TABLE_SQL);
                } else {
                    SQLite.execSQL(connection, StringsKt.P(CREATE_TRACKING_TABLE_SQL, "TEMP", "", false, 4, null));
                }
                this.observedTableStates.forceNeedSync$room_runtime();
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                ys.a.a(prepare, th2);
                throw th3;
            }
        }
    }

    @NotNull
    public final kt.b<Set<String>> createFlow$room_runtime(@NotNull String[] resolvedTableNames, @NotNull int[] tableIds, boolean z10) {
        Intrinsics.checkNotNullParameter(resolvedTableNames, "resolvedTableNames");
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        return kotlinx.coroutines.flow.c.F(new TriggerBasedInvalidationTracker$createFlow$1(this, tableIds, z10, resolvedTableNames, null));
    }

    @NotNull
    public final Function0<Boolean> getOnAllowRefresh$room_runtime() {
        return this.onAllowRefresh;
    }

    public final boolean onObserverAdded$room_runtime(@NotNull int[] tableIds) {
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        return this.observedTableStates.onObserverAdded$room_runtime(tableIds);
    }

    public final boolean onObserverRemoved$room_runtime(@NotNull int[] tableIds) {
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        return this.observedTableStates.onObserverRemoved$room_runtime(tableIds);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0080, code lost:
        if (r8.isEmpty() == false) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0064 A[Catch: all -> 0x0032, TryCatch #0 {all -> 0x0032, blocks: (B:12:0x002e, B:22:0x0059, B:27:0x0064, B:29:0x0068, B:36:0x0082, B:32:0x0075, B:34:0x007a, B:19:0x004c), top: B:41:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007a A[Catch: all -> 0x0032, TryCatch #0 {all -> 0x0032, blocks: (B:12:0x002e, B:22:0x0059, B:27:0x0064, B:29:0x0068, B:36:0x0082, B:32:0x0075, B:34:0x007a, B:19:0x004c), top: B:41:0x0021 }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object refreshInvalidation$room_runtime(@org.jetbrains.annotations.NotNull java.lang.String[] r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<kotlin.Unit> r6, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<kotlin.Unit> r7, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof androidx.room.TriggerBasedInvalidationTracker$refreshInvalidation$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.room.TriggerBasedInvalidationTracker$refreshInvalidation$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$refreshInvalidation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.TriggerBasedInvalidationTracker$refreshInvalidation$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$refreshInvalidation$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r5 = r0.L$1
            int[] r5 = (int[]) r5
            java.lang.Object r6 = r0.L$0
            r7 = r6
            kotlin.jvm.functions.Function0 r7 = (kotlin.jvm.functions.Function0) r7
            kotlin.f.b(r8)     // Catch: java.lang.Throwable -> L32
            goto L59
        L32:
            r5 = move-exception
            goto L8a
        L34:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3c:
            kotlin.f.b(r8)
            kotlin.Pair r5 = r4.validateTableNames$room_runtime(r5)
            java.lang.Object r5 = r5.d()
            int[] r5 = (int[]) r5
            r6.invoke()
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L32
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L32
            r0.label = r3     // Catch: java.lang.Throwable -> L32
            java.lang.Object r8 = r4.notifyInvalidation(r0)     // Catch: java.lang.Throwable -> L32
            if (r8 != r1) goto L59
            return r1
        L59:
            java.util.Set r8 = (java.util.Set) r8     // Catch: java.lang.Throwable -> L32
            int r6 = r5.length     // Catch: java.lang.Throwable -> L32
            r0 = 0
            if (r6 != 0) goto L61
            r6 = r3
            goto L62
        L61:
            r6 = r0
        L62:
            if (r6 != 0) goto L7a
            int r6 = r5.length     // Catch: java.lang.Throwable -> L32
            r1 = r0
        L66:
            if (r1 >= r6) goto L78
            r2 = r5[r1]     // Catch: java.lang.Throwable -> L32
            java.lang.Integer r2 = kotlin.coroutines.jvm.internal.a.d(r2)     // Catch: java.lang.Throwable -> L32
            boolean r2 = r8.contains(r2)     // Catch: java.lang.Throwable -> L32
            if (r2 == 0) goto L75
            goto L82
        L75:
            int r1 = r1 + 1
            goto L66
        L78:
            r3 = r0
            goto L82
        L7a:
            java.util.Collection r8 = (java.util.Collection) r8     // Catch: java.lang.Throwable -> L32
            boolean r5 = r8.isEmpty()     // Catch: java.lang.Throwable -> L32
            if (r5 != 0) goto L78
        L82:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r3)     // Catch: java.lang.Throwable -> L32
            r7.invoke()
            return r5
        L8a:
            r7.invoke()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.refreshInvalidation$room_runtime(java.lang.String[], kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }

    public final void refreshInvalidationAsync$room_runtime(@NotNull Function0<Unit> onRefreshScheduled, @NotNull Function0<Unit> onRefreshCompleted) {
        Intrinsics.checkNotNullParameter(onRefreshScheduled, "onRefreshScheduled");
        Intrinsics.checkNotNullParameter(onRefreshCompleted, "onRefreshCompleted");
        if (this.pendingRefresh.compareAndSet(false, true)) {
            onRefreshScheduled.invoke();
            gt.g.d(this.database.getCoroutineScope(), new f0("Room Invalidation Tracker Refresh"), null, new TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(this, onRefreshCompleted, null), 2, null);
        }
    }

    public final void resetSync$room_runtime() {
        this.observedTableStates.resetTriggerState$room_runtime();
    }

    public final void setOnAllowRefresh$room_runtime(@NotNull Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onAllowRefresh = function0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e7 A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #3 {all -> 0x003b, blocks: (B:12:0x0036, B:51:0x00de, B:54:0x00e7, B:63:0x0117, B:55:0x00ee, B:57:0x00f4, B:59:0x00fe, B:62:0x0115), top: B:75:0x0036 }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object syncTriggers$room_runtime(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r21) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.syncTriggers$room_runtime(rs.c):java.lang.Object");
    }

    @NotNull
    public final Pair<String[], int[]> validateTableNames$room_runtime(@NotNull String[] names) {
        Intrinsics.checkNotNullParameter(names, "names");
        String[] resolveViews = resolveViews(names);
        int length = resolveViews.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str = resolveViews[i10];
            Map<String, Integer> map = this.tableIdLookup;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            Integer num = map.get(lowerCase);
            if (num != null) {
                iArr[i10] = num.intValue();
            } else {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
        }
        return ms.k.a(resolveViews, iArr);
    }
}
