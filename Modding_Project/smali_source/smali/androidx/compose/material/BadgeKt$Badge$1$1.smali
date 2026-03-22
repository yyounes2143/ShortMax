.class final Landroidx/compose/material/BadgeKt$Badge$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Badge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BadgeKt;->Badge-eopBjH0(Landroidx/compose/ui/Modifier;JJLat/n;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty$1:I

.field final synthetic $content:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_Row:Landroidx/compose/foundation/layout/RowScope;


# direct methods
.method constructor <init>(Lat/n;Landroidx/compose/foundation/layout/RowScope;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/RowScope;",
            "II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/BadgeKt$Badge$1$1;->$content:Lat/n;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/BadgeKt$Badge$1$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/material/BadgeKt$Badge$1$1;->$$dirty:I

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/material/BadgeKt$Badge$1$1;->$$dirty$1:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/BadgeKt$Badge$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 29
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    and-int/lit8 v2, p2, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Typography;->getButton()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    invoke-static {}, Landroidx/compose/material/BadgeKt;->access$getBadgeContentFontSize$p()J

    move-result-wide v6

    const v27, 0x3fffd

    const/16 v28, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    invoke-static/range {v3 .. v28}, Landroidx/compose/ui/text/TextStyle;->copy-HL5avdY$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;ILjava/lang/Object;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    .line 5
    new-instance v3, Landroidx/compose/material/BadgeKt$Badge$1$1$1;

    iget-object v4, v0, Landroidx/compose/material/BadgeKt$Badge$1$1;->$content:Lat/n;

    iget-object v5, v0, Landroidx/compose/material/BadgeKt$Badge$1$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    iget v6, v0, Landroidx/compose/material/BadgeKt$Badge$1$1;->$$dirty:I

    iget v7, v0, Landroidx/compose/material/BadgeKt$Badge$1$1;->$$dirty$1:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/compose/material/BadgeKt$Badge$1$1$1;-><init>(Lat/n;Landroidx/compose/foundation/layout/RowScope;II)V

    const v4, 0x368c28c6

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    const/16 v4, 0x30

    .line 6
    invoke-static {v2, v3, v1, v4}, Landroidx/compose/material/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    return-void
.end method
