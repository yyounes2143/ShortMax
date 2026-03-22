.class public final Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;
.super Ljava/lang/Object;
.source "BasicText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sget-object v1, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt$lambda-1$1;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt$lambda-1$1;

    .line 10
    .line 11
    const v2, 0x654c31ea

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    .line 19
    .line 20
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
.method public final getLambda-1$foundation_release()Lkotlin/jvm/functions/Function2;
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
    sget-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method
