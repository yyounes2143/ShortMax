.class public final Le0/c;
.super Ljava/lang/Object;
.source "RealDiskCache.kt"

# interfaces
.implements Le0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/c$c;,
        Le0/c$b;,
        Le0/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Le0/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lokio/FileSystem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lcoil/disk/DiskLruCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le0/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Le0/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Le0/c;->e:Le0/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(JLokio/Path;Lokio/FileSystem;Lgt/c0;)V
    .locals 8
    .param p3    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lokio/FileSystem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Le0/c;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Le0/c;->b:Lokio/Path;

    .line 7
    .line 8
    iput-object p4, p0, Le0/c;->c:Lokio/FileSystem;

    .line 9
    .line 10
    new-instance p1, Lcoil/disk/DiskLruCache;

    .line 11
    .line 12
    invoke-virtual {p0}, Le0/c;->a()Lokio/FileSystem;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Le0/c;->c()Lokio/Path;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0}, Le0/c;->d()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    const/4 v6, 0x1

    .line 25
    const/4 v7, 0x2

    .line 26
    move-object v0, p1

    .line 27
    move-object v3, p5

    .line 28
    invoke-direct/range {v0 .. v7}, Lcoil/disk/DiskLruCache;-><init>(Lokio/FileSystem;Lokio/Path;Lgt/c0;JII)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Le0/c;->d:Lcoil/disk/DiskLruCache;

    .line 32
    .line 33
    return-void
.end method

.method private final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lokio/ByteString;->sha256()Lokio/ByteString;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method


# virtual methods
.method public a()Lokio/FileSystem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Le0/c;->c:Lokio/FileSystem;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Ljava/lang/String;)Le0/a$b;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le0/c;->d:Lcoil/disk/DiskLruCache;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Le0/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcoil/disk/DiskLruCache;->w(Ljava/lang/String;)Lcoil/disk/DiskLruCache$b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Le0/c$b;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Le0/c$b;-><init>(Lcoil/disk/DiskLruCache$b;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method

.method public c()Lokio/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Le0/c;->b:Lokio/Path;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le0/c;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public get(Ljava/lang/String;)Le0/a$c;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le0/c;->d:Lcoil/disk/DiskLruCache;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Le0/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcoil/disk/DiskLruCache;->x(Ljava/lang/String;)Lcoil/disk/DiskLruCache$d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Le0/c$c;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Le0/c$c;-><init>(Lcoil/disk/DiskLruCache$d;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method
