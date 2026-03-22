.class public Lhb/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhb/u;


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhb/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lhb/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [B

    .line 9
    .line 10
    iput-object p1, p0, Lhb/r;->a:[B

    .line 11
    .line 12
    iput-object p2, p0, Lhb/r;->b:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lhb/r;->c:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p4, p0, Lhb/r;->e:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p5, p0, Lhb/r;->d:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p6, p0, Lhb/r;->f:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method

.method private a(Ljava/util/Map;)Lhb/n0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lhb/n0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhb/r;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lhb/r;->a:[B

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/huawei/hms/hatool/w;->a(Ljava/lang/String;[BLjava/util/Map;)Lhb/n0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhb/r;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lhb/r;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lhb/r;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lhb/e0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private d()V
    .locals 5

    .line 1
    new-instance v0, Lhb/k;

    .line 2
    .line 3
    iget-object v1, p0, Lhb/r;->f:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lhb/r;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lhb/r;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lhb/r;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lhb/k;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lhb/e;->d()Lhb/e;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lhb/e;->b(Lhb/u;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "send data running"

    .line 2
    .line 3
    const-string v1, "hmsSdk"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lhb/r;->c()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Lhb/r;->a(Ljava/util/Map;)Lhb/n0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lhb/n0;->b()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v2, 0xc8

    .line 21
    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lhb/r;->d()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "events PostRequest sendevent TYPE : %s, TAG : %s, resultCode: %d ,reqID:"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lhb/r;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lhb/r;->e:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v4, p0, Lhb/r;->c:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    filled-new-array {v3, v4, v0}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v2, v0}, Lhb/f1;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method
