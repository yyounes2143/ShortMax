.class public Lao/a0;
.super Ljava/lang/Object;
.source "ForwardingSeekMap.java"

# interfaces
.implements Lao/j0;


# instance fields
.field private final a:Lao/j0;


# direct methods
.method public constructor <init>(Lao/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lao/a0;->a:Lao/j0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lao/a0;->a:Lao/j0;

    .line 2
    .line 3
    invoke-interface {v0}, Lao/j0;->getDurationUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSeekPoints(J)Lao/j0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lao/a0;->a:Lao/j0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lao/j0;->getSeekPoints(J)Lao/j0$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lao/a0;->a:Lao/j0;

    .line 2
    .line 3
    invoke-interface {v0}, Lao/j0;->isSeekable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
