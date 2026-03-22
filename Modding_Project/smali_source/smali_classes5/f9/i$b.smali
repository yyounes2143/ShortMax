.class public Lf9/i$b;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x3c

    .line 5
    .line 6
    iput-wide v0, p0, Lf9/i$b;->a:J

    .line 7
    .line 8
    sget-wide v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->j:J

    .line 9
    .line 10
    iput-wide v0, p0, Lf9/i$b;->b:J

    .line 11
    .line 12
    return-void
.end method

.method static synthetic a(Lf9/i$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf9/i$b;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic b(Lf9/i$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf9/i$b;->b:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public c()Lf9/i;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lf9/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lf9/i;-><init>(Lf9/i$b;Lf9/i$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public d(J)Lf9/i$b;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lf9/i$b;->b:J

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Minimum interval between fetches has to be a non-negative number. "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is an invalid argument"

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method
