.class public final Ljo/e;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lao/r;


# instance fields
.field private final a:J

.field private final b:Lao/r;


# direct methods
.method public constructor <init>(JLao/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ljo/e;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Ljo/e;->b:Lao/r;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Ljo/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ljo/e;->a:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public d(Lao/j0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljo/e;->b:Lao/r;

    .line 2
    .line 3
    new-instance v1, Ljo/e$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p1}, Ljo/e$a;-><init>(Ljo/e;Lao/j0;Lao/j0;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lao/r;->d(Lao/j0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public endTracks()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljo/e;->b:Lao/r;

    .line 2
    .line 3
    invoke-interface {v0}, Lao/r;->endTracks()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public track(II)Lao/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Ljo/e;->b:Lao/r;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lao/r;->track(II)Lao/o0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
