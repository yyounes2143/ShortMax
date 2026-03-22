.class public final Landroidx/compose/material/ComposableSingletons$ScaffoldKt;
.super Ljava/lang/Object;
.source "Scaffold.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static lambda-1:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static lambda-2:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static lambda-3:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static lambda-4:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-1$1;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-1$1;

    .line 9
    .line 10
    const v1, 0x7b58a0cd

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    .line 19
    .line 20
    const v0, -0xdd1c243

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-2$1;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-2$1;

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-2:Lkotlin/jvm/functions/Function2;

    .line 30
    .line 31
    const v0, -0x8cd8a30

    .line 32
    .line 33
    .line 34
    sget-object v1, Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-3$1;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-3$1;

    .line 35
    .line 36
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-3:Lat/n;

    .line 41
    .line 42
    const v0, -0x35af2423

    .line 43
    .line 44
    .line 45
    sget-object v1, Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-4$1;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-4$1;

    .line 46
    .line 47
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-4:Lkotlin/jvm/functions/Function2;

    .line 52
    .line 53
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
.method public final getLambda-1$material_release()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLambda-2$material_release()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-2:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLambda-3$material_release()Lat/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lat/n<",
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-3:Lat/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLambda-4$material_release()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-4:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method
