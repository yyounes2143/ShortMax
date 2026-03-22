.class public final Lcom/moloco/sdk/internal/publisher/nativead/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/moloco/sdk/internal/publisher/nativead/ui/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Lat/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/p<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
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
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/publisher/nativead/ui/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/b;->a:Lcom/moloco/sdk/internal/publisher/nativead/ui/b;

    .line 7
    .line 8
    sget-object v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a;->a:Lcom/moloco/sdk/internal/publisher/nativead/ui/b$a;

    .line 9
    .line 10
    const v1, 0x3cc4467a

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
    sput-object v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/b;->b:Lat/p;

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
.method public final a()Lat/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lat/p<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/b;->b:Lat/p;

    .line 2
    .line 3
    return-object v0
.end method
