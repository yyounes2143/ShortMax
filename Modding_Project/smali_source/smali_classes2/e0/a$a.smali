.class public final Le0/a$a;
.super Ljava/lang/Object;
.source "DiskCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lokio/FileSystem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:D

.field private d:J

.field private e:J

.field private f:J

.field private g:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 5
    .line 6
    iput-object v0, p0, Le0/a$a;->b:Lokio/FileSystem;

    .line 7
    .line 8
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Le0/a$a;->c:D

    .line 14
    .line 15
    const-wide/32 v0, 0xa00000

    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Le0/a$a;->d:J

    .line 19
    .line 20
    const-wide/32 v0, 0xfa00000

    .line 21
    .line 22
    .line 23
    iput-wide v0, p0, Le0/a$a;->e:J

    .line 24
    .line 25
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Le0/a$a;->g:Lgt/c0;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()Le0/a;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v3, p0, Le0/a$a;->a:Lokio/Path;

    .line 2
    .line 3
    if-eqz v3, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, Le0/a$a;->c:D

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmpl-double v0, v0, v4

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    .line 14
    .line 15
    invoke-virtual {v3}, Lokio/Path;->toFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, Le0/a$a;->c:D

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    long-to-double v4, v4

    .line 33
    mul-double/2addr v1, v4

    .line 34
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    long-to-double v4, v4

    .line 39
    mul-double/2addr v1, v4

    .line 40
    double-to-long v4, v1

    .line 41
    iget-wide v6, p0, Le0/a$a;->d:J

    .line 42
    .line 43
    iget-wide v8, p0, Le0/a$a;->e:J

    .line 44
    .line 45
    invoke-static/range {v4 .. v9}, Lkotlin/ranges/e;->p(JJJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    iget-wide v0, p0, Le0/a$a;->d:J

    .line 51
    .line 52
    :goto_0
    move-wide v1, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iget-wide v0, p0, Le0/a$a;->f:J

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    new-instance v6, Le0/c;

    .line 58
    .line 59
    iget-object v4, p0, Le0/a$a;->b:Lokio/FileSystem;

    .line 60
    .line 61
    iget-object v5, p0, Le0/a$a;->g:Lgt/c0;

    .line 62
    .line 63
    move-object v0, v6

    .line 64
    invoke-direct/range {v0 .. v5}, Le0/c;-><init>(JLokio/Path;Lokio/FileSystem;Lgt/c0;)V

    .line 65
    .line 66
    .line 67
    return-object v6

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "directory == null"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method public final b(Ljava/io/File;)Le0/a$a;
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, p1, v3, v1, v2}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Le0/a$a;->c(Lokio/Path;)Le0/a$a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final c(Lokio/Path;)Le0/a$a;
    .locals 0
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Le0/a$a;->a:Lokio/Path;

    .line 2
    .line 3
    return-object p0
.end method
