.class public final Lcom/moloco/sdk/internal/f0$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/f0$a$a;->a(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lat/n<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/f0$a$a$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/f0$a$a$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/moloco/sdk/internal/f0$a$a$a;->c:J

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/moloco/sdk/internal/f0$a$a$a;->d:J

    .line 8
    .line 9
    iput-object p7, p0, Lcom/moloco/sdk/internal/f0$a$a$a;->e:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 13
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    const-string v2, "it"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    and-int/lit8 v2, p3, 0x6

    .line 9
    .line 10
    move-object v9, p2

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x2

    .line 22
    :goto_0
    or-int v2, p3, v2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move/from16 v2, p3

    .line 26
    .line 27
    :goto_1
    and-int/lit8 v3, v2, 0x13

    .line 28
    .line 29
    const/16 v4, 0x12

    .line 30
    .line 31
    if-ne v3, v4, :cond_3

    .line 32
    .line 33
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    const/4 v3, -0x1

    .line 51
    const-string v4, "com.moloco.sdk.internal.molocoCTAButton.<anonymous>.<anonymous>.<anonymous> (MolocoVastCTA.kt:72)"

    .line 52
    .line 53
    const v5, -0x738b334d

    .line 54
    .line 55
    .line 56
    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-object v3, v0, Lcom/moloco/sdk/internal/f0$a$a$a;->a:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v4, v0, Lcom/moloco/sdk/internal/f0$a$a$a;->b:Ljava/lang/String;

    .line 62
    .line 63
    iget-wide v5, v0, Lcom/moloco/sdk/internal/f0$a$a$a;->c:J

    .line 64
    .line 65
    iget-wide v7, v0, Lcom/moloco/sdk/internal/f0$a$a$a;->d:J

    .line 66
    .line 67
    iget-object v10, v0, Lcom/moloco/sdk/internal/f0$a$a$a;->e:Lkotlin/jvm/functions/Function0;

    .line 68
    .line 69
    and-int/lit8 v11, v2, 0xe

    .line 70
    .line 71
    const/4 v12, 0x0

    .line 72
    move-object v1, p1

    .line 73
    move-object v2, v3

    .line 74
    move-object v3, v4

    .line 75
    move-wide v4, v5

    .line 76
    move-wide v6, v7

    .line 77
    move-object v8, v10

    .line 78
    move-object v9, p2

    .line 79
    move v10, v11

    .line 80
    move v11, v12

    .line 81
    invoke-static/range {v1 .. v11}, Lcom/moloco/sdk/internal/f0;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_3
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/moloco/sdk/internal/f0$a$a$a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method
