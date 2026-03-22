.class final Lcom/google/android/gms/measurement/internal/zzad;
.super Lcom/google/android/gms/measurement/internal/zzos;
.source "com.google.android.gms:play-services-measurement@@23.0.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/Set;

.field private zzc:Ljava/util/Map;

.field private zzd:Ljava/lang/Long;

.field private zze:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzos;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzc(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzy;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzy;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzy;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;[B)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private final zzd(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzy;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->zzc()Ljava/util/BitSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method


# virtual methods
.method final zzb(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;
    .locals 29
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v10, p0

    .line 1
    const-string v11, "current_results"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzb:Ljava/util/Set;

    .line 5
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzd:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzad;->zze:Ljava/lang/Long;

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhs;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v13

    goto :goto_0

    :cond_1
    move v1, v12

    .line 8
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpu;->zza()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 10
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzaF:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 11
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v14

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpu;->zza()Z

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzfy;->zzaE:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v15

    if-eqz v1, :cond_2

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 18
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    .line 19
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 20
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_session_count"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "events"

    const-string v6, "app_id = ?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 23
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error resetting session-scoped event counts. appId"

    .line 26
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v9, "Failed to merge filter. appId"

    const-string v8, "Database error querying filters. appId"

    const-string v7, "data"

    const-string v6, "audience_id"

    if-eqz v15, :cond_7

    if-eqz v14, :cond_7

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 29
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Landroidx/collection/ArrayMap;

    .line 30
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_1
    const-string v17, "event_filters"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    .line 32
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    :goto_2
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzff;->zzn()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzw(Lcom/google/android/gms/internal/measurement/zznl;[B)Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzff;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzff;->zzg()Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_4

    .line 37
    :cond_3
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 38
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_4
    move-object/from16 v12, v16

    .line 41
    :goto_3
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_2
    move-exception v0

    .line 42
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 43
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v12

    .line 44
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v12

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 45
    invoke-virtual {v12, v9, v13, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_5

    .line 47
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v12, v4

    goto :goto_a

    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_2

    .line 48
    :cond_6
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 49
    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v12, v0

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :goto_6
    const/4 v5, 0x0

    goto :goto_9

    :goto_7
    const/4 v5, 0x0

    .line 50
    :goto_8
    :try_start_6
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    invoke-virtual {v2, v8, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_7

    goto :goto_5

    :goto_9
    if-eqz v5, :cond_8

    .line 55
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_8
    throw v0

    .line 57
    :goto_a
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 61
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_7
    const-string v17, "audience_filter_values"

    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    .line 63
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 64
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 66
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v13, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    goto/16 :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v18, v6

    :goto_b
    move-object/from16 v19, v7

    goto/16 :goto_11

    .line 67
    :cond_9
    :try_start_9
    new-instance v5, Landroidx/collection/ArrayMap;

    .line 68
    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    :goto_c
    const/4 v13, 0x0

    .line 69
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v13, 0x1

    .line 70
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 71
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzii;->zzi()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzw(Lcom/google/android/gms/internal/measurement/zznl;[B)Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzii;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 72
    :try_start_b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_d

    :catch_5
    move-exception v0

    .line 73
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 74
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v13

    .line 75
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v13

    move-object/from16 v17, v5

    const-string v5, "Failed to merge filter results. appId, audienceId, error"
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v18, v6

    :try_start_c
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v19, v7

    .line 76
    :try_start_d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 77
    invoke-virtual {v13, v5, v6, v7, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-nez v0, :cond_a

    .line 79
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object/from16 v13, v17

    goto :goto_12

    :cond_a
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_b

    :goto_e
    move-object v5, v4

    goto/16 :goto_54

    :catchall_3
    move-exception v0

    goto :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_10

    :goto_f
    const/4 v5, 0x0

    goto/16 :goto_54

    :goto_10
    const/4 v4, 0x0

    .line 80
    :goto_11
    :try_start_e
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v5, "Database error querying filter results. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    invoke-virtual {v2, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v4, :cond_b

    .line 85
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object v13, v0

    .line 86
    :goto_12
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v12, v8

    move-object v13, v9

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    goto/16 :goto_2b

    .line 87
    :cond_c
    new-instance v2, Ljava/util/HashSet;

    .line 88
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_1b

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v3

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 90
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 91
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 92
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroidx/collection/ArrayMap;

    .line 93
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 94
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    :try_start_f
    const-string v6, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    filled-new-array {v4, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 96
    :try_start_10
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_d
    const/4 v6, 0x0

    .line 97
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_e

    new-instance v7, Ljava/util/ArrayList;

    .line 99
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const/4 v6, 0x1

    goto :goto_13

    :catchall_4
    move-exception v0

    goto/16 :goto_1f

    :catch_9
    move-exception v0

    goto :goto_17

    .line 101
    :goto_13
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 102
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-nez v6, :cond_d

    .line 104
    :goto_14
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_18

    .line 105
    :cond_f
    :try_start_11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_14

    :catchall_5
    move-exception v0

    goto :goto_15

    :catch_a
    move-exception v0

    goto :goto_16

    :goto_15
    const/4 v5, 0x0

    goto/16 :goto_1f

    :goto_16
    const/4 v5, 0x0

    .line 106
    :goto_17
    :try_start_12
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 107
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    const-string v6, "Database error querying scoped filters. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 109
    invoke-virtual {v3, v6, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v5, :cond_10

    goto :goto_14

    .line 111
    :cond_10
    :goto_18
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/collection/ArrayMap;

    .line 113
    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 114
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    move-object/from16 v22, v8

    goto/16 :goto_1e

    .line 115
    :cond_12
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 116
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzii;

    .line 117
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_13

    .line 118
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_13
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v22, v8

    goto/16 :goto_1d

    .line 119
    :cond_14
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    move-object/from16 v16, v0

    .line 120
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v0

    move-object/from16 v17, v3

    .line 121
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzii;->zzc()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzpk;->zzq(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 123
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzih;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzih;->zzd()Lcom/google/android/gms/internal/measurement/zzih;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzih;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzih;

    .line 124
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v0

    .line 125
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzii;->zza()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/google/android/gms/measurement/internal/zzpk;->zzq(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzih;->zzb()Lcom/google/android/gms/internal/measurement/zzih;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzih;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v0, Ljava/util/ArrayList;

    .line 127
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzii;->zze()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v7

    move-object/from16 v7, v20

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 129
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhq;->zzb()I

    move-result v20

    move-object/from16 v22, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 130
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object/from16 v7, v21

    move-object/from16 v8, v22

    goto :goto_1a

    :cond_16
    move-object/from16 v22, v8

    .line 131
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzih;

    .line 132
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzih;->zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v0, Ljava/util/ArrayList;

    .line 133
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzii;->zzg()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzik;

    .line 135
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzik;->zzb()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 136
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 137
    :cond_18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzih;->zzh()Lcom/google/android/gms/internal/measurement/zzih;

    .line 138
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzih;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzih;

    .line 139
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzii;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v8, v22

    goto/16 :goto_19

    :cond_19
    move-object/from16 v0, v16

    move-object/from16 v3, v17

    goto/16 :goto_19

    .line 140
    :goto_1d
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :goto_1e
    move-object v0, v1

    goto :goto_20

    :goto_1f
    if-eqz v5, :cond_1a

    .line 141
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_1a
    throw v0

    :cond_1b
    move-object/from16 v22, v8

    move-object v0, v13

    .line 143
    :goto_20
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_21
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 144
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzii;

    new-instance v5, Ljava/util/BitSet;

    .line 145
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    .line 146
    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Landroidx/collection/ArrayMap;

    .line 147
    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_1f

    .line 148
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzf()I

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_24

    .line 149
    :cond_1c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzii;->zze()Ljava/util/List;

    move-result-object v2

    .line 150
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 151
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zza()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 152
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 153
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzc()Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 154
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_23

    :cond_1e
    const/4 v3, 0x0

    .line 155
    :goto_23
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 156
    :cond_1f
    :goto_24
    new-instance v4, Landroidx/collection/ArrayMap;

    .line 157
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_20

    .line 158
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzh()I

    move-result v2

    if-nez v2, :cond_21

    :cond_20
    move-object/from16 v20, v0

    goto :goto_26

    .line 159
    :cond_21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzg()Ljava/util/List;

    move-result-object v2

    .line 160
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzik;

    .line 161
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzik;->zza()Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzik;->zzd()I

    move-result v17

    if-lez v17, :cond_22

    .line 162
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzik;->zzb()I

    move-result v17

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 163
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzik;->zzd()I

    move-result v17

    move-object/from16 v21, v2

    add-int/lit8 v2, v17, -0x1

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzik;->zze(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 164
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    goto :goto_25

    :goto_26
    if-eqz v1, :cond_25

    const/4 v0, 0x0

    .line 165
    :goto_27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzb()I

    move-result v2

    mul-int/lit8 v2, v2, 0x40

    if-ge v0, v2, :cond_25

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzii;->zza()Ljava/util/List;

    move-result-object v2

    .line 166
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzn(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 167
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v17, v9

    const-string v9, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v2, v9, v8, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzc()Ljava/util/List;

    move-result-object v2

    .line 171
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzn(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 172
    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_28

    :cond_23
    move-object/from16 v17, v9

    .line 173
    :cond_24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, v17

    goto :goto_27

    :cond_25
    move-object/from16 v17, v9

    .line 174
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzii;

    if-eqz v15, :cond_2a

    if-eqz v14, :cond_2a

    .line 175
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2a

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzad;->zze:Ljava/lang/Long;

    if-eqz v2, :cond_2a

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzd:Ljava/lang/Long;

    if-nez v2, :cond_26

    goto :goto_2a

    .line 176
    :cond_26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzff;

    .line 177
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzff;->zzb()I

    move-result v3

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzad;->zze:Ljava/lang/Long;

    .line 178
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    div-long v23, v23, v25

    .line 179
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzff;->zzj()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzd:Ljava/lang/Long;

    .line 180
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    div-long v23, v23, v25

    .line 181
    :cond_28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 182
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_29
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 184
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 185
    :cond_2a
    :goto_2a
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    const/16 v21, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v23, v4

    move-object v4, v0

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    move-object v0, v8

    move-object/from16 v18, v12

    move-object/from16 v12, v22

    move-object/from16 v8, v23

    move-object/from16 p1, v13

    move-object/from16 v13, v17

    move/from16 v17, v14

    move-object v14, v9

    move-object/from16 v9, v21

    .line 186
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzii;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;[B)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Ljava/util/Map;

    .line 187
    invoke-interface {v1, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v13

    move/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v0, v20

    move-object/from16 v18, v27

    move-object/from16 v13, p1

    goto/16 :goto_21

    :cond_2b
    move-object v13, v9

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    move-object/from16 v12, v22

    .line 188
    :goto_2b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-eqz v0, :cond_2d

    :cond_2c
    move-object/from16 v24, v11

    move-object/from16 v11, v27

    goto/16 :goto_3b

    .line 189
    :cond_2d
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzz;

    const/4 v3, 0x0

    .line 190
    invoke-direct {v2, v10, v3}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzad;[B)V

    new-instance v4, Landroidx/collection/ArrayMap;

    .line 191
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 192
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 193
    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhs;)Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v6

    if-eqz v6, :cond_39

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 194
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v8

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v14

    .line 195
    invoke-virtual {v8, v9, v0, v14}, Lcom/google/android/gms/measurement/internal/zzav;->zzaf(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v8

    .line 196
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzav;->zzh(Lcom/google/android/gms/measurement/internal/zzbc;)V

    if-nez p6, :cond_39

    iget-wide v14, v8, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v9

    .line 198
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_33

    .line 199
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v7

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 200
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 201
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 202
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 p1, v2

    new-instance v2, Landroidx/collection/ArrayMap;

    .line 204
    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 205
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_13
    const-string v17, "event_filters"
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-object/from16 p2, v5

    move-object/from16 v24, v11

    move-object/from16 v11, v27

    move-object/from16 v5, v28

    :try_start_14
    filled-new-array {v11, v5}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id=? AND event_name=?"

    filled-new-array {v3, v9}, [Ljava/lang/String;

    move-result-object v20
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-wide/from16 v25, v14

    .line 206
    :try_start_15
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 207
    :try_start_16
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    :goto_2d
    const/4 v15, 0x1

    .line 208
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 209
    :try_start_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzff;->zzn()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v15

    invoke-static {v15, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzw(Lcom/google/android/gms/internal/measurement/zznl;[B)Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzff;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    const/4 v15, 0x0

    .line 210
    :try_start_18
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 211
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    if-nez v16, :cond_2e

    move-object/from16 v28, v5

    :try_start_19
    new-instance v5, Ljava/util/ArrayList;

    .line 212
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-interface {v2, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :catchall_6
    move-exception v0

    goto :goto_30

    :catch_b
    move-exception v0

    goto :goto_31

    :cond_2e
    move-object/from16 v28, v5

    move-object/from16 v5, v16

    .line 214
    :goto_2e
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :catch_c
    move-exception v0

    move-object/from16 v28, v5

    goto :goto_31

    :catch_d
    move-exception v0

    move-object/from16 v28, v5

    .line 215
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 216
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    .line 217
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 218
    invoke-virtual {v5, v13, v15, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    :goto_2f
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-nez v0, :cond_2f

    .line 220
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    goto :goto_35

    :cond_2f
    move-object/from16 v5, v28

    goto :goto_2d

    :cond_30
    move-object/from16 v28, v5

    .line 221
    :try_start_1a
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 222
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_35

    :goto_30
    move-object v5, v14

    goto :goto_36

    :goto_31
    move-object v5, v14

    goto :goto_34

    :catchall_7
    move-exception v0

    goto :goto_32

    :catch_e
    move-exception v0

    move-object/from16 v28, v5

    goto :goto_33

    :catch_f
    move-exception v0

    move-object/from16 v28, v5

    move-wide/from16 v25, v14

    goto :goto_33

    :goto_32
    const/4 v5, 0x0

    goto :goto_36

    :catch_10
    move-exception v0

    move-object/from16 p2, v5

    move-object/from16 v24, v11

    move-wide/from16 v25, v14

    move-object/from16 v11, v27

    :goto_33
    const/4 v5, 0x0

    .line 223
    :goto_34
    :try_start_1b
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 224
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 226
    invoke-virtual {v2, v12, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    if-eqz v5, :cond_31

    .line 228
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_31
    :goto_35
    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :catchall_8
    move-exception v0

    :goto_36
    if-eqz v5, :cond_32

    .line 230
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_32
    throw v0

    :cond_33
    move-object/from16 p1, v2

    move-object/from16 p2, v5

    move-object/from16 v24, v11

    move-wide/from16 v25, v14

    move-object/from16 v11, v27

    .line 232
    :goto_37
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzb:Ljava/util/Set;

    .line 233
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 234
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    .line 235
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_38

    .line 236
    :cond_34
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 237
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x1

    :goto_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_36

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzff;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 238
    invoke-direct {v15, v10, v14, v5, v9}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzff;)V

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzd:Ljava/lang/Long;

    move-object/from16 v22, v0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzad;->zze:Ljava/lang/Long;

    .line 239
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzff;->zzb()I

    move-result v9

    invoke-direct {v10, v5, v9}, Lcom/google/android/gms/measurement/internal/zzad;->zzd(II)Z

    move-result v21

    move-object v9, v14

    move-object v14, v15

    move-object/from16 v23, v2

    move-object v2, v15

    move-object v15, v9

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move-wide/from16 v18, v25

    move-object/from16 v20, v8

    .line 240
    invoke-virtual/range {v14 .. v21}, Lcom/google/android/gms/measurement/internal/zzaa;->zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzhs;JLcom/google/android/gms/measurement/internal/zzbc;Z)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 241
    invoke-direct {v10, v3}, Lcom/google/android/gms/measurement/internal/zzad;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzab;)V

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_39

    :cond_35
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzb:Ljava/util/Set;

    .line 243
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_36
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    :goto_3a
    if-nez v9, :cond_37

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzb:Ljava/util/Set;

    .line 244
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_37
    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto/16 :goto_38

    :cond_38
    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v27, v11

    move-object/from16 v11, v24

    const/4 v3, 0x0

    goto/16 :goto_2c

    :cond_39
    move-object/from16 v24, v11

    goto/16 :goto_2c

    :goto_3b
    if-nez p6, :cond_4e

    .line 245
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto/16 :goto_50

    .line 246
    :cond_3a
    new-instance v2, Landroidx/collection/ArrayMap;

    .line 247
    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 248
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/zziu;

    .line 249
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zziu;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_40

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 251
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 252
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 253
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 254
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Landroidx/collection/ArrayMap;

    .line 256
    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    .line 257
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    :try_start_1c
    const-string v14, "property_filters"
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_15
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    move-object/from16 v9, v28

    :try_start_1d
    filled-new-array {v11, v9}, [Ljava/lang/String;

    move-result-object v15

    const-string v16, "app_id=? AND property_name=?"

    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    .line 258
    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_14
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 259
    :try_start_1e
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3d

    :goto_3d
    const/4 v14, 0x1

    .line 260
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_11
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 261
    :try_start_1f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfn;->zzi()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v15

    invoke-static {v15, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzw(Lcom/google/android/gms/internal/measurement/zznl;[B)Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfn;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_11
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    const/4 v15, 0x0

    .line 262
    :try_start_20
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 263
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_3b

    new-instance v15, Ljava/util/ArrayList;

    .line 264
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :catchall_9
    move-exception v0

    goto :goto_41

    :catch_11
    move-exception v0

    move-object/from16 p1, v3

    goto :goto_44

    :cond_3b
    move-object/from16 v15, v16

    .line 266
    :goto_3e
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p1, v3

    goto :goto_3f

    :catch_12
    move-exception v0

    .line 267
    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 268
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v14

    .line 269
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v14

    const-string v15, "Failed to merge filter"
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_11
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    move-object/from16 p1, v3

    :try_start_21
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v15, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    :goto_3f
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_13
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    if-nez v0, :cond_3c

    .line 271
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_45

    :cond_3c
    move-object/from16 v3, p1

    goto :goto_3d

    :catch_13
    move-exception v0

    goto :goto_44

    :cond_3d
    move-object/from16 p1, v3

    .line 272
    :try_start_22
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_22} :catch_13
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 273
    :goto_40
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_45

    :goto_41
    move-object v5, v13

    goto :goto_46

    :catchall_a
    move-exception v0

    goto :goto_42

    :catch_14
    move-exception v0

    move-object/from16 p1, v3

    goto :goto_43

    :goto_42
    const/4 v5, 0x0

    goto :goto_46

    :catch_15
    move-exception v0

    move-object/from16 p1, v3

    move-object/from16 v9, v28

    :goto_43
    const/4 v13, 0x0

    .line 274
    :goto_44
    :try_start_23
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 275
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 277
    invoke-virtual {v3, v12, v6, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    if-eqz v13, :cond_3e

    goto :goto_40

    .line 279
    :cond_3e
    :goto_45
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    :goto_46
    if-eqz v5, :cond_3f

    .line 280
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_3f
    throw v0

    :cond_40
    move-object/from16 p1, v3

    move-object/from16 v9, v28

    .line 282
    :goto_47
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzb:Ljava/util/Set;

    .line 283
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_41
    move-object/from16 v3, p1

    move-object/from16 v28, v9

    goto/16 :goto_3c

    .line 286
    :cond_42
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 287
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v13, 0x1

    :goto_49
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfn;

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 288
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v14

    .line 289
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgu;->zzn()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_44

    .line 290
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v14

    .line 291
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v14

    .line 292
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()Z

    move-result v15

    if-eqz v15, :cond_43

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 p2, v0

    goto :goto_4a

    :cond_43
    move-object/from16 p2, v0

    const/4 v15, 0x0

    .line 293
    :goto_4a
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v0

    move-object/from16 v16, v1

    .line 294
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Evaluating filter. audience, filter, property"

    .line 295
    invoke-virtual {v14, v1, v5, v15, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 298
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v1

    .line 299
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzpk;->zzk(Lcom/google/android/gms/internal/measurement/zzfn;)Ljava/lang/String;

    move-result-object v1

    const-string v14, "Filter definition"

    invoke-virtual {v0, v14, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4b

    :cond_44
    move-object/from16 p2, v0

    move-object/from16 v16, v1

    .line 300
    :goto_4b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_45

    goto :goto_4c

    .line 301
    :cond_45
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 302
    invoke-direct {v0, v10, v1, v6, v8}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfn;)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzd:Ljava/lang/Long;

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzad;->zze:Ljava/lang/Long;

    .line 303
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v8

    invoke-direct {v10, v6, v8}, Lcom/google/android/gms/measurement/internal/zzad;->zzd(II)Z

    move-result v8

    .line 304
    invoke-virtual {v0, v1, v13, v4, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zziu;Z)Z

    move-result v13

    if-eqz v13, :cond_46

    .line 305
    invoke-direct {v10, v5}, Lcom/google/android/gms/measurement/internal/zzad;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 306
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzab;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    goto/16 :goto_49

    :cond_46
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzb:Ljava/util/Set;

    .line 307
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 308
    :cond_47
    :goto_4c
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 310
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4d

    :cond_48
    const/4 v6, 0x0

    :goto_4d
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid property filter ID. appId, id"

    .line 311
    invoke-virtual {v0, v7, v1, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4f

    :cond_49
    move-object/from16 p2, v0

    move-object/from16 v16, v1

    :goto_4e
    if-nez v13, :cond_4a

    :goto_4f
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzb:Ljava/util/Set;

    .line 312
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4a
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    goto/16 :goto_48

    .line 313
    :cond_4b
    :goto_50
    new-instance v1, Ljava/util/ArrayList;

    .line 314
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Ljava/util/Map;

    .line 315
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzb:Ljava/util/Set;

    .line 316
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 317
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Ljava/util/Map;

    .line 318
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzy;

    .line 319
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(I)Lcom/google/android/gms/internal/measurement/zzhg;

    move-result-object v3

    .line 321
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 322
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v4

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 323
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v3

    .line 324
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 325
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 326
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    move-result-object v3

    new-instance v6, Landroid/content/ContentValues;

    .line 329
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    .line 330
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v6, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v7, v24

    .line 332
    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 333
    :try_start_24
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "audience_filter_values"
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_24} :catch_17

    const/4 v8, 0x5

    const/4 v9, 0x0

    .line 334
    :try_start_25
    invoke-virtual {v0, v3, v9, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v0, v12, v14

    if-nez v0, :cond_4c

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 335
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v3, "Failed to insert filter results (got -1). appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 337
    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_25} :catch_16

    :cond_4c
    :goto_52
    move-object/from16 v24, v7

    goto :goto_51

    :catch_16
    move-exception v0

    goto :goto_53

    :catch_17
    move-exception v0

    const/4 v9, 0x0

    .line 338
    :goto_53
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 339
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    .line 340
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error storing filter results. appId"

    .line 341
    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_52

    :cond_4d
    return-object v1

    .line 342
    :cond_4e
    new-instance v0, Ljava/util/ArrayList;

    .line 343
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :goto_54
    if-eqz v5, :cond_4f

    .line 344
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_4f
    throw v0
.end method

.method protected final zzbb()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
