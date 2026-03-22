.class public final Lcom/inmobi/media/Ka;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Ja;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;)V
    .locals 1

    .line 1
    const-string v0, "pingsV2Config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getEnableOkhttp()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/inmobi/media/fa;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/inmobi/media/fa;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/inmobi/media/T6;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/inmobi/media/T6;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iput-object v0, p0, Lcom/inmobi/media/Ka;->a:Lcom/inmobi/media/Ja;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/za;)Lcom/inmobi/media/Da;
    .locals 4

    .line 1
    const-string v0, "ping"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/Ka;->a:Lcom/inmobi/media/Ja;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/inmobi/media/Ja;->a(Lcom/inmobi/media/za;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    instance-of v2, v0, Lcom/inmobi/media/O9;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    check-cast v0, Lcom/inmobi/media/O9;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/inmobi/media/za;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/inmobi/media/O9;->a()I

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lcom/inmobi/media/O9;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/inmobi/media/Da;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/inmobi/media/O9;->a()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-interface {v0}, Lcom/inmobi/media/O9;->b()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v1, p1, v2, v0}, Lcom/inmobi/media/Da;-><init>(Lcom/inmobi/media/za;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    instance-of v2, v0, Lcom/inmobi/media/P9;

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    check-cast v0, Lcom/inmobi/media/P9;

    .line 50
    .line 51
    iget-object v2, p1, Lcom/inmobi/media/za;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/inmobi/media/Da;

    .line 57
    .line 58
    iget-object v3, v0, Lcom/inmobi/media/P9;->c:Ljava/lang/Integer;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v3, 0x0

    .line 68
    :goto_1
    iget-object v0, v0, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-object v1, v0, Lcom/inmobi/media/I9;->b:Ljava/lang/String;

    .line 73
    .line 74
    :cond_3
    invoke-direct {v2, p1, v3, v1}, Lcom/inmobi/media/Da;-><init>(Lcom/inmobi/media/za;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    move-object v1, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    new-instance v1, Lcom/inmobi/media/Da;

    .line 80
    .line 81
    sget-object v0, Lcom/inmobi/media/n4;->a:[Lcom/inmobi/media/n4;

    .line 82
    .line 83
    const/16 v0, -0x6a

    .line 84
    .line 85
    const-string v2, "Ping response is unknown"

    .line 86
    .line 87
    invoke-direct {v1, p1, v0, v2}, Lcom/inmobi/media/Da;-><init>(Lcom/inmobi/media/za;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    return-object v1
.end method
