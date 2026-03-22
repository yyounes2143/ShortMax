.class public final Lcom/moloco/sdk/internal/publisher/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/publisher/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/internal/publisher/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/moloco/sdk/publisher/MolocoInitStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/internal/publisher/v;->a()Lcom/moloco/sdk/publisher/MolocoInitStatus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/moloco/sdk/publisher/MolocoInitStatus;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "errorMessage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/moloco/sdk/publisher/MolocoInitStatus;

    .line 7
    .line 8
    sget-object v1, Lcom/moloco/sdk/publisher/Initialization;->FAILURE:Lcom/moloco/sdk/publisher/Initialization;

    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Lcom/moloco/sdk/publisher/MolocoInitStatus;-><init>(Lcom/moloco/sdk/publisher/Initialization;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final c()Lcom/moloco/sdk/publisher/MolocoInitStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/internal/publisher/v;->f()Lcom/moloco/sdk/publisher/MolocoInitStatus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
