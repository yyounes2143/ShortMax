.class public Lao/e$a;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"

# interfaces
.implements Lao/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lao/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lao/e$d;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:J


# direct methods
.method public constructor <init>(Lao/e$d;JJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lao/e$a;->a:Lao/e$d;

    .line 5
    .line 6
    iput-wide p2, p0, Lao/e$a;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Lao/e$a;->c:J

    .line 9
    .line 10
    iput-wide p6, p0, Lao/e$a;->d:J

    .line 11
    .line 12
    iput-wide p8, p0, Lao/e$a;->e:J

    .line 13
    .line 14
    iput-wide p10, p0, Lao/e$a;->f:J

    .line 15
    .line 16
    iput-wide p12, p0, Lao/e$a;->g:J

    .line 17
    .line 18
    return-void
.end method

.method static synthetic b(Lao/e$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lao/e$a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic c(Lao/e$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lao/e$a;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic d(Lao/e$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lao/e$a;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic e(Lao/e$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lao/e$a;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic f(Lao/e$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lao/e$a;->g:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lao/e$a;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lao/j0$a;
    .locals 13

    .line 1
    iget-object v0, p0, Lao/e$a;->a:Lao/e$d;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lao/e$d;->a(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, p0, Lao/e$a;->c:J

    .line 8
    .line 9
    iget-wide v5, p0, Lao/e$a;->d:J

    .line 10
    .line 11
    iget-wide v7, p0, Lao/e$a;->e:J

    .line 12
    .line 13
    iget-wide v9, p0, Lao/e$a;->f:J

    .line 14
    .line 15
    iget-wide v11, p0, Lao/e$a;->g:J

    .line 16
    .line 17
    invoke-static/range {v1 .. v12}, Lao/e$c;->h(JJJJJJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    new-instance v2, Lao/j0$a;

    .line 22
    .line 23
    new-instance v3, Lao/k0;

    .line 24
    .line 25
    invoke-direct {v3, p1, p2, v0, v1}, Lao/k0;-><init>(JJ)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3}, Lao/j0$a;-><init>(Lao/k0;)V

    .line 29
    .line 30
    .line 31
    return-object v2
.end method

.method public h(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lao/e$a;->a:Lao/e$d;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lao/e$d;->a(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
