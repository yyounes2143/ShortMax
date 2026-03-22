.class public final Lcom/moloco/sdk/acm/recorder/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/acm/recorder/a;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moloco/sdk/acm/recorder/b;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/moloco/sdk/acm/recorder/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/acm/e;)V
    .locals 2
    .param p1    # Lcom/moloco/sdk/acm/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/acm/recorder/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/acm/recorder/b;->a:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "mediator"

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lcom/moloco/sdk/acm/AndroidClientMetrics;->a:Lcom/moloco/sdk/acm/AndroidClientMetrics;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->u(Lcom/moloco/sdk/acm/e;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/moloco/sdk/acm/AndroidClientMetrics;->a:Lcom/moloco/sdk/acm/AndroidClientMetrics;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->u(Lcom/moloco/sdk/acm/e;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public b(Lcom/moloco/sdk/acm/b;)V
    .locals 2
    .param p1    # Lcom/moloco/sdk/acm/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/acm/recorder/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/acm/recorder/b;->a:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "mediator"

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lcom/moloco/sdk/acm/AndroidClientMetrics;->a:Lcom/moloco/sdk/acm/AndroidClientMetrics;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->t(Lcom/moloco/sdk/acm/b;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/moloco/sdk/acm/AndroidClientMetrics;->a:Lcom/moloco/sdk/acm/AndroidClientMetrics;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->t(Lcom/moloco/sdk/acm/b;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/acm/recorder/a$b;->a(Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
