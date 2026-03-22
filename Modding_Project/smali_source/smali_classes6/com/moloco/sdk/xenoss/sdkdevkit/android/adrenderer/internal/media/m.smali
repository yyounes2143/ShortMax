.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/l;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cacheDir"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->b:Ljava/lang/String;

    .line 17
    .line 18
    const-string p1, "MediaCacheLocationProviderImpl"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->c:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a()Lcom/moloco/sdk/internal/g0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moloco/sdk/internal/g0<",
            "Ljava/io/File;",
            "Lcom/moloco/sdk/internal/q;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Failed to create cache directory in external storage"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/io/File;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Lcom/moloco/sdk/internal/g0$b;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :catch_0
    move-exception v1

    .line 34
    move-object v5, v1

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception v1

    .line 37
    move-object v5, v1

    .line 38
    goto :goto_1

    .line 39
    :catch_2
    move-exception v1

    .line 40
    move-object v5, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->c:Ljava/lang/String;

    .line 45
    .line 46
    const-string v4, "Failed to create cache directory in external storage"

    .line 47
    .line 48
    const/16 v7, 0xc

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 57
    .line 58
    new-instance v2, Lcom/moloco/sdk/internal/q;

    .line 59
    .line 60
    const/16 v3, 0x66

    .line 61
    .line 62
    invoke-direct {v2, v0, v3}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :goto_0
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->c:Ljava/lang/String;

    .line 72
    .line 73
    const/16 v7, 0x8

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    const-string v4, "Failed to create cache directory in external storage"

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 83
    .line 84
    new-instance v2, Lcom/moloco/sdk/internal/q;

    .line 85
    .line 86
    const/16 v3, 0xc8

    .line 87
    .line 88
    invoke-direct {v2, v0, v3}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :goto_1
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->c:Ljava/lang/String;

    .line 98
    .line 99
    const/16 v7, 0x8

    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    const-string v4, "Failed to create cache directory in external storage"

    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 109
    .line 110
    new-instance v2, Lcom/moloco/sdk/internal/q;

    .line 111
    .line 112
    const/16 v3, 0x64

    .line 113
    .line 114
    invoke-direct {v2, v0, v3}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :goto_2
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 122
    .line 123
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->c:Ljava/lang/String;

    .line 124
    .line 125
    const/16 v7, 0x8

    .line 126
    .line 127
    const/4 v8, 0x0

    .line 128
    const-string v4, "Failed to create cache directory in external storage"

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 135
    .line 136
    new-instance v2, Lcom/moloco/sdk/internal/q;

    .line 137
    .line 138
    const/16 v3, 0x65

    .line 139
    .line 140
    invoke-direct {v2, v0, v3}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-object v1
.end method

.method public b()Lcom/moloco/sdk/internal/g0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moloco/sdk/internal/g0<",
            "Ljava/io/File;",
            "Lcom/moloco/sdk/internal/q;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Failed to create cache directory in internal storage"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->c:Ljava/lang/String;

    .line 36
    .line 37
    const-string v5, "Able to write to internal storage cache directory"

    .line 38
    .line 39
    const/4 v7, 0x4

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-static/range {v3 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lcom/moloco/sdk/internal/g0$b;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object v2

    .line 51
    :catch_0
    move-exception v1

    .line 52
    move-object v5, v1

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception v1

    .line 55
    move-object v5, v1

    .line 56
    goto :goto_1

    .line 57
    :catch_2
    move-exception v1

    .line 58
    move-object v5, v1

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->c:Ljava/lang/String;

    .line 63
    .line 64
    const-string v4, "Failed to create cache directory in internal storage"

    .line 65
    .line 66
    const/16 v7, 0xc

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 75
    .line 76
    new-instance v2, Lcom/moloco/sdk/internal/q;

    .line 77
    .line 78
    const/16 v3, 0x66

    .line 79
    .line 80
    invoke-direct {v2, v0, v3}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :goto_0
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->c:Ljava/lang/String;

    .line 90
    .line 91
    const/16 v7, 0x8

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    const-string v4, "Failed to create cache directory in external storage"

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 101
    .line 102
    new-instance v2, Lcom/moloco/sdk/internal/q;

    .line 103
    .line 104
    const/16 v3, 0xc8

    .line 105
    .line 106
    invoke-direct {v2, v0, v3}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-object v1

    .line 113
    :goto_1
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->c:Ljava/lang/String;

    .line 116
    .line 117
    const/16 v7, 0x8

    .line 118
    .line 119
    const/4 v8, 0x0

    .line 120
    const-string v4, "Failed to create cache directory in external storage"

    .line 121
    .line 122
    const/4 v6, 0x0

    .line 123
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 127
    .line 128
    new-instance v2, Lcom/moloco/sdk/internal/q;

    .line 129
    .line 130
    const/16 v3, 0x64

    .line 131
    .line 132
    invoke-direct {v2, v0, v3}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    return-object v1

    .line 139
    :goto_2
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 140
    .line 141
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;->c:Ljava/lang/String;

    .line 142
    .line 143
    const/16 v7, 0x8

    .line 144
    .line 145
    const/4 v8, 0x0

    .line 146
    const-string v4, "Failed to create cache directory in external storage"

    .line 147
    .line 148
    const/4 v6, 0x0

    .line 149
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Lcom/moloco/sdk/internal/g0$a;

    .line 153
    .line 154
    new-instance v2, Lcom/moloco/sdk/internal/q;

    .line 155
    .line 156
    const/16 v3, 0x65

    .line 157
    .line 158
    invoke-direct {v2, v0, v3}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    invoke-direct {v1, v2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    return-object v1
.end method
