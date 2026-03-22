.class public final Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor;
.super Ljava/lang/Object;
.source "RFMGuideDialogProcessor.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/dialog/home/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor;->a:Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/c$a;->b(Lcom/startshorts/androidplayer/manager/dialog/home/c;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public b(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$process$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$process$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$process$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$process$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$process$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$process$1;-><init>(Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$process$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$process$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor;->c(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    const/4 v2, 0x0

    .line 58
    if-nez p3, :cond_3

    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_3
    sget-object p3, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 66
    .line 67
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->c1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestIntValue()I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    const/4 v4, 0x2

    .line 76
    if-eq p3, v4, :cond_4

    .line 77
    .line 78
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :cond_4
    sget-object p3, Lud/a;->a:Lud/a;

    .line 84
    .line 85
    invoke-virtual {p3}, Lud/a;->i()Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-nez p3, :cond_5

    .line 90
    .line 91
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_5
    sget-object p3, Lud/b;->a:Lud/b;

    .line 97
    .line 98
    invoke-virtual {p3}, Lud/b;->A1()J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    sget-object v4, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 105
    .line 106
    .line 107
    move-result-wide v10

    .line 108
    sget-object v4, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 109
    .line 110
    const/4 v9, 0x7

    .line 111
    move-wide v7, v10

    .line 112
    invoke-virtual/range {v4 .. v9}, Lcom/startshorts/androidplayer/utils/TimeUtil;->m(JJI)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_6

    .line 117
    .line 118
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    :cond_6
    invoke-virtual {p3, v10, v11}, Lud/b;->N4(J)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    new-instance v2, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$process$2;

    .line 131
    .line 132
    const/4 v4, 0x0

    .line 133
    invoke-direct {v2, p1, p0, p2, v4}, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$process$2;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 134
    .line 135
    .line 136
    iput v3, v0, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor$process$1;->j:I

    .line 137
    .line 138
    invoke-static {p3, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-ne p1, v1, :cond_7

    .line 143
    .line 144
    return-object v1

    .line 145
    :cond_7
    :goto_1
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1
.end method

.method public c(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p0()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RFMGuideDialogProcessor"

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;->DIALOG_RFM_GUIDE:Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;

    .line 2
    .line 3
    return-object v0
.end method
