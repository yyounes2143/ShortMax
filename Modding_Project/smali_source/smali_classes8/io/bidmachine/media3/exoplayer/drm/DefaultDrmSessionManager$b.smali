.class public final Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/UUID;

.field private c:Lio/bidmachine/media3/exoplayer/drm/m$c;

.field private d:Z

.field private e:[I

.field private f:Z

.field private g:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    sget-object v0, Lzm/f;->d:Ljava/util/UUID;

    .line 12
    .line 13
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->b:Ljava/util/UUID;

    .line 14
    .line 15
    sget-object v0, Lio/bidmachine/media3/exoplayer/drm/n;->d:Lio/bidmachine/media3/exoplayer/drm/m$c;

    .line 16
    .line 17
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->c:Lio/bidmachine/media3/exoplayer/drm/m$c;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [I

    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->e:[I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->f:Z

    .line 26
    .line 27
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/a;

    .line 28
    .line 29
    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/upstream/a;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->g:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 33
    .line 34
    const-wide/32 v0, 0x493e0

    .line 35
    .line 36
    .line 37
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->h:J

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/media3/exoplayer/drm/p;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
    .locals 13

    .line 1
    new-instance v12, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->b:Ljava/util/UUID;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->c:Lio/bidmachine/media3/exoplayer/drm/m$c;

    .line 6
    .line 7
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->d:Z

    .line 10
    .line 11
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->e:[I

    .line 12
    .line 13
    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->f:Z

    .line 14
    .line 15
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->g:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 16
    .line 17
    iget-wide v9, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->h:J

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    move-object v0, v12

    .line 21
    move-object v3, p1

    .line 22
    invoke-direct/range {v0 .. v11}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/m$c;Lio/bidmachine/media3/exoplayer/drm/p;Ljava/util/HashMap;Z[IZLio/bidmachine/media3/exoplayer/upstream/b;JLio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$a;)V

    .line 23
    .line 24
    .line 25
    return-object v12
.end method

.method public b(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->g:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 8
    .line 9
    return-object p0
.end method

.method public c(Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs e([I)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    if-eq v3, v4, :cond_1

    .line 11
    .line 12
    if-ne v3, v5, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move v5, v1

    .line 16
    :cond_1
    :goto_1
    invoke-static {v5}, Lcn/a;->a(Z)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, [I

    .line 27
    .line 28
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->e:[I

    .line 29
    .line 30
    return-object p0
.end method

.method public f(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/m$c;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/UUID;

    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->b:Ljava/util/UUID;

    .line 8
    .line 9
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/m$c;

    .line 14
    .line 15
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;->c:Lio/bidmachine/media3/exoplayer/drm/m$c;

    .line 16
    .line 17
    return-object p0
.end method
