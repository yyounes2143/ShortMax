.class public abstract Lcom/inmobi/media/Aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/inmobi/media/b5;

.field public static b:Lcom/inmobi/media/F3;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/inmobi/media/Aa;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public static a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "ads"

    .line 7
    .line 8
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getPingsV2Config()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/inmobi/media/Aa;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    new-instance v0, Lcom/inmobi/media/Pa;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/inmobi/media/Pa;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/inmobi/media/b5;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Lcom/inmobi/media/b5;-><init>(Lcom/inmobi/media/Pa;)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/inmobi/media/Aa;->a:Lcom/inmobi/media/b5;

    .line 46
    .line 47
    new-instance v1, Lcom/inmobi/media/F3;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Lcom/inmobi/media/F3;-><init>(Lcom/inmobi/media/Pa;)V

    .line 50
    .line 51
    .line 52
    sput-object v1, Lcom/inmobi/media/Aa;->b:Lcom/inmobi/media/F3;

    .line 53
    .line 54
    sget-object v0, Lcom/inmobi/media/Aa;->a:Lcom/inmobi/media/b5;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, v0, Lcom/inmobi/media/b5;->e:Lcom/inmobi/media/O4;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object v1, Lcom/inmobi/media/Ca;->c:Lcom/inmobi/media/Ca;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Fa;->a(Lcom/inmobi/media/Ca;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iput-object v1, v0, Lcom/inmobi/media/Fa;->d:Lcom/inmobi/media/Ca;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/inmobi/media/O4;->a()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/inmobi/media/O4;->c()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/inmobi/media/O4;->d()V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    sget-object v0, Lcom/inmobi/media/Aa;->b:Lcom/inmobi/media/F3;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    iget-object v0, v0, Lcom/inmobi/media/F3;->e:Lcom/inmobi/media/W9;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-object v1, Lcom/inmobi/media/Ca;->c:Lcom/inmobi/media/Ca;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Fa;->a(Lcom/inmobi/media/Ca;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iput-object v1, v0, Lcom/inmobi/media/Fa;->d:Lcom/inmobi/media/Ca;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/inmobi/media/W9;->a()V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_1
    return-void
.end method
