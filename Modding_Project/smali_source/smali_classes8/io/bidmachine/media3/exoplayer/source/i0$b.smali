.class public final Lio/bidmachine/media3/exoplayer/source/i0$b;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Len/d$a;

.field private b:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lh7/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lxn/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Len/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Len/d$a;

    .line 9
    .line 10
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/i0$b;->a:Len/d$a;

    .line 11
    .line 12
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/a;

    .line 13
    .line 14
    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/upstream/a;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/i0$b;->b:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/i0$b;->c:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Lzm/q$k;J)Lio/bidmachine/media3/exoplayer/source/i0;
    .locals 12

    .line 1
    new-instance v11, Lio/bidmachine/media3/exoplayer/source/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/i0$b;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/i0$b;->a:Len/d$a;

    .line 6
    .line 7
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/i0$b;->b:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 8
    .line 9
    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/source/i0$b;->c:Z

    .line 10
    .line 11
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/i0$b;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/i0$b;->f:Lh7/n;

    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    move-object v0, v11

    .line 17
    move-object v2, p1

    .line 18
    move-wide v4, p2

    .line 19
    invoke-direct/range {v0 .. v10}, Lio/bidmachine/media3/exoplayer/source/i0;-><init>(Ljava/lang/String;Lzm/q$k;Len/d$a;JLio/bidmachine/media3/exoplayer/upstream/b;ZLjava/lang/Object;Lh7/n;Lio/bidmachine/media3/exoplayer/source/i0$a;)V

    .line 20
    .line 21
    .line 22
    return-object v11
.end method

.method public b(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/source/i0$b;
    .locals 0
    .param p1    # Lio/bidmachine/media3/exoplayer/upstream/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/a;

    .line 5
    .line 6
    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/upstream/a;-><init>()V

    .line 7
    .line 8
    .line 9
    :goto_0
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/i0$b;->b:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 10
    .line 11
    return-object p0
.end method
