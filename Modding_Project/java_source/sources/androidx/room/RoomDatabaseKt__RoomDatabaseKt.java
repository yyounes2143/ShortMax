package androidx.room;

import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RoomDatabase.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRoomDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.kt\nandroidx/room/RoomDatabaseKt__RoomDatabaseKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,616:1\n1#2:617\n216#3,2:618\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.kt\nandroidx/room/RoomDatabaseKt__RoomDatabaseKt\n*L\n585#1:618,2\n*E\n"})
/* loaded from: classes2.dex */
public final /* synthetic */ class RoomDatabaseKt__RoomDatabaseKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006d A[PHI: r7 
      PHI: (r7v8 java.lang.Object) = (r7v7 java.lang.Object), (r7v1 java.lang.Object) binds: [B:20:0x006a, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <R> java.lang.Object useReaderConnection(@org.jetbrains.annotations.NotNull androidx.room.RoomDatabase r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.room.Transactor, ? super rs.c<? super R>, ? extends java.lang.Object> r6, @org.jetbrains.annotations.NotNull rs.c<? super R> r7) {
        /*
            boolean r0 = r7 instanceof androidx.room.RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1 r0 = (androidx.room.RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1 r0 = new androidx.room.RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r7)
            goto L6d
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            java.lang.Object r5 = r0.L$1
            r6 = r5
            kotlin.jvm.functions.Function2 r6 = (kotlin.jvm.functions.Function2) r6
            java.lang.Object r5 = r0.L$0
            androidx.room.RoomDatabase r5 = (androidx.room.RoomDatabase) r5
            kotlin.f.b(r7)
            goto L52
        L41:
            kotlin.f.b(r7)
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r4
            r7 = 0
            java.lang.Object r7 = androidx.room.util.DBUtil.getCoroutineContext(r5, r7, r0)
            if (r7 != r1) goto L52
            return r1
        L52:
            kotlin.coroutines.CoroutineContext r7 = (kotlin.coroutines.CoroutineContext) r7
            androidx.room.RoomExternalOperationElement r2 = androidx.room.RoomExternalOperationElement.INSTANCE
            kotlin.coroutines.CoroutineContext r7 = r7.plus(r2)
            androidx.room.RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$2 r2 = new androidx.room.RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$2
            r4 = 0
            r2.<init>(r5, r6, r4)
            r0.L$0 = r4
            r0.L$1 = r4
            r0.label = r3
            java.lang.Object r7 = gt.e.g(r7, r2, r0)
            if (r7 != r1) goto L6d
            return r1
        L6d:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabaseKt__RoomDatabaseKt.useReaderConnection(androidx.room.RoomDatabase, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0070 A[RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <R> java.lang.Object useWriterConnection(@org.jetbrains.annotations.NotNull androidx.room.RoomDatabase r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.room.Transactor, ? super rs.c<? super R>, ? extends java.lang.Object> r6, @org.jetbrains.annotations.NotNull rs.c<? super R> r7) {
        /*
            boolean r0 = r7 instanceof androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1 r0 = (androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1 r0 = new androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L45
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r5 = r0.L$0
            androidx.room.RoomDatabase r5 = (androidx.room.RoomDatabase) r5
            kotlin.f.b(r7)
            goto L71
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            java.lang.Object r5 = r0.L$1
            r6 = r5
            kotlin.jvm.functions.Function2 r6 = (kotlin.jvm.functions.Function2) r6
            java.lang.Object r5 = r0.L$0
            androidx.room.RoomDatabase r5 = (androidx.room.RoomDatabase) r5
            kotlin.f.b(r7)
            goto L56
        L45:
            kotlin.f.b(r7)
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r4
            r7 = 0
            java.lang.Object r7 = androidx.room.util.DBUtil.getCoroutineContext(r5, r7, r0)
            if (r7 != r1) goto L56
            return r1
        L56:
            kotlin.coroutines.CoroutineContext r7 = (kotlin.coroutines.CoroutineContext) r7
            androidx.room.RoomExternalOperationElement r2 = androidx.room.RoomExternalOperationElement.INSTANCE
            kotlin.coroutines.CoroutineContext r7 = r7.plus(r2)
            androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2 r2 = new androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2
            r4 = 0
            r2.<init>(r5, r6, r4)
            r0.L$0 = r5
            r0.L$1 = r4
            r0.label = r3
            java.lang.Object r7 = gt.e.g(r7, r2, r0)
            if (r7 != r1) goto L71
            return r1
        L71:
            androidx.room.InvalidationTracker r5 = r5.getInvalidationTracker()
            r5.refreshAsync()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabaseKt__RoomDatabaseKt.useWriterConnection(androidx.room.RoomDatabase, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    public static final void validateAutoMigrations(@NotNull RoomDatabase roomDatabase, @NotNull DatabaseConfiguration configuration) {
        Intrinsics.checkNotNullParameter(roomDatabase, "<this>");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Set<KClass<? extends AutoMigrationSpec>> requiredAutoMigrationSpecClasses = roomDatabase.getRequiredAutoMigrationSpecClasses();
        int size = configuration.autoMigrationSpecs.size();
        boolean[] zArr = new boolean[size];
        Iterator<KClass<? extends AutoMigrationSpec>> it = requiredAutoMigrationSpecClasses.iterator();
        while (true) {
            int i10 = -1;
            if (it.hasNext()) {
                KClass<? extends AutoMigrationSpec> next = it.next();
                int size2 = configuration.autoMigrationSpecs.size() - 1;
                if (size2 >= 0) {
                    while (true) {
                        int i11 = size2 - 1;
                        if (next.isInstance(configuration.autoMigrationSpecs.get(size2))) {
                            zArr[size2] = true;
                            i10 = size2;
                            break;
                        } else if (i11 < 0) {
                            break;
                        } else {
                            size2 = i11;
                        }
                    }
                }
                if (i10 >= 0) {
                    linkedHashMap.put(next, configuration.autoMigrationSpecs.get(i10));
                } else {
                    throw new IllegalArgumentException(("A required auto migration spec (" + next.getQualifiedName() + ") is missing in the database configuration.").toString());
                }
            } else {
                int size3 = configuration.autoMigrationSpecs.size() - 1;
                if (size3 >= 0) {
                    while (true) {
                        int i12 = size3 - 1;
                        if (size3 >= size || !zArr[size3]) {
                            break;
                        } else if (i12 < 0) {
                            break;
                        } else {
                            size3 = i12;
                        }
                    }
                    throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                }
                for (Migration migration : roomDatabase.createAutoMigrations(linkedHashMap)) {
                    if (!configuration.migrationContainer.contains(migration.startVersion, migration.endVersion)) {
                        configuration.migrationContainer.addMigration(migration);
                    }
                }
                return;
            }
        }
    }

    public static final void validateMigrationsNotRequired(@NotNull Set<Integer> migrationStartAndEndVersions, @NotNull Set<Integer> migrationsNotRequiredFrom) {
        Intrinsics.checkNotNullParameter(migrationStartAndEndVersions, "migrationStartAndEndVersions");
        Intrinsics.checkNotNullParameter(migrationsNotRequiredFrom, "migrationsNotRequiredFrom");
        if (!migrationStartAndEndVersions.isEmpty()) {
            for (Integer num : migrationStartAndEndVersions) {
                int intValue = num.intValue();
                if (migrationsNotRequiredFrom.contains(Integer.valueOf(intValue))) {
                    throw new IllegalArgumentException(("Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: " + intValue).toString());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006c A[LOOP:1: B:6:0x003b->B:18:0x006c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void validateTypeConverters(@org.jetbrains.annotations.NotNull androidx.room.RoomDatabase r9, @org.jetbrains.annotations.NotNull androidx.room.DatabaseConfiguration r10) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "configuration"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.util.Map r0 = r9.getRequiredTypeConverterClassesMap$room_runtime()
            java.util.List<java.lang.Object> r1 = r10.typeConverters
            int r1 = r1.size()
            boolean[] r1 = new boolean[r1]
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        L1e:
            boolean r2 = r0.hasNext()
            r3 = -1
            if (r2 == 0) goto La6
            java.lang.Object r2 = r0.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r4 = r2.getKey()
            kotlin.reflect.KClass r4 = (kotlin.reflect.KClass) r4
            java.lang.Object r2 = r2.getValue()
            java.util.List r2 = (java.util.List) r2
            java.util.Iterator r2 = r2.iterator()
        L3b:
            boolean r5 = r2.hasNext()
            if (r5 == 0) goto L1e
            java.lang.Object r5 = r2.next()
            kotlin.reflect.KClass r5 = (kotlin.reflect.KClass) r5
            java.util.List<java.lang.Object> r6 = r10.typeConverters
            java.util.Collection r6 = (java.util.Collection) r6
            int r6 = r6.size()
            int r6 = r6 + r3
            if (r6 < 0) goto L69
        L52:
            int r7 = r6 + (-1)
            java.util.List<java.lang.Object> r8 = r10.typeConverters
            java.lang.Object r8 = r8.get(r6)
            boolean r8 = r5.isInstance(r8)
            if (r8 == 0) goto L64
            r7 = 1
            r1[r6] = r7
            goto L6a
        L64:
            if (r7 >= 0) goto L67
            goto L69
        L67:
            r6 = r7
            goto L52
        L69:
            r6 = r3
        L6a:
            if (r6 < 0) goto L76
            java.util.List<java.lang.Object> r7 = r10.typeConverters
            java.lang.Object r6 = r7.get(r6)
            r9.addTypeConverter$room_runtime(r5, r6)
            goto L3b
        L76:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "A required type converter ("
            r9.append(r10)
            java.lang.String r10 = r5.getQualifiedName()
            r9.append(r10)
            java.lang.String r10 = ") for "
            r9.append(r10)
            java.lang.String r10 = r4.getQualifiedName()
            r9.append(r10)
            java.lang.String r10 = " is missing in the database configuration."
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r9 = r9.toString()
            r10.<init>(r9)
            throw r10
        La6:
            java.util.List<java.lang.Object> r9 = r10.typeConverters
            java.util.Collection r9 = (java.util.Collection) r9
            int r9 = r9.size()
            int r9 = r9 + r3
            if (r9 < 0) goto Lde
        Lb1:
            int r0 = r9 + (-1)
            boolean r2 = r1[r9]
            if (r2 == 0) goto Lbc
            if (r0 >= 0) goto Lba
            goto Lde
        Lba:
            r9 = r0
            goto Lb1
        Lbc:
            java.util.List<java.lang.Object> r10 = r10.typeConverters
            java.lang.Object r9 = r10.get(r9)
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Unexpected type converter "
            r0.append(r1)
            r0.append(r9)
            java.lang.String r9 = ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            r10.<init>(r9)
            throw r10
        Lde:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabaseKt__RoomDatabaseKt.validateTypeConverters(androidx.room.RoomDatabase, androidx.room.DatabaseConfiguration):void");
    }
}
