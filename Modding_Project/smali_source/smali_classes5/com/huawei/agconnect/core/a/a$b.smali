.class final Lcom/huawei/agconnect/core/a/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Loa/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/agconnect/core/a/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Loa/d;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p1}, Loa/d;->a()Loa/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Loa/b;->c:Loa/b;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Loa/b;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "/agcgw_all/CN_back"

    .line 14
    .line 15
    :goto_0
    invoke-interface {p1, v0}, Loa/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-interface {p1}, Loa/d;->a()Loa/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Loa/b;->e:Loa/b;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Loa/b;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v0, "/agcgw_all/RU_back"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-interface {p1}, Loa/d;->a()Loa/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Loa/b;->d:Loa/b;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Loa/b;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const-string v0, "/agcgw_all/DE_back"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {p1}, Loa/d;->a()Loa/b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Loa/b;->f:Loa/b;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Loa/b;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    const-string v0, "/agcgw_all/SG_back"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    return-object p1
.end method
