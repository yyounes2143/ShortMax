.class public final Lcom/inmobi/commons/core/configs/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/inmobi/media/q6;
    .locals 6

    .line 1
    new-instance v0, Lcom/inmobi/media/q6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/q6;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/inmobi/media/Ec;

    .line 7
    .line 8
    const-string v2, "cache"

    .line 9
    .line 10
    const-class v3, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 11
    .line 12
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/inmobi/media/q7;

    .line 16
    .line 17
    new-instance v3, Lcom/inmobi/commons/core/configs/a;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    .line 20
    .line 21
    .line 22
    const-class v4, Lcom/inmobi/commons/core/configs/AdConfig$CacheConfig;

    .line 23
    .line 24
    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/q7;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/inmobi/media/Ec;

    .line 32
    .line 33
    const-string v2, "allowedContentType"

    .line 34
    .line 35
    const-class v3, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    .line 36
    .line 37
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/inmobi/media/U6;

    .line 41
    .line 42
    new-instance v3, Lcom/inmobi/media/t;

    .line 43
    .line 44
    invoke-direct {v3}, Lcom/inmobi/media/t;-><init>()V

    .line 45
    .line 46
    .line 47
    const-class v4, Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lcom/inmobi/media/Ec;

    .line 57
    .line 58
    const-string v2, "gestures"

    .line 59
    .line 60
    const-class v3, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    .line 61
    .line 62
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Lcom/inmobi/media/U6;

    .line 66
    .line 67
    new-instance v3, Lcom/inmobi/media/u;

    .line 68
    .line 69
    invoke-direct {v3}, Lcom/inmobi/media/u;-><init>()V

    .line 70
    .line 71
    .line 72
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    invoke-direct {v2, v3, v5}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Lcom/inmobi/media/Ec;

    .line 82
    .line 83
    const-string v2, "skipFields"

    .line 84
    .line 85
    const-class v3, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    .line 86
    .line 87
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Lcom/inmobi/media/U6;

    .line 91
    .line 92
    new-instance v3, Lcom/inmobi/media/v;

    .line 93
    .line 94
    invoke-direct {v3}, Lcom/inmobi/media/v;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0
.end method
