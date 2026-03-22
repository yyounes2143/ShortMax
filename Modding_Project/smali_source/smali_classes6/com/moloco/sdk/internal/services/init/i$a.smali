.class public final Lcom/moloco/sdk/internal/services/init/i$a;
.super Lcom/moloco/sdk/internal/services/init/i;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/services/init/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/init/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/init/b;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/init/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "type"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/moloco/sdk/internal/services/init/i;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/init/i$a;->a:Lcom/moloco/sdk/internal/services/init/b;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lcom/moloco/sdk/internal/services/init/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/init/i$a;->a:Lcom/moloco/sdk/internal/services/init/b;

    .line 2
    .line 3
    return-object v0
.end method
