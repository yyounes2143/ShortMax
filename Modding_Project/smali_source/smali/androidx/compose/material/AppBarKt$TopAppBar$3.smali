.class final Landroidx/compose/material/AppBarKt$TopAppBar$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AppBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AppBarKt;->TopAppBar-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Lat/n;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $$default:I

.field final synthetic $backgroundColor:J

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

.field final synthetic $contentColor:J

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $elevation:F

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Lat/n;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$modifier:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    iput-wide p2, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$backgroundColor:J

    .line 4
    .line 5
    iput-wide p4, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$contentColor:J

    .line 6
    .line 7
    iput p6, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$elevation:F

    .line 8
    .line 9
    iput-object p7, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 10
    .line 11
    iput-object p8, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$content:Lat/n;

    .line 12
    .line 13
    iput p9, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$$changed:I

    .line 14
    .line 15
    iput p10, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$$default:I

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 19
    .line 20
    .line 21
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AppBarKt$TopAppBar$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$backgroundColor:J

    iget-wide v3, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$contentColor:J

    iget v5, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$elevation:F

    iget-object v6, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v7, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$content:Lat/n;

    iget p2, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$$changed:I

    or-int/lit8 v9, p2, 0x1

    iget v10, p0, Landroidx/compose/material/AppBarKt$TopAppBar$3;->$$default:I

    move-object v8, p1

    invoke-static/range {v0 .. v10}, Landroidx/compose/material/AppBarKt;->TopAppBar-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Lat/n;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
