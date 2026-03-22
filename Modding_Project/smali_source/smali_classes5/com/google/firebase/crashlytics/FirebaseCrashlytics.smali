.class public Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.java"


# instance fields
.field final a:Lcom/google/firebase/crashlytics/internal/common/y;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/y;)V
    .locals 0
    .param p1    # Lcom/google/firebase/crashlytics/internal/common/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->c(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static b(Lcom/google/firebase/f;Lx8/e;Lw8/a;Lw8/a;Lw8/a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 18
    .param p0    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lx8/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lw8/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lw8/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lw8/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lx8/e;",
            "Lw8/a<",
            "Lz7/a;",
            ">;",
            "Lw8/a<",
            "Ln7/a;",
            ">;",
            "Lw8/a<",
            "Lh9/a;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/google/firebase/crashlytics/FirebaseCrashlytics;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/f;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "Initializing Firebase Crashlytics "

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/y;->q()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, " for "

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lz7/g;->g(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v15, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    .line 46
    .line 47
    move-object/from16 v2, p5

    .line 48
    .line 49
    move-object/from16 v3, p6

    .line 50
    .line 51
    invoke-direct {v15, v2, v3}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lh8/g;

    .line 55
    .line 56
    invoke-direct {v3, v1}, Lh8/g;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 60
    .line 61
    move-object/from16 v14, p0

    .line 62
    .line 63
    invoke-direct {v2, v14}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Lcom/google/firebase/f;)V

    .line 64
    .line 65
    .line 66
    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/i0;

    .line 67
    .line 68
    move-object/from16 v4, p1

    .line 69
    .line 70
    invoke-direct {v13, v1, v0, v4, v2}, Lcom/google/firebase/crashlytics/internal/common/i0;-><init>(Landroid/content/Context;Ljava/lang/String;Lx8/e;Lcom/google/firebase/crashlytics/internal/common/e0;)V

    .line 71
    .line 72
    .line 73
    new-instance v7, Lz7/d;

    .line 74
    .line 75
    move-object/from16 v0, p2

    .line 76
    .line 77
    invoke-direct {v7, v0}, Lz7/d;-><init>(Lw8/a;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Ly7/d;

    .line 81
    .line 82
    move-object/from16 v4, p3

    .line 83
    .line 84
    invoke-direct {v0, v4}, Ly7/d;-><init>(Lw8/a;)V

    .line 85
    .line 86
    .line 87
    new-instance v12, Lcom/google/firebase/crashlytics/internal/common/l;

    .line 88
    .line 89
    invoke-direct {v12, v2, v3}, Lcom/google/firebase/crashlytics/internal/common/l;-><init>(Lcom/google/firebase/crashlytics/internal/common/e0;Lh8/g;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v12}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->e(Lcom/google/firebase/sessions/api/SessionSubscriber;)V

    .line 93
    .line 94
    .line 95
    new-instance v11, Lz7/l;

    .line 96
    .line 97
    move-object/from16 v4, p4

    .line 98
    .line 99
    invoke-direct {v11, v4}, Lz7/l;-><init>(Lw8/a;)V

    .line 100
    .line 101
    .line 102
    new-instance v10, Lcom/google/firebase/crashlytics/internal/common/y;

    .line 103
    .line 104
    invoke-virtual {v0}, Ly7/d;->e()Lb8/b;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {v0}, Ly7/d;->d()La8/a;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    move-object v4, v10

    .line 113
    move-object/from16 v5, p0

    .line 114
    .line 115
    move-object v6, v13

    .line 116
    move-object v8, v2

    .line 117
    move-object/from16 v16, v10

    .line 118
    .line 119
    move-object v10, v0

    .line 120
    move-object v0, v11

    .line 121
    move-object v11, v3

    .line 122
    move-object/from16 v17, v13

    .line 123
    .line 124
    move-object v13, v0

    .line 125
    move-object v14, v15

    .line 126
    invoke-direct/range {v4 .. v14}, Lcom/google/firebase/crashlytics/internal/common/y;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/crashlytics/internal/common/i0;Lz7/a;Lcom/google/firebase/crashlytics/internal/common/e0;Lb8/b;La8/a;Lh8/g;Lcom/google/firebase/crashlytics/internal/common/l;Lz7/l;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/f;->p()Lcom/google/firebase/m;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->j(Landroid/content/Context;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v8, "Mapping file ID is: "

    .line 155
    .line 156
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v6, v7}, Lz7/g;->b(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_0

    .line 178
    .line 179
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    check-cast v7, Lcom/google/firebase/crashlytics/internal/common/f;

    .line 184
    .line 185
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-virtual {v7}, Lcom/google/firebase/crashlytics/internal/common/f;->c()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v7}, Lcom/google/firebase/crashlytics/internal/common/f;->a()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    invoke-virtual {v7}, Lcom/google/firebase/crashlytics/internal/common/f;->b()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    filled-new-array {v9, v10, v7}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    const-string v9, "Build id for %s on %s: %s"

    .line 206
    .line 207
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {v8, v7}, Lz7/g;->b(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_0
    new-instance v6, Lz7/f;

    .line 216
    .line 217
    invoke-direct {v6, v1}, Lz7/f;-><init>(Landroid/content/Context;)V

    .line 218
    .line 219
    .line 220
    move-object/from16 p0, v1

    .line 221
    .line 222
    move-object/from16 p1, v17

    .line 223
    .line 224
    move-object/from16 p2, v0

    .line 225
    .line 226
    move-object/from16 p3, v4

    .line 227
    .line 228
    move-object/from16 p4, v5

    .line 229
    .line 230
    move-object/from16 p5, v6

    .line 231
    .line 232
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/google/firebase/crashlytics/internal/common/a;->a(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/i0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lz7/f;)Lcom/google/firebase/crashlytics/internal/common/a;

    .line 233
    .line 234
    .line 235
    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v6, "Installer package name is: "

    .line 246
    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v6, v9, Lcom/google/firebase/crashlytics/internal/common/a;->d:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v4, v5}, Lz7/g;->i(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    new-instance v4, Lg8/b;

    .line 263
    .line 264
    invoke-direct {v4}, Lg8/b;-><init>()V

    .line 265
    .line 266
    .line 267
    iget-object v5, v9, Lcom/google/firebase/crashlytics/internal/common/a;->f:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v6, v9, Lcom/google/firebase/crashlytics/internal/common/a;->g:Ljava/lang/String;

    .line 270
    .line 271
    move-object v8, v2

    .line 272
    move-object v2, v0

    .line 273
    move-object v0, v3

    .line 274
    move-object/from16 v3, v17

    .line 275
    .line 276
    move-object v7, v0

    .line 277
    invoke-static/range {v1 .. v8}, Lcom/google/firebase/crashlytics/internal/settings/e;->l(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/i0;Lg8/b;Ljava/lang/String;Ljava/lang/String;Lh8/g;Lcom/google/firebase/crashlytics/internal/common/e0;)Lcom/google/firebase/crashlytics/internal/settings/e;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0, v15}, Lcom/google/firebase/crashlytics/internal/settings/e;->o(Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)Lcom/google/android/gms/tasks/Task;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    new-instance v2, Ly7/h;

    .line 286
    .line 287
    invoke-direct {v2}, Ly7/h;-><init>()V

    .line 288
    .line 289
    .line 290
    move-object/from16 v3, p7

    .line 291
    .line 292
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 293
    .line 294
    .line 295
    move-object/from16 v1, v16

    .line 296
    .line 297
    invoke-virtual {v1, v9, v0}, Lcom/google/firebase/crashlytics/internal/common/y;->F(Lcom/google/firebase/crashlytics/internal/common/a;Lj8/b;)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_1

    .line 302
    .line 303
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/y;->o(Lj8/b;)Lcom/google/android/gms/tasks/Task;

    .line 304
    .line 305
    .line 306
    :cond_1
    new-instance v0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 307
    .line 308
    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;-><init>(Lcom/google/firebase/crashlytics/internal/common/y;)V

    .line 309
    .line 310
    .line 311
    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    move-object v1, v0

    .line 314
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const-string v2, "Error retrieving app package info."

    .line 319
    .line 320
    invoke-virtual {v0, v2, v1}, Lz7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    const/4 v0, 0x0

    .line 324
    return-object v0
.end method

.method private static synthetic c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Error fetching settings."

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Lz7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/f;->m()Lcom/google/firebase/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 17
    .line 18
    const-string v1, "FirebaseCrashlytics component is not present."

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method


# virtual methods
.method public checkForUnsentReports()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->j()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public deleteUnsentReports()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->k()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public didCrashOnPreviousExecution()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isCrashlyticsCollectionEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->s()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/y;->B(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public recordException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lz7/g;->f()Lz7/g;

    move-result-object p1

    const-string v0, "A null value was passed to recordException. Ignoring."

    invoke-virtual {p1, v0}, Lz7/g;->k(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/crashlytics/internal/common/y;->C(Ljava/lang/Throwable;Ljava/util/Map;)V

    return-void
.end method

.method public recordException(Ljava/lang/Throwable;Ly7/g;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ly7/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lz7/g;->f()Lz7/g;

    move-result-object p1

    const-string p2, "A null value was passed to recordException. Ignoring."

    invoke-virtual {p1, p2}, Lz7/g;->k(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public sendUnsentReports()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->G()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCrashlyticsCollectionEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/y;->H(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCrashlyticsCollectionEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/y;->H(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;D)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/y;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;F)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/y;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/y;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/y;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/y;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/y;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKeys(Ly7/g;)V
    .locals 0
    .param p1    # Ly7/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/y;->J(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
