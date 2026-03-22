.class public final Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;
.super Ljava/lang/Object;
.source "ActAppOpenView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActAppOpenView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActAppOpenView.kt\ncom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,265:1\n295#2,2:266\n295#2,2:268\n*S KotlinDebug\n*F\n+ 1 ActAppOpenView.kt\ncom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion\n*L\n51#1:266,2\n67#1:268,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;->b(Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b(Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReady$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReady$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReady$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReady$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReady$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReady$1;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReady$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReady$1;->j:I

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p2, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->n(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_5

    .line 60
    .line 61
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 62
    .line 63
    const-string v4, "ActAppOpenView"

    .line 64
    .line 65
    const-string v5, "check isResReady -> isResourceReady is false"

    .line 66
    .line 67
    invoke-virtual {v2, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isBrandAdVideo()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    iput v3, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReady$1;->j:I

    .line 77
    .line 78
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->u(Lrs/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v1, :cond_4

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_3
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->v(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 89
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :cond_5
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1
.end method


# virtual methods
.method public final c(Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;->k:I

    .line 32
    .line 33
    const-string v3, "ActAppOpenView"

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x0

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v5, :cond_2

    .line 41
    .line 42
    if-ne v2, v4, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;->h:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 47
    .line 48
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_4

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;

    .line 65
    .line 66
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :try_start_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 74
    .line 75
    iput-object p0, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;->h:Ljava/lang/Object;

    .line 76
    .line 77
    iput v5, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;->k:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->r(Lrs/c;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v1, :cond_4

    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_4
    move-object v2, p0

    .line 87
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_6

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    move-object v7, v5

    .line 104
    check-cast v7, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 105
    .line 106
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getPriority()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-nez v7, :cond_5

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    move-object v5, v6

    .line 114
    :goto_2
    move-object p1, v5

    .line 115
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 116
    .line 117
    if-nez p1, :cond_7

    .line 118
    .line 119
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 120
    .line 121
    const-string v0, "check isResReadyP0 -> resource is null"

    .line 122
    .line 123
    invoke-virtual {p1, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-object v6

    .line 127
    :cond_7
    iput-object p1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;->h:Ljava/lang/Object;

    .line 128
    .line 129
    iput v4, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP0$1;->k:I

    .line 130
    .line 131
    invoke-direct {v2, p1, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;->b(Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-ne v0, v1, :cond_8

    .line 136
    .line 137
    return-object v1

    .line 138
    :cond_8
    move-object v8, v0

    .line 139
    move-object v0, p1

    .line 140
    move-object p1, v8

    .line 141
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    if-eqz p1, :cond_9

    .line 148
    .line 149
    move-object v6, v0

    .line 150
    :cond_9
    return-object v6

    .line 151
    :goto_4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v2, "check isResReadyP0 exception -> "

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v0, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-object v6
.end method

.method public final d(Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;->k:I

    .line 32
    .line 33
    const-string v3, "ActAppOpenView"

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x0

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v5, :cond_2

    .line 41
    .line 42
    if-ne v2, v4, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;->h:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 47
    .line 48
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_4

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;

    .line 65
    .line 66
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :try_start_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 74
    .line 75
    iput-object p0, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;->h:Ljava/lang/Object;

    .line 76
    .line 77
    iput v5, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;->k:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->r(Lrs/c;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v1, :cond_4

    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_4
    move-object v2, p0

    .line 87
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_6

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    move-object v8, v7

    .line 104
    check-cast v8, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 105
    .line 106
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getPriority()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-ne v8, v5, :cond_5

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    move-object v7, v6

    .line 114
    :goto_2
    move-object p1, v7

    .line 115
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 116
    .line 117
    if-nez p1, :cond_7

    .line 118
    .line 119
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 120
    .line 121
    const-string v0, "check isResReadyP1 -> resource is null"

    .line 122
    .line 123
    invoke-virtual {p1, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-object v6

    .line 127
    :cond_7
    iput-object p1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;->h:Ljava/lang/Object;

    .line 128
    .line 129
    iput v4, v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion$isResReadyP1$1;->k:I

    .line 130
    .line 131
    invoke-direct {v2, p1, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;->b(Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-ne v0, v1, :cond_8

    .line 136
    .line 137
    return-object v1

    .line 138
    :cond_8
    move-object v9, v0

    .line 139
    move-object v0, p1

    .line 140
    move-object p1, v9

    .line 141
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    if-eqz p1, :cond_9

    .line 148
    .line 149
    move-object v6, v0

    .line 150
    :cond_9
    return-object v6

    .line 151
    :goto_4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v2, "check isResReadyP1 exception -> "

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v0, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-object v6
.end method
