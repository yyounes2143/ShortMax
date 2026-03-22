.class public final Lcom/moloco/sdk/internal/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/h;->l(Lcom/moloco/sdk/internal/ortb/model/p;Z)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lat/r<",
        "-",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "-",
        "Ljava/lang/Boolean;",
        "-",
        "Lkt/i<",
        "+",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
        ">;-",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
        "+",
        "Lkotlin/Unit;",
        ">;-",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;-",
        "Landroidx/compose/runtime/Composer;",
        "-",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/Unit;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$3\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,283:1\n155#2:284\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$3\n*L\n118#1:284\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/moloco/sdk/internal/ortb/model/p;


# direct methods
.method public constructor <init>(ZLcom/moloco/sdk/internal/ortb/model/p;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/moloco/sdk/internal/h$e;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/h$e;->b:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)Lat/r;
    .locals 13
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lat/r<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Lkt/i<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    const v0, 0x24b7ab74

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const-string v2, "com.moloco.sdk.internal.toVastOptions.<anonymous> (AggregatedOptions.kt:110)"

    .line 15
    .line 16
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-boolean p2, p0, Lcom/moloco/sdk/internal/h$e;->a:Z

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p2, p0, Lcom/moloco/sdk/internal/h$e;->b:Lcom/moloco/sdk/internal/ortb/model/p;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/ortb/model/p;->e()Lcom/moloco/sdk/internal/ortb/model/g;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    :goto_0
    const/4 p2, 0x0

    .line 33
    goto :goto_3

    .line 34
    :cond_2
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/ortb/model/g;->d()Lcom/moloco/sdk/internal/ortb/model/l;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/ortb/model/g;->h()Lcom/moloco/sdk/internal/ortb/model/v;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/moloco/sdk/internal/h;->a(Lcom/moloco/sdk/internal/ortb/model/l;Lcom/moloco/sdk/internal/ortb/model/v;)Landroidx/compose/ui/Alignment;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/ortb/model/g;->f()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-float v0, v0

    .line 51
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/ortb/model/g;->g()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/ortb/model/g;->c()J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/ortb/model/g;->a()Landroidx/compose/ui/graphics/Color;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    :goto_1
    move-wide v7, v0

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-static {}, Lcom/moloco/sdk/internal/f0;->a()J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    goto :goto_1

    .line 84
    :goto_2
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/ortb/model/g;->e()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    const/4 v11, 0x0

    .line 89
    const/4 v12, 0x0

    .line 90
    move-object v10, p1

    .line 91
    invoke-static/range {v2 .. v12}, Lcom/moloco/sdk/internal/f0;->b(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;JJLjava/lang/String;Landroidx/compose/runtime/Composer;II)Lat/r;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 105
    .line 106
    .line 107
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/h$e;->a(Landroidx/compose/runtime/Composer;I)Lat/r;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
