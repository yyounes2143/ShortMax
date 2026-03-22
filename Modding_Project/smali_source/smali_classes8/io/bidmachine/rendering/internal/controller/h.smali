.class public final Lio/bidmachine/rendering/internal/controller/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/controller/h$d;,
        Lio/bidmachine/rendering/internal/controller/h$b;,
        Lio/bidmachine/rendering/internal/controller/h$a;,
        Lio/bidmachine/rendering/internal/controller/h$e;,
        Lio/bidmachine/rendering/internal/controller/h$f;,
        Lio/bidmachine/rendering/internal/controller/h$g;,
        Lio/bidmachine/rendering/internal/controller/h$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final s:Lio/bidmachine/rendering/internal/controller/h$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lsq/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/rendering/internal/state/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lfq/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Leq/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Landroid/content/Context;

.field private final f:Llq/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ltp/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Lfq/s;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Ljq/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lhq/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Lcr/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ltp/f;",
            "Ltq/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltp/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltp/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltp/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final r:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/controller/h$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/controller/h$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/rendering/internal/controller/h;->s:Lio/bidmachine/rendering/internal/controller/h$d;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lrq/c;Lsq/h;Lio/bidmachine/rendering/internal/state/c;Lfq/r;Leq/c;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lsq/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/rendering/internal/state/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lfq/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Leq/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adPhaseParams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "tag"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "adState"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "adPhaseControllerListener"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "adAnimationController"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p3, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 35
    .line 36
    iput-object p4, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    .line 37
    .line 38
    iput-object p5, p0, Lio/bidmachine/rendering/internal/controller/h;->c:Lfq/r;

    .line 39
    .line 40
    iput-object p6, p0, Lio/bidmachine/rendering/internal/controller/h;->d:Leq/c;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    iput-object p3, p0, Lio/bidmachine/rendering/internal/controller/h;->e:Landroid/content/Context;

    .line 47
    .line 48
    new-instance p4, Lio/bidmachine/rendering/internal/repository/b;

    .line 49
    .line 50
    const-string p5, "applicationContext"

    .line 51
    .line 52
    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p0}, Lio/bidmachine/rendering/internal/controller/h;->R(Lio/bidmachine/rendering/internal/controller/h;)Lgt/g0;

    .line 56
    .line 57
    .line 58
    move-result-object p6

    .line 59
    invoke-direct {p0, p0}, Lio/bidmachine/rendering/internal/controller/h;->P(Lio/bidmachine/rendering/internal/controller/h;)Lio/bidmachine/rendering/internal/h;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p4, p3, p6, v0}, Lio/bidmachine/rendering/internal/repository/b;-><init>(Landroid/content/Context;Lgt/g0;Lio/bidmachine/rendering/internal/h;)V

    .line 64
    .line 65
    .line 66
    iput-object p4, p0, Lio/bidmachine/rendering/internal/controller/h;->f:Llq/a;

    .line 67
    .line 68
    new-instance p6, Ltp/g;

    .line 69
    .line 70
    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p6, p3, p4, p2}, Ltp/g;-><init>(Landroid/content/Context;Llq/a;Lrq/c;)V

    .line 74
    .line 75
    .line 76
    iput-object p6, p0, Lio/bidmachine/rendering/internal/controller/h;->g:Ltp/g;

    .line 77
    .line 78
    new-instance p3, Lio/bidmachine/rendering/internal/controller/h$f;

    .line 79
    .line 80
    invoke-direct {p3, p0, p1}, Lio/bidmachine/rendering/internal/controller/h$f;-><init>(Lio/bidmachine/rendering/internal/controller/h;Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    iput-object p3, p0, Lio/bidmachine/rendering/internal/controller/h;->i:Ljq/e;

    .line 84
    .line 85
    new-instance p1, Lio/bidmachine/rendering/internal/controller/h$c;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/controller/h$c;-><init>(Lio/bidmachine/rendering/internal/controller/h;)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h;->j:Lhq/a;

    .line 91
    .line 92
    new-instance p1, Lio/bidmachine/rendering/internal/controller/h$t;

    .line 93
    .line 94
    invoke-direct {p1, p2}, Lio/bidmachine/rendering/internal/controller/h$t;-><init>(Lrq/c;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h;->k:Lms/i;

    .line 102
    .line 103
    new-instance p1, Lio/bidmachine/rendering/internal/controller/h$j;

    .line 104
    .line 105
    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/controller/h$j;-><init>(Lio/bidmachine/rendering/internal/controller/h;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h;->l:Lms/i;

    .line 113
    .line 114
    new-instance p1, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    .line 115
    .line 116
    invoke-direct {p0, p0}, Lio/bidmachine/rendering/internal/controller/h;->R(Lio/bidmachine/rendering/internal/controller/h;)Lgt/g0;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-interface {p2}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p0, p0}, Lio/bidmachine/rendering/internal/controller/h;->P(Lio/bidmachine/rendering/internal/controller/h;)Lio/bidmachine/rendering/internal/h;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-virtual {p3}, Lio/bidmachine/rendering/internal/h;->e()Lgt/c0;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    invoke-interface {p2, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-direct {p1, p2}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h;->m:Lcr/c;

    .line 140
    .line 141
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    .line 143
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h;->n:Ljava/util/Map;

    .line 147
    .line 148
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h;->o:Ljava/util/List;

    .line 154
    .line 155
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    .line 157
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h;->p:Ljava/util/List;

    .line 161
    .line 162
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 163
    .line 164
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h;->q:Ljava/util/List;

    .line 168
    .line 169
    new-instance p1, Lio/bidmachine/rendering/internal/controller/h$h;

    .line 170
    .line 171
    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/controller/h$h;-><init>(Lio/bidmachine/rendering/internal/controller/h;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h;->r:Lms/i;

    .line 179
    .line 180
    return-void
.end method

.method public static synthetic B(Lio/bidmachine/rendering/internal/controller/h;Lup/a;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/h;->C(Lup/a;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final synthetic D(Lio/bidmachine/rendering/internal/controller/h;Lio/bidmachine/rendering/internal/controller/h;)Lgt/g0;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/controller/h;->R(Lio/bidmachine/rendering/internal/controller/h;)Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F(Lio/bidmachine/rendering/internal/controller/h;)Ltp/b0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/controller/h;->V()Ltp/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final I(Ltp/f;)V
    .locals 1

    .line 1
    const-string v0, "$item"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ltp/f;->d()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic K(Lio/bidmachine/rendering/internal/controller/h;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/controller/h;->n:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L(Lio/bidmachine/rendering/internal/controller/h;)Llq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/controller/h;->f:Llq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic M(Lio/bidmachine/rendering/internal/controller/h;)Lkq/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/controller/h;->Y()Lkq/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic N(Lio/bidmachine/rendering/internal/controller/h;)Lsq/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 2
    .line 3
    return-object p0
.end method

.method private final P(Lio/bidmachine/rendering/internal/controller/h;)Lio/bidmachine/rendering/internal/h;
    .locals 0

    .line 1
    iget-object p1, p1, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/state/c;->n()Lio/bidmachine/rendering/internal/h;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private final R(Lio/bidmachine/rendering/internal/controller/h;)Lgt/g0;
    .locals 0

    .line 1
    iget-object p1, p1, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/state/c;->o()Lnq/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private final V()Ltp/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->l:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ltp/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method private final Y()Lkq/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->k:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkq/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic a(Ltp/f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/internal/controller/h;->I(Ltp/f;)V

    return-void
.end method

.method public static synthetic b(Ltp/f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/internal/controller/h;->w(Ltp/f;)V

    return-void
.end method

.method public static final synthetic e(Lio/bidmachine/rendering/internal/controller/h;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/controller/h;->e:Landroid/content/Context;

    return-object p0
.end method

.method private final f(Lrq/a;)Lio/bidmachine/rendering/internal/detector/brokencreative/a;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lrq/a;->d()Lrq/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->e()Ltp/g;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ltp/g;->d()Lrq/c;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lrq/c;->h()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1}, Lrq/a;->j()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v3, p0, Lio/bidmachine/rendering/internal/controller/h;->j:Lhq/a;

    .line 26
    .line 27
    invoke-direct {v1, v2, p1, v0, v3}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;-><init>(ILjava/lang/String;Lrq/m;Lhq/a;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    return-object v1
.end method

.method public static final synthetic g(Lio/bidmachine/rendering/internal/controller/h;Lio/bidmachine/rendering/internal/controller/h;)Lio/bidmachine/rendering/internal/h;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/controller/h;->P(Lio/bidmachine/rendering/internal/controller/h;)Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lio/bidmachine/rendering/internal/controller/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/h;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lio/bidmachine/rendering/internal/controller/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/controller/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m(Lio/bidmachine/rendering/internal/controller/h;Lrq/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/controller/h;->t(Lrq/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n(Lio/bidmachine/rendering/internal/controller/h;Lsq/n;ZZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/internal/controller/h;->v(Lsq/n;ZZLjava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Lio/bidmachine/rendering/internal/controller/h;Ltp/b0;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/h;->z(Ltp/b0;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "EventTask - "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", target object ("

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, ") not found"

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    new-array p2, p2, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v0, p1, p2}, Ltp/s;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "EventTask - "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", target object ("

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, ") not "

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x0

    .line 37
    new-array p2, p2, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v0, p1, p2}, Ltp/s;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final t(Lrq/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnq/b;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->X()Lfq/s;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lfq/s;->a(Lrq/n;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method private final v(Lsq/n;ZZLjava/lang/Runnable;)V
    .locals 7

    .line 1
    instance-of v0, p1, Ltp/f;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lnq/b;->d()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lnq/b;->h()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    sget-object v0, Lio/bidmachine/rendering/model/AnimationEventType;->Appear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 24
    .line 25
    :goto_0
    move-object v3, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    sget-object v0, Lio/bidmachine/rendering/model/AnimationEventType;->Disappear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_1
    const/4 v0, 0x0

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    move-object v5, p4

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    move-object v5, v0

    .line 36
    :goto_2
    if-eqz p2, :cond_2

    .line 37
    .line 38
    move-object v6, v0

    .line 39
    goto :goto_3

    .line 40
    :cond_2
    move-object v6, p4

    .line 41
    :goto_3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h;->d:Leq/c;

    .line 42
    .line 43
    move-object v2, p1

    .line 44
    check-cast v2, Ltp/f;

    .line 45
    .line 46
    move v4, p3

    .line 47
    invoke-interface/range {v1 .. v6}, Leq/c;->e(Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_3
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 52
    .line 53
    .line 54
    :goto_4
    return-void
.end method

.method private static final w(Ltp/f;)V
    .locals 1

    .line 1
    const-string v0, "$item"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ltp/f;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A(Lup/a;Lup/c;)V
    .locals 3
    .param p1    # Lup/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lup/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "adForm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adFormListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "Load AdElement - "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lup/a;->h()Lrq/a;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lrq/a;->j()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    new-array v2, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lfq/p;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Lfq/p;-><init>(Ltp/f;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h;->n:Ljava/util/Map;

    .line 50
    .line 51
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h;->m:Lcr/c;

    .line 55
    .line 56
    invoke-interface {v1, v0}, Lcr/c;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    sget-object v1, Lrq/t;->b:Lrq/t$a;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lrq/t$a;->a(Ljava/lang/Throwable;)Lrq/t;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {p2, p1, v0}, Lup/c;->d(Lup/a;Lrq/t;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public final C(Lup/a;Z)Z
    .locals 3
    .param p1    # Lup/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lup/a;->u()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h;->d:Leq/c;

    .line 13
    .line 14
    sget-object v2, Lio/bidmachine/rendering/model/AnimationEventType;->Appear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 15
    .line 16
    invoke-interface {v1, p1, p2, v2}, Leq/c;->h(Ltp/f;ZLio/bidmachine/rendering/model/AnimationEventType;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return v0
.end method

.method public final E(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->o:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v4, v2

    .line 32
    check-cast v4, Ltp/f;

    .line 33
    .line 34
    invoke-interface {v4}, Ltp/f;->h()Lrq/a;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lrq/a;->j()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4, p1, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v2, v1

    .line 50
    :goto_0
    check-cast v2, Ltp/f;

    .line 51
    .line 52
    if-nez v2, :cond_7

    .line 53
    .line 54
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->p:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    move-object v4, v2

    .line 71
    check-cast v4, Ltp/f;

    .line 72
    .line 73
    invoke-interface {v4}, Ltp/f;->h()Lrq/a;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lrq/a;->j()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v4, p1, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move-object v2, v1

    .line 89
    :goto_1
    check-cast v2, Ltp/f;

    .line 90
    .line 91
    if-nez v2, :cond_7

    .line 92
    .line 93
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->q:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    move-object v4, v2

    .line 110
    check-cast v4, Ltp/t;

    .line 111
    .line 112
    invoke-virtual {v4}, Ltp/t;->t()Lrq/d0;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v4}, Lrq/d0;->a()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v4, p1, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_5

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_6
    move-object v2, v1

    .line 128
    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 129
    .line 130
    return-object v2

    .line 131
    :cond_8
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/controller/h;->V()Ltp/b0;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ltp/b0;->s()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_9

    .line 144
    .line 145
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/controller/h;->V()Ltp/b0;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1

    .line 150
    :cond_9
    return-object v1
.end method

.method public final G(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ltp/b0;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v2, "Destroy TargetObjects"

    .line 12
    .line 13
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ltp/b0;

    .line 31
    .line 32
    invoke-virtual {p0, v1, p1}, Lio/bidmachine/rendering/internal/controller/h;->z(Ltp/b0;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final H(Ljava/util/List;Z)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltp/f;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Show AdElements, animated: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ltp/f;

    .line 46
    .line 47
    invoke-virtual {p0, v0, p2}, Lio/bidmachine/rendering/internal/controller/h;->J(Ltp/f;Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public final J(Ltp/f;Z)V
    .locals 11
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Show AdElement - "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ltp/f;->h()Lrq/a;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lrq/a;->j()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", animated: "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v7, Lfq/u;

    .line 48
    .line 49
    invoke-direct {v7, p1}, Lfq/u;-><init>(Ltp/f;)V

    .line 50
    .line 51
    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    iget-object v3, p0, Lio/bidmachine/rendering/internal/controller/h;->d:Leq/c;

    .line 55
    .line 56
    sget-object v5, Lio/bidmachine/rendering/model/AnimationEventType;->Appear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 57
    .line 58
    const/16 v9, 0x14

    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    move-object v4, p1

    .line 64
    invoke-static/range {v3 .. v10}, Leq/c;->b(Leq/c;Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {v7}, Lyq/m;->run()V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final O()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "Cancel loading AdElements"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->n:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    iget-object v2, p0, Lio/bidmachine/rendering/internal/controller/h;->m:Lcr/c;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Runnable;

    .line 40
    .line 41
    invoke-interface {v2, v1}, Lcr/c;->cancel(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->n:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final Q()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "Destroy AdPhase"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->d:Leq/c;

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->e()Ltp/g;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Leq/c;->c(Ltp/g;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->e()Ltp/g;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lfq/x;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lfq/x;-><init>(Ltp/g;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final S()Lup/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->r:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lup/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final T()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltp/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltp/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->p:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltp/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public X()Lfq/s;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->h:Lfq/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z()Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->e()Ltp/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltp/g;->d()Lrq/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lrq/c;->a()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v0, Lrq/t;

    .line 21
    .line 22
    const-string v1, "AdPhase does not contain any ads part"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/h;->u(Lrq/t;)V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->c0()V

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    .line 42
    .line 43
    invoke-virtual {v1}, Lnq/b;->c()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    return v2

    .line 50
    :cond_2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h;->o:Ljava/util/List;

    .line 51
    .line 52
    new-instance v3, Lio/bidmachine/rendering/internal/controller/h$a;

    .line 53
    .line 54
    invoke-direct {v3, p0}, Lio/bidmachine/rendering/internal/controller/h$a;-><init>(Lio/bidmachine/rendering/internal/controller/h;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, v3}, Lio/bidmachine/rendering/internal/controller/h;->h(Ljava/util/List;Lup/c;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->o:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    new-instance v0, Lrq/t;

    .line 73
    .line 74
    const-string v1, "No supported ads found for the given parameters"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/h;->u(Lrq/t;)V

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :cond_3
    const/4 v0, 0x1

    .line 84
    return v0
.end method

.method public a()V
    .locals 3

    .line 20
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AdPhase - destroy"

    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->O()V

    .line 22
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->o:Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/h;->r(Ljava/util/List;)V

    .line 23
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->p:Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/h;->r(Ljava/util/List;)V

    .line 24
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->Q()V

    .line 25
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->q:Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/h;->G(Ljava/util/List;)V

    .line 26
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/controller/h;->V()Ltp/b0;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lio/bidmachine/rendering/internal/controller/h;->o(Lio/bidmachine/rendering/internal/controller/h;Ltp/b0;Ljava/util/List;ILjava/lang/Object;)V

    .line 27
    invoke-virtual {p0, v2}, Lio/bidmachine/rendering/internal/controller/h;->d(Lfq/s;)V

    .line 28
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    invoke-virtual {v0}, Lnq/b;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdPhase - performHide, isFinishing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->T()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-class v2, Ltp/y;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltp/f;

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lio/bidmachine/rendering/internal/controller/h$l;

    invoke-direct {v2, v1}, Lio/bidmachine/rendering/internal/controller/h$l;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lsq/j;->k(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->U()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltp/f;

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance v3, Lio/bidmachine/rendering/internal/controller/h$m;

    invoke-direct {v3, v1}, Lio/bidmachine/rendering/internal/controller/h$m;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lsq/j;->k(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->W()Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltp/t;

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    new-instance v3, Lio/bidmachine/rendering/internal/controller/h$n;

    invoke-direct {v3, v1}, Lio/bidmachine/rendering/internal/controller/h$n;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lsq/j;->k(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 15
    :cond_5
    invoke-static {p0}, Lio/bidmachine/rendering/internal/controller/h;->F(Lio/bidmachine/rendering/internal/controller/h;)Ltp/b0;

    move-result-object v0

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    new-instance v1, Lio/bidmachine/rendering/internal/controller/h$o;

    invoke-direct {v1, v0}, Lio/bidmachine/rendering/internal/controller/h$o;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 18
    :goto_3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->o:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/rendering/internal/controller/h;->s(Ljava/util/List;Z)V

    .line 19
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->p:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/rendering/internal/controller/h;->s(Ljava/util/List;Z)V

    return-void
.end method

.method public final a0()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->e()Ltp/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltp/g;->d()Lrq/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lrq/c;->e()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h;->p:Ljava/util/List;

    .line 14
    .line 15
    new-instance v2, Lio/bidmachine/rendering/internal/controller/h$e;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lio/bidmachine/rendering/internal/controller/h$e;-><init>(Lio/bidmachine/rendering/internal/controller/h;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v2}, Lio/bidmachine/rendering/internal/controller/h;->h(Ljava/util/List;Lup/c;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    invoke-virtual {v0}, Lnq/b;->b()Z

    move-result v0

    return v0
.end method

.method public final b0()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->e()Ltp/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltp/g;->d()Lrq/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lrq/c;->g()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h;->q:Ljava/util/List;

    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/16 v3, 0xa

    .line 18
    .line 19
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lrq/d0;

    .line 41
    .line 42
    new-instance v4, Ltp/t;

    .line 43
    .line 44
    invoke-virtual {v3}, Lrq/d0;->a()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {p0, v5}, Lio/bidmachine/rendering/internal/controller/h;->i(Ljava/lang/String;)Ljq/b;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-direct {v4, v3, v5}, Ltp/t;-><init>(Lrq/d0;Ljq/b;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public c()V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AdPhase - load"

    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p0}, Lio/bidmachine/rendering/internal/controller/h;->R(Lio/bidmachine/rendering/internal/controller/h;)Lgt/g0;

    move-result-object v3

    invoke-direct {p0, p0}, Lio/bidmachine/rendering/internal/controller/h;->P(Lio/bidmachine/rendering/internal/controller/h;)Lio/bidmachine/rendering/internal/h;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->e()Lgt/c0;

    move-result-object v4

    new-instance v6, Lio/bidmachine/rendering/internal/controller/h$k;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lio/bidmachine/rendering/internal/controller/h$k;-><init>(Lio/bidmachine/rendering/internal/controller/h;Lrs/c;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method public c(Landroid/view/ViewGroup;)Z
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->e()Ltp/g;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h;->o:Ljava/util/List;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/controller/h;->p:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Ltp/g;->c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final c0()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lnq/b;->a(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->c:Lfq/r;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lfq/r;->d(Lfq/q;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AdPhase - performShow"

    invoke-static {v0, v3, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->T()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-class v3, Ltp/y;

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltp/f;

    .line 4
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, Lio/bidmachine/rendering/internal/controller/h$p;

    invoke-direct {v3, v2}, Lio/bidmachine/rendering/internal/controller/h$p;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lsq/j;->k(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->U()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltp/f;

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance v4, Lio/bidmachine/rendering/internal/controller/h$q;

    invoke-direct {v4, v2}, Lio/bidmachine/rendering/internal/controller/h$q;-><init>(Ljava/lang/Object;)V

    invoke-static {v4}, Lsq/j;->k(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->W()Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltp/t;

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance v4, Lio/bidmachine/rendering/internal/controller/h$r;

    invoke-direct {v4, v2}, Lio/bidmachine/rendering/internal/controller/h$r;-><init>(Ljava/lang/Object;)V

    invoke-static {v4}, Lsq/j;->k(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-static {p0}, Lio/bidmachine/rendering/internal/controller/h;->F(Lio/bidmachine/rendering/internal/controller/h;)Ltp/b0;

    move-result-object v0

    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 16
    :cond_6
    new-instance v2, Lio/bidmachine/rendering/internal/controller/h$s;

    invoke-direct {v2, v0}, Lio/bidmachine/rendering/internal/controller/h$s;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 17
    :goto_3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    invoke-virtual {v0}, Lnq/b;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->o:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/controller/h;->H(Ljava/util/List;Z)V

    .line 19
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->p:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/controller/h;->H(Ljava/util/List;Z)V

    .line 20
    :cond_7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    invoke-virtual {v0}, Lnq/b;->l()V

    return-void
.end method

.method public d(Lfq/s;)V
    .locals 0
    .param p1    # Lfq/s;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 21
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h;->h:Lfq/s;

    return-void
.end method

.method public e()Ltp/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->g:Ltp/g;

    return-object v0
.end method

.method public final h(Ljava/util/List;Lup/c;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lup/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrq/a;",
            ">;",
            "Lup/c;",
            ")",
            "Ljava/util/List<",
            "Ltp/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "elementsParams"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adFormListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lrq/a;

    .line 37
    .line 38
    invoke-virtual {p0, v1, p2}, Lio/bidmachine/rendering/internal/controller/h;->j(Lrq/a;Lup/c;)Lup/a;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lup/a;

    .line 61
    .line 62
    invoke-virtual {p0, v1, p2}, Lio/bidmachine/rendering/internal/controller/h;->A(Lup/a;Lup/c;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    return-object v0
.end method

.method public final i(Ljava/lang/String;)Ljq/b;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sourceName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/bidmachine/rendering/internal/event/c;

    .line 7
    .line 8
    new-instance v3, Lkq/c;

    .line 9
    .line 10
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/controller/h;->Y()Lkq/b;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v3, v1}, Lkq/c;-><init>(Lkq/b;)V

    .line 15
    .line 16
    .line 17
    new-instance v4, Leq/d;

    .line 18
    .line 19
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h;->d:Leq/c;

    .line 20
    .line 21
    new-instance v2, Lio/bidmachine/rendering/internal/controller/h$i;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lio/bidmachine/rendering/internal/controller/h$i;-><init>(Lio/bidmachine/rendering/internal/controller/h;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v4, v1, v2}, Leq/d;-><init>(Leq/c;Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    new-instance v5, Ljq/a;

    .line 30
    .line 31
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h;->i:Ljq/e;

    .line 32
    .line 33
    invoke-direct {v5, v1, p1}, Ljq/a;-><init>(Ljq/e;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p0}, Lio/bidmachine/rendering/internal/controller/h;->R(Lio/bidmachine/rendering/internal/controller/h;)Lgt/g0;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-direct {p0, p0}, Lio/bidmachine/rendering/internal/controller/h;->P(Lio/bidmachine/rendering/internal/controller/h;)Lio/bidmachine/rendering/internal/h;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->e()Ltp/g;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ltp/g;->d()Lrq/c;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, p1}, Lrq/c;->f(Ljava/lang/String;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    move-object v1, v0

    .line 57
    move-object v2, p1

    .line 58
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/rendering/internal/event/c;-><init>(Ljava/lang/String;Ljq/d;Ljq/d;Ljq/c;Lgt/g0;Lio/bidmachine/rendering/internal/h;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public final j(Lrq/a;Lup/c;)Lup/a;
    .locals 3
    .param p1    # Lrq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lup/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "elementParams"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adFormListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "Create AdElement - "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lrq/a;->j()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h;->S()Lup/b;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lrq/a;->j()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/controller/h;->i(Ljava/lang/String;)Ljq/b;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/controller/h;->f(Lrq/a;)Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, p1, p2, v1, v2}, Lup/b;->b(Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)Lup/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public onShown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnq/b;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v2, "AdPhase - onShown"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->o:Ljava/util/List;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/controller/h;->H(Ljava/util/List;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->p:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/controller/h;->H(Ljava/util/List;Z)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/controller/h;->V()Ltp/b0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ltp/b0;->r()Ljq/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljq/b;->k()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltp/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v2, "Destroy AdElements"

    .line 12
    .line 13
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ltp/f;

    .line 31
    .line 32
    invoke-virtual {p0, v1, p1}, Lio/bidmachine/rendering/internal/controller/h;->x(Ltp/f;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final s(Ljava/util/List;Z)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltp/f;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Hide AdElements, animated: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ltp/f;

    .line 46
    .line 47
    invoke-virtual {p0, v0, p2}, Lio/bidmachine/rendering/internal/controller/h;->y(Ltp/f;Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsq/h;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "tag.toString()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final u(Lrq/t;)V
    .locals 2
    .param p1    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->b:Lio/bidmachine/rendering/internal/state/c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lnq/b;->a(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->c:Lfq/r;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lfq/r;->c(Lfq/q;Lrq/t;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final x(Ltp/f;Ljava/util/List;)V
    .locals 3
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltp/f;",
            "Ljava/util/List<",
            "Ltp/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Destroy AdElement - "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ltp/f;->h()Lrq/a;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lrq/a;->j()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->d:Leq/c;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Leq/c;->a(Ltp/f;)V

    .line 42
    .line 43
    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    new-instance p2, Lfq/t;

    .line 50
    .line 51
    invoke-direct {p2, p1}, Lfq/t;-><init>(Ltp/f;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final y(Ltp/f;Z)V
    .locals 11
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Hide AdElement - "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ltp/f;->h()Lrq/a;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lrq/a;->j()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", animated: "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v8, Lfq/v;

    .line 48
    .line 49
    invoke-direct {v8, p1}, Lfq/v;-><init>(Ltp/f;)V

    .line 50
    .line 51
    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    iget-object v3, p0, Lio/bidmachine/rendering/internal/controller/h;->d:Leq/c;

    .line 55
    .line 56
    sget-object v5, Lio/bidmachine/rendering/model/AnimationEventType;->Disappear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 57
    .line 58
    const/16 v9, 0xc

    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    move-object v4, p1

    .line 64
    invoke-static/range {v3 .. v10}, Leq/c;->b(Leq/c;Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {v8}, Lyq/m;->run()V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final z(Ltp/b0;Ljava/util/List;)V
    .locals 3
    .param p1    # Ltp/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ltp/b0;",
            ">(",
            "Ltp/b0;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h;->a:Lsq/h;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Destroy TargetObject - "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ltp/b0;->s()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    new-instance p2, Lfq/w;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Lfq/w;-><init>(Ltp/b0;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
