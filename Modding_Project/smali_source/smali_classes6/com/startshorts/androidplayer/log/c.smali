.class public final Lcom/startshorts/androidplayer/log/c;
.super Ljava/lang/Object;
.source "LoggerUploadAppLog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/log/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/log/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/log/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/log/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/log/c;->a:Lcom/startshorts/androidplayer/log/c;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 0

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    return p1
.end method

.method public final b(Ljava/io/File;Ljava/lang/String;Lcom/startshorts/androidplayer/log/c$a;)V
    .locals 12
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/log/c$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "zipFile"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "fileName"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    sget-object v0, Lud/a;->a:Lud/a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lud/a;->m()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "android/"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->U()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 v2, 0x2f

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    sget-object v3, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 55
    .line 56
    new-instance v4, Ljava/util/Date;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    sget-object v5, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->YEAR_MONTH_DAY:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 66
    .line 67
    invoke-virtual {v3, v4, v5}, Lcom/startshorts/androidplayer/utils/TimeUtil;->g(Ljava/util/Date;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sget-object v1, Lma/g;->a:Lma/g;

    .line 85
    .line 86
    new-instance v11, Lna/b;

    .line 87
    .line 88
    const/16 v9, 0x3f

    .line 89
    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v3, 0x0

    .line 92
    const/4 v4, 0x0

    .line 93
    const/4 v5, 0x0

    .line 94
    const/4 v6, 0x0

    .line 95
    const/4 v7, 0x0

    .line 96
    const/4 v8, 0x0

    .line 97
    move-object v2, v11

    .line 98
    invoke-direct/range {v2 .. v10}, Lna/b;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lna/c;Lna/d;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    .line 100
    .line 101
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 102
    .line 103
    invoke-virtual {v2}, Lfk/u;->b()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v11, v2}, Lna/b;->h(Landroid/content/Context;)Lna/b;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v3, "getAbsolutePath(...)"

    .line 116
    .line 117
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, p1}, Lna/b;->k(Ljava/lang/String;)Lna/b;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1, v0}, Lna/b;->m(Ljava/lang/String;)Lna/b;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1, p2}, Lna/b;->j(Ljava/lang/String;)Lna/b;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance p2, Lcom/startshorts/androidplayer/log/c$b;

    .line 133
    .line 134
    invoke-direct {p2, p3}, Lcom/startshorts/androidplayer/log/c$b;-><init>(Lcom/startshorts/androidplayer/log/c$a;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lna/b;->l(Lna/d;)Lna/b;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v1, p1}, Lma/g;->j(Lna/b;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    return-void
.end method
