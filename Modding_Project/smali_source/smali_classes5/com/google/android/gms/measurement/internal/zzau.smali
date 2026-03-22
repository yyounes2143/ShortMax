.class final Lcom/google/android/gms/measurement/internal/zzau;
.super Lcom/google/android/gms/internal/measurement/zzby;
.source "com.google.android.gms:play-services-measurement@@23.0.0"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzav;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzav;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzav;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    const/4 p3, 0x1

    .line 8
    const-string v0, "google_app_measurement.db"

    .line 9
    .line 10
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzby;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzav;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzas()Lcom/google/android/gms/measurement/internal/zzog;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/32 v1, 0x36ee80

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzog;->zzc(J)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object v0

    .line 26
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzav;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzas()Lcom/google/android/gms/measurement/internal/zzog;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzog;->zza()V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "Opening the database failed, dropping and recreating it"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "google_app_measurement.db"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_0

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "Failed to delete corrupted db file"

    .line 78
    .line 79
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzas()Lcom/google/android/gms/measurement/internal/zzog;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzog;->zzb()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    .line 92
    .line 93
    return-object v1

    .line 94
    :catch_1
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzav;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "Failed to open freshly created database"

    .line 108
    .line 109
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    .line 114
    .line 115
    const-string v1, "Database open failed"

    .line 116
    .line 117
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzav;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzb(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzav;->zzai()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzav;

    .line 6
    .line 7
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 8
    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "events"

    .line 14
    .line 15
    const-string v3, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 16
    .line 17
    const-string v4, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp"

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const/4 v12, 0x0

    .line 28
    const-string v9, "events_snapshot"

    .line 29
    .line 30
    const-string v10, "CREATE TABLE IF NOT EXISTS events_snapshot ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, last_bundled_timestamp INTEGER, last_bundled_day INTEGER, last_sampled_complex_event_id INTEGER, last_sampling_rate INTEGER, last_exempt_from_sampling INTEGER, current_session_count INTEGER, PRIMARY KEY (app_id, name)) ;"

    .line 31
    .line 32
    const-string v11, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp,last_bundled_timestamp,last_bundled_day,last_sampled_complex_event_id,last_sampling_rate,last_exempt_from_sampling,current_session_count"

    .line 33
    .line 34
    move-object v8, p1

    .line 35
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v5, 0x0

    .line 43
    const-string v2, "conditional_properties"

    .line 44
    .line 45
    const-string v3, "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;"

    .line 46
    .line 47
    const-string v4, "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event"

    .line 48
    .line 49
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzav;->zzaj()[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const-string v9, "user_attributes"

    .line 61
    .line 62
    const-string v10, "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 63
    .line 64
    const-string v11, "app_id,name,set_timestamp,value"

    .line 65
    .line 66
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzav;->zzak()[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v2, "apps"

    .line 78
    .line 79
    const-string v3, "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;"

    .line 80
    .line 81
    const-string v4, "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp"

    .line 82
    .line 83
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzav;->zzam()[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    const-string v9, "queue"

    .line 95
    .line 96
    const-string v10, "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 97
    .line 98
    const-string v11, "app_id,bundle_end_timestamp,data"

    .line 99
    .line 100
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/4 v5, 0x0

    .line 108
    const-string v2, "raw_events_metadata"

    .line 109
    .line 110
    const-string v3, "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));"

    .line 111
    .line 112
    const-string v4, "app_id,metadata_fingerprint,metadata"

    .line 113
    .line 114
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzav;->zzal()[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    const-string v9, "raw_events"

    .line 126
    .line 127
    const-string v10, "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 128
    .line 129
    const-string v11, "app_id,name,timestamp,metadata_fingerprint,data"

    .line 130
    .line 131
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzav;->zzan()[Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v2, "event_filters"

    .line 143
    .line 144
    const-string v3, "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));"

    .line 145
    .line 146
    const-string v4, "app_id,audience_id,filter_id,event_name,data"

    .line 147
    .line 148
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzav;->zzao()[Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    const-string v9, "property_filters"

    .line 160
    .line 161
    const-string v10, "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));"

    .line 162
    .line 163
    const-string v11, "app_id,audience_id,filter_id,property_name,data"

    .line 164
    .line 165
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const/4 v5, 0x0

    .line 173
    const-string v2, "audience_filter_values"

    .line 174
    .line 175
    const-string v3, "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));"

    .line 176
    .line 177
    const-string v4, "app_id,audience_id,current_results"

    .line 178
    .line 179
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzav;->zzap()[Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    const-string v9, "app2"

    .line 191
    .line 192
    const-string v10, "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));"

    .line 193
    .line 194
    const-string v11, "app_id,first_open_count"

    .line 195
    .line 196
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const-string v4, "app_id,event_id,children_to_process,main_event"

    .line 204
    .line 205
    const-string v2, "main_event_params"

    .line 206
    .line 207
    const-string v3, "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 208
    .line 209
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    const/4 v12, 0x0

    .line 217
    const-string v9, "default_event_params"

    .line 218
    .line 219
    const-string v10, "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 220
    .line 221
    const-string v11, "app_id,parameters"

    .line 222
    .line 223
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzav;->zzaq()[Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v2, "consent_settings"

    .line 235
    .line 236
    const-string v3, "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));"

    .line 237
    .line 238
    const-string v4, "app_id,consent_state"

    .line 239
    .line 240
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqp;->zza()Z

    .line 244
    .line 245
    .line 246
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzav;->zzar()[Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    const-string v9, "trigger_uris"

    .line 255
    .line 256
    const-string v10, "CREATE TABLE IF NOT EXISTS trigger_uris ( app_id TEXT NOT NULL, trigger_uri TEXT NOT NULL, timestamp_millis INTEGER NOT NULL, source INTEGER NOT NULL);"

    .line 257
    .line 258
    const-string v11, "app_id,trigger_uri,source,timestamp_millis"

    .line 259
    .line 260
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzav;->zza:[Ljava/lang/String;

    .line 268
    .line 269
    const-string v2, "upload_queue"

    .line 270
    .line 271
    const-string v3, "CREATE TABLE IF NOT EXISTS upload_queue ( app_id TEXT NOT NULL, upload_uri TEXT NOT NULL, upload_headers TEXT NOT NULL, upload_type INTEGER NOT NULL, measurement_batch BLOB NOT NULL, retry_count INTEGER NOT NULL, creation_timestamp INTEGER NOT NULL );"

    .line 272
    .line 273
    const-string v4, "app_id,upload_uri,upload_headers,upload_type,measurement_batch,retry_count,creation_timestamp"

    .line 274
    .line 275
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    const-string v11, "app_id,name,data,timestamp_millis"

    .line 286
    .line 287
    const/4 v12, 0x0

    .line 288
    const-string v9, "no_data_mode_events"

    .line 289
    .line 290
    const-string v10, "CREATE TABLE IF NOT EXISTS no_data_mode_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, data BLOB NOT NULL, timestamp_millis INTEGER NOT NULL);"

    .line 291
    .line 292
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    return-void
.end method
