.class public final Lcom/moloco/sdk/internal/services/events/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public a:Lcom/moloco/sdk/internal/services/events/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/moloco/sdk/internal/services/events/d;->a()Lcom/moloco/sdk/internal/services/events/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/events/c;->a:Lcom/moloco/sdk/internal/services/events/e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/events/c;->a:Lcom/moloco/sdk/internal/services/events/e;

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/events/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appForegroundUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBackgroundUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/events/e;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/services/events/e;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/moloco/sdk/internal/services/events/c;->a:Lcom/moloco/sdk/internal/services/events/e;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/events/c;->a:Lcom/moloco/sdk/internal/services/events/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/events/e;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/events/c;->a:Lcom/moloco/sdk/internal/services/events/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/events/e;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/events/c;->a:Lcom/moloco/sdk/internal/services/events/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/events/e;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
