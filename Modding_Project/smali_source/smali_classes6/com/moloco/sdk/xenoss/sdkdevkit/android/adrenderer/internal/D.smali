.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/d0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$a;
    }
.end annotation


# static fields
.field public static final q:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final r:I


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/acm/recorder/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final n:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->q:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->r:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/acm/recorder/a;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    move-object/from16 v4, p5

    .line 8
    .line 9
    move-object/from16 v5, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    const-string v6, "context"

    .line 14
    .line 15
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v6, "adm"

    .line 19
    .line 20
    move-object v7, p2

    .line 21
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v6, "clickthroughService"

    .line 25
    .line 26
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v6, "watermark"

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v6, "externalLinkHandler"

    .line 36
    .line 37
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v6, "persistentHttpRequest"

    .line 41
    .line 42
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v6, "metricsRecorder"

    .line 46
    .line 47
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->a:Landroid/content/Context;

    .line 54
    .line 55
    iput-object v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 56
    .line 57
    iput-object v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 58
    .line 59
    iput-object v5, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 60
    .line 61
    iput-object v8, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->e:Lcom/moloco/sdk/acm/recorder/a;

    .line 62
    .line 63
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v3}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iput-object v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->f:Lgt/g0;

    .line 76
    .line 77
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/c;

    .line 78
    .line 79
    invoke-direct {v6, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/c;-><init>(Lgt/g0;)V

    .line 80
    .line 81
    .line 82
    iput-object v6, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/c;

    .line 83
    .line 84
    new-instance v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/h;

    .line 85
    .line 86
    invoke-direct {v9, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/h;-><init>(Lgt/g0;)V

    .line 87
    .line 88
    .line 89
    iput-object v9, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/h;

    .line 90
    .line 91
    new-instance v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/b;

    .line 92
    .line 93
    invoke-direct {v10, v1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/b;-><init>(Lcom/moloco/sdk/internal/services/f0;Lgt/g0;)V

    .line 94
    .line 95
    .line 96
    iput-object v10, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/b;

    .line 97
    .line 98
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/g;

    .line 99
    .line 100
    invoke-direct {v11, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/g;-><init>(Lgt/g0;)V

    .line 101
    .line 102
    .line 103
    iput-object v11, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/g;

    .line 104
    .line 105
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/a;

    .line 106
    .line 107
    invoke-direct {v1, v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/a;-><init>(Lcom/moloco/sdk/acm/recorder/a;)V

    .line 108
    .line 109
    .line 110
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/i;

    .line 111
    .line 112
    invoke-direct {v3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/i;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;)V

    .line 113
    .line 114
    .line 115
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/e;

    .line 116
    .line 117
    invoke-direct {v4, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/e;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;)V

    .line 118
    .line 119
    .line 120
    const/4 v5, 0x7

    .line 121
    new-array v5, v5, [Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/a;

    .line 122
    .line 123
    const/4 v12, 0x0

    .line 124
    aput-object v6, v5, v12

    .line 125
    .line 126
    const/4 v6, 0x1

    .line 127
    aput-object v10, v5, v6

    .line 128
    .line 129
    const/4 v6, 0x2

    .line 130
    aput-object v9, v5, v6

    .line 131
    .line 132
    const/4 v6, 0x3

    .line 133
    aput-object v1, v5, v6

    .line 134
    .line 135
    const/4 v1, 0x4

    .line 136
    aput-object v3, v5, v1

    .line 137
    .line 138
    const/4 v1, 0x5

    .line 139
    aput-object v4, v5, v1

    .line 140
    .line 141
    const/4 v1, 0x6

    .line 142
    aput-object v11, v5, v1

    .line 143
    .line 144
    invoke-static {v5}, Lkotlin/collections/y0;->j([Ljava/lang/Object;)Ljava/util/Set;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    iput-object v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->k:Ljava/util/Set;

    .line 149
    .line 150
    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;

    .line 151
    .line 152
    move-object v1, v12

    .line 153
    move-object v3, p2

    .line 154
    move-object v5, v10

    .line 155
    move-object v6, v9

    .line 156
    move-object v7, v11

    .line 157
    invoke-direct/range {v1 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/h;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/g;Lcom/moloco/sdk/acm/recorder/a;)V

    .line 158
    .line 159
    .line 160
    iput-object v12, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;

    .line 161
    .line 162
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 163
    .line 164
    invoke-static {v1}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->n:Lkt/e;

    .line 169
    .line 170
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/o;

    .line 171
    .line 172
    invoke-direct {v2, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/o;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->o:Lms/i;

    .line 180
    .line 181
    invoke-static {v1}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    iput-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->p:Lkt/e;

    .line 186
    .line 187
    return-void
.end method

.method public static final synthetic i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final m(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;)Lkt/i;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->n:Lkt/e;

    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;

    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;->m()Lkt/i;

    move-result-object v1

    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$b;-><init>(Lrs/c;)V

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/c;->G(Lkt/b;Lkt/b;Lat/n;)Lkt/b;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->f:Lgt/g0;

    sget-object v1, Lkotlinx/coroutines/flow/m;->a:Lkotlinx/coroutines/flow/m$a;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/m$a;->c()Lkotlinx/coroutines/flow/m;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p0, v1, v2}, Lkotlinx/coroutines/flow/c;->T(Lkt/b;Lgt/g0;Lkotlinx/coroutines/flow/m;Ljava/lang/Object;)Lkt/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic c(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/n;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/b0;

    .line 2
    .line 3
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/c0;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/b0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/c0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;->destroy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCreativeType()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->m:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;)V
    .locals 1
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;->h(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isLoaded()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;->isLoaded()Lkt/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/b0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/c0;)V
    .locals 10
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/c0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$d;

    .line 7
    .line 8
    invoke-direct {p1, p2, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$d;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/c0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;->q()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p2, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;->a(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;->k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/c0;)V

    .line 25
    .line 26
    .line 27
    sget-object p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/fullscreen/FullscreenWebviewActivity;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/fullscreen/FullscreenWebviewActivity$a;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->a:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->n:Lkt/e;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->p:Lkt/e;

    .line 36
    .line 37
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/fullscreen/FullscreenWebviewActivity$a;->b(Landroid/content/Context;Lkt/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/a;Lkt/e;)V

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->f:Lgt/g0;

    .line 41
    .line 42
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$c;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-direct {v7, p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D$d;Lrs/c;)V

    .line 46
    .line 47
    .line 48
    const/4 v8, 0x3

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-static/range {v4 .. v9}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public k()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->p:Lkt/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;->o:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt/i;

    return-object v0
.end method
