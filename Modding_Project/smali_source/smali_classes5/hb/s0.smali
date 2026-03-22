.class public Lhb/s0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhb/s0$a;
    }
.end annotation


# instance fields
.field private a:J

.field private volatile b:Z

.field private c:Lhb/s0$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x1b7740

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lhb/s0;->a:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lhb/s0;->b:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lhb/s0;->c:Lhb/s0$a;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic c(Lhb/s0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lhb/s0;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lhb/s0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lhb/s0;->b:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lhb/s0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lhb/s0;->a:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/s0;->c:Lhb/s0$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "hmsSdk"

    .line 6
    .line 7
    const-string v1, "getSessionName(): session not prepared. onEvent() must be called first."

    .line 8
    .line 9
    invoke-static {v0, v1}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, v0, Lhb/s0$a;->a:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method b(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/s0;->c:Lhb/s0$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "hmsSdk"

    .line 6
    .line 7
    const-string v1, "Session is first flush"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lhb/s0$a;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1, p2}, Lhb/s0$a;-><init>(Lhb/s0;J)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lhb/s0;->c:Lhb/s0$a;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {v0, p1, p2}, Lhb/s0$a;->a(J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/s0;->c:Lhb/s0$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "hmsSdk"

    .line 6
    .line 7
    const-string v1, "isFirstEvent(): session not prepared. onEvent() must be called first."

    .line 8
    .line 9
    invoke-static {v0, v1}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-boolean v0, v0, Lhb/s0$a;->b:Z

    .line 15
    .line 16
    return v0
.end method
