.class final Landroidx/compose/material/TextKt$Text$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Text.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextKt;->Text--4IGK_g(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
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
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $color:J

.field final synthetic $fontFamily:Landroidx/compose/ui/text/font/FontFamily;

.field final synthetic $fontSize:J

.field final synthetic $fontStyle:Landroidx/compose/ui/text/font/FontStyle;

.field final synthetic $fontWeight:Landroidx/compose/ui/text/font/FontWeight;

.field final synthetic $inlineContent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $letterSpacing:J

.field final synthetic $lineHeight:J

.field final synthetic $maxLines:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onTextLayout:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $overflow:I

.field final synthetic $softWrap:Z

.field final synthetic $style:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $text:Landroidx/compose/ui/text/AnnotatedString;

.field final synthetic $textAlign:Landroidx/compose/ui/text/style/TextAlign;

.field final synthetic $textDecoration:Landroidx/compose/ui/text/style/TextDecoration;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "J",
            "Landroidx/compose/ui/text/style/TextDecoration;",
            "Landroidx/compose/ui/text/style/TextAlign;",
            "JIZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "III)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$text:Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    .line 5
    move-object v1, p2

    .line 6
    iput-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$modifier:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    move-wide v1, p3

    .line 9
    iput-wide v1, v0, Landroidx/compose/material/TextKt$Text$4;->$color:J

    .line 10
    .line 11
    move-wide v1, p5

    .line 12
    iput-wide v1, v0, Landroidx/compose/material/TextKt$Text$4;->$fontSize:J

    .line 13
    .line 14
    move-object v1, p7

    .line 15
    iput-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 16
    .line 17
    move-object v1, p8

    .line 18
    iput-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 19
    .line 20
    move-object v1, p9

    .line 21
    iput-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 22
    .line 23
    move-wide v1, p10

    .line 24
    iput-wide v1, v0, Landroidx/compose/material/TextKt$Text$4;->$letterSpacing:J

    .line 25
    .line 26
    move-object v1, p12

    .line 27
    iput-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 28
    .line 29
    move-object/from16 v1, p13

    .line 30
    .line 31
    iput-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$textAlign:Landroidx/compose/ui/text/style/TextAlign;

    .line 32
    .line 33
    move-wide/from16 v1, p14

    .line 34
    .line 35
    iput-wide v1, v0, Landroidx/compose/material/TextKt$Text$4;->$lineHeight:J

    .line 36
    .line 37
    move/from16 v1, p16

    .line 38
    .line 39
    iput v1, v0, Landroidx/compose/material/TextKt$Text$4;->$overflow:I

    .line 40
    .line 41
    move/from16 v1, p17

    .line 42
    .line 43
    iput-boolean v1, v0, Landroidx/compose/material/TextKt$Text$4;->$softWrap:Z

    .line 44
    .line 45
    move/from16 v1, p18

    .line 46
    .line 47
    iput v1, v0, Landroidx/compose/material/TextKt$Text$4;->$maxLines:I

    .line 48
    .line 49
    move-object/from16 v1, p19

    .line 50
    .line 51
    iput-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$inlineContent:Ljava/util/Map;

    .line 52
    .line 53
    move-object/from16 v1, p20

    .line 54
    .line 55
    iput-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    .line 56
    .line 57
    move-object/from16 v1, p21

    .line 58
    .line 59
    iput-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$style:Landroidx/compose/ui/text/TextStyle;

    .line 60
    .line 61
    move/from16 v1, p22

    .line 62
    .line 63
    iput v1, v0, Landroidx/compose/material/TextKt$Text$4;->$$changed:I

    .line 64
    .line 65
    move/from16 v1, p23

    .line 66
    .line 67
    iput v1, v0, Landroidx/compose/material/TextKt$Text$4;->$$changed1:I

    .line 68
    .line 69
    move/from16 v1, p24

    .line 70
    .line 71
    iput v1, v0, Landroidx/compose/material/TextKt$Text$4;->$$default:I

    .line 72
    .line 73
    const/4 v1, 0x2

    .line 74
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 75
    .line 76
    .line 77
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TextKt$Text$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 26
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v22, p1

    iget-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v0, Landroidx/compose/material/TextKt$Text$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v3, v0, Landroidx/compose/material/TextKt$Text$4;->$color:J

    iget-wide v5, v0, Landroidx/compose/material/TextKt$Text$4;->$fontSize:J

    iget-object v7, v0, Landroidx/compose/material/TextKt$Text$4;->$fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v8, v0, Landroidx/compose/material/TextKt$Text$4;->$fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v9, v0, Landroidx/compose/material/TextKt$Text$4;->$fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iget-wide v10, v0, Landroidx/compose/material/TextKt$Text$4;->$letterSpacing:J

    iget-object v12, v0, Landroidx/compose/material/TextKt$Text$4;->$textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v13, v0, Landroidx/compose/material/TextKt$Text$4;->$textAlign:Landroidx/compose/ui/text/style/TextAlign;

    iget-wide v14, v0, Landroidx/compose/material/TextKt$Text$4;->$lineHeight:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/material/TextKt$Text$4;->$overflow:I

    move/from16 v16, v1

    iget-boolean v1, v0, Landroidx/compose/material/TextKt$Text$4;->$softWrap:Z

    move/from16 v17, v1

    iget v1, v0, Landroidx/compose/material/TextKt$Text$4;->$maxLines:I

    move/from16 v18, v1

    iget-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$inlineContent:Ljava/util/Map;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroidx/compose/material/TextKt$Text$4;->$style:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/compose/material/TextKt$Text$4;->$$changed:I

    or-int/lit8 v23, v1, 0x1

    iget v1, v0, Landroidx/compose/material/TextKt$Text$4;->$$changed1:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/compose/material/TextKt$Text$4;->$$default:I

    move/from16 v25, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v25}, Landroidx/compose/material/TextKt;->Text--4IGK_g(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
