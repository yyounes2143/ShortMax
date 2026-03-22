.class public final Lme/a;
.super Ljava/lang/Object;
.source "ConfigureInUse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lme/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lme/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lme/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lme/a;->c:Lme/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lme/a;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic d(Lme/a;Lorg/json/JSONObject;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lme/a;->c(Lorg/json/JSONObject;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lme/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lme/a;->a:Ljava/lang/String;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    :goto_0
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 14
    .line 15
    const-string v0, "ConfigureInUse"

    .line 16
    .line 17
    const-string v1, "onInitSucceed -> configure is null or empty"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final c(Lorg/json/JSONObject;Z)V
    .locals 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "newJson"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lme/a;->b:Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lme/a;->b:Lorg/json/JSONObject;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->b(Lorg/json/JSONObject;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    :cond_0
    const-string v0, ""

    .line 43
    .line 44
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "onTargetJsonChange "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lme/a;->b:Lorg/json/JSONObject;

    .line 55
    .line 56
    const-string v3, ",json="

    .line 57
    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    const-string v0, "init "

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "change from maxActiveTime="

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lme/a;->b:Lorg/json/JSONObject;

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, "  to "

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object p1, p0, Lme/a;->b:Lorg/json/JSONObject;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, "maxActiveTime="

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->b(Lorg/json/JSONObject;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v4

    .line 121
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const/16 p1, 0x2e

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p2, :cond_3

    .line 140
    .line 141
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 142
    .line 143
    const-string v0, "ConfigureInUse"

    .line 144
    .line 145
    invoke-virtual {p2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    return-void
.end method

.method public final e(Lme/b;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lme/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/b<",
            "*>;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lme/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    const-string p2, "ConfigureInUse"

    .line 12
    .line 13
    const-string v0, "reParse failed -> mConfigure is null or empty"

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    iget-object v0, p0, Lme/a;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p1, v0, p2}, Lme/b;->a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-ne p1, p2, :cond_1

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p1
.end method
