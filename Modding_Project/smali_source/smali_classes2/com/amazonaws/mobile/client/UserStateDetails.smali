.class public Lcom/amazonaws/mobile/client/UserStateDetails;
.super Ljava/lang/Object;
.source "UserStateDetails.java"


# instance fields
.field private final a:Lcom/amazonaws/mobile/client/UserState;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/UserState;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->a:Lcom/amazonaws/mobile/client/UserState;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->b:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->c:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/amazonaws/mobile/client/UserState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->a:Lcom/amazonaws/mobile/client/UserState;

    .line 2
    .line 3
    return-object v0
.end method

.method protected c(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->c:Ljava/lang/Exception;

    .line 2
    .line 3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    check-cast p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->a:Lcom/amazonaws/mobile/client/UserState;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/amazonaws/mobile/client/UserStateDetails;->a:Lcom/amazonaws/mobile/client/UserState;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object p1, p1, Lcom/amazonaws/mobile/client/UserStateDetails;->b:Ljava/util/Map;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->b:Ljava/util/Map;

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    if-nez v0, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method
