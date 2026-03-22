.class public final Lcom/moloco/sdk/internal/services/usertracker/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/usertracker/e;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUserTrackerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserTrackerService.kt\ncom/moloco/sdk/internal/services/usertracker/UserTrackerServiceImpl\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,42:1\n116#2,11:43\n116#2,11:54\n*S KotlinDebug\n*F\n+ 1 UserTrackerService.kt\ncom/moloco/sdk/internal/services/usertracker/UserTrackerServiceImpl\n*L\n28#1:43,11\n32#1:54,11\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/usertracker/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/services/usertracker/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/usertracker/d;Lcom/moloco/sdk/internal/services/usertracker/b;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/usertracker/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/usertracker/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "idGenerator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "idRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/usertracker/g;->a:Lcom/moloco/sdk/internal/services/usertracker/d;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/usertracker/g;->b:Lcom/moloco/sdk/internal/services/usertracker/b;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    const/4 p2, 0x0

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {v0, p1, p2}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/usertracker/g;->c:Lqt/a;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public c(Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/internal/services/usertracker/g$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->l:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/internal/services/usertracker/g$b;-><init>(Lcom/moloco/sdk/internal/services/usertracker/g;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->l:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    iget-object v1, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->i:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->h:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lqt/a;

    .line 52
    .line 53
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    iget-object v2, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->i:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Lqt/a;

    .line 72
    .line 73
    iget-object v4, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->h:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Lcom/moloco/sdk/internal/services/usertracker/g;

    .line 76
    .line 77
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    goto :goto_5

    .line 83
    :cond_3
    iget-object v2, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->i:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, Lqt/a;

    .line 86
    .line 87
    iget-object v5, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->h:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v5, Lcom/moloco/sdk/internal/services/usertracker/g;

    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object p1, v2

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/usertracker/g;->c:Lqt/a;

    .line 100
    .line 101
    iput-object p0, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->h:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object p1, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->i:Ljava/lang/Object;

    .line 104
    .line 105
    iput v5, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->l:I

    .line 106
    .line 107
    invoke-interface {p1, v6, v0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-ne v2, v1, :cond_5

    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_5
    move-object v5, p0

    .line 115
    :goto_1
    :try_start_2
    iget-object v2, v5, Lcom/moloco/sdk/internal/services/usertracker/g;->b:Lcom/moloco/sdk/internal/services/usertracker/b;

    .line 116
    .line 117
    iput-object v5, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->h:Ljava/lang/Object;

    .line 118
    .line 119
    iput-object p1, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->i:Ljava/lang/Object;

    .line 120
    .line 121
    iput v4, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->l:I

    .line 122
    .line 123
    invoke-interface {v2, v0}, Lcom/moloco/sdk/internal/services/usertracker/b;->c(Lrs/c;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    if-ne v2, v1, :cond_6

    .line 128
    .line 129
    return-object v1

    .line 130
    :cond_6
    move-object v4, v5

    .line 131
    move-object v7, v2

    .line 132
    move-object v2, p1

    .line 133
    move-object p1, v7

    .line 134
    :goto_2
    :try_start_3
    check-cast p1, Ljava/lang/String;

    .line 135
    .line 136
    if-nez p1, :cond_7

    .line 137
    .line 138
    iget-object p1, v4, Lcom/moloco/sdk/internal/services/usertracker/g;->a:Lcom/moloco/sdk/internal/services/usertracker/d;

    .line 139
    .line 140
    invoke-interface {p1}, Lcom/moloco/sdk/internal/services/usertracker/d;->a()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object v4, v4, Lcom/moloco/sdk/internal/services/usertracker/g;->b:Lcom/moloco/sdk/internal/services/usertracker/b;

    .line 145
    .line 146
    iput-object v2, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->h:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object p1, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->i:Ljava/lang/Object;

    .line 149
    .line 150
    iput v3, v0, Lcom/moloco/sdk/internal/services/usertracker/g$b;->l:I

    .line 151
    .line 152
    invoke-interface {v4, p1, v0}, Lcom/moloco/sdk/internal/services/usertracker/b;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    if-ne v0, v1, :cond_7

    .line 157
    .line 158
    return-object v1

    .line 159
    :cond_7
    move-object v1, p1

    .line 160
    move-object v0, v2

    .line 161
    :goto_3
    invoke-interface {v0, v6}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    return-object v1

    .line 165
    :catchall_2
    move-exception v0

    .line 166
    move-object v7, v0

    .line 167
    move-object v0, p1

    .line 168
    move-object p1, v7

    .line 169
    :goto_4
    move-object v2, v0

    .line 170
    :goto_5
    invoke-interface {v2, v6}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    throw p1
.end method
