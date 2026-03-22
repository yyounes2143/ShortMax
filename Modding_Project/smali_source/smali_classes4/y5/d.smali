.class public final Ly5/d;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lt5/m;


# instance fields
.field private final a:J

.field private final b:Lt5/m;


# direct methods
.method public constructor <init>(JLt5/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ly5/d;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Ly5/d;->b:Lt5/m;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Ly5/d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ly5/d;->a:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public c(Lt5/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly5/d;->b:Lt5/m;

    .line 2
    .line 3
    new-instance v1, Ly5/d$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ly5/d$a;-><init>(Ly5/d;Lt5/z;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lt5/m;->c(Lt5/z;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public endTracks()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly5/d;->b:Lt5/m;

    .line 2
    .line 3
    invoke-interface {v0}, Lt5/m;->endTracks()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public track(II)Lt5/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Ly5/d;->b:Lt5/m;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lt5/m;->track(II)Lt5/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
