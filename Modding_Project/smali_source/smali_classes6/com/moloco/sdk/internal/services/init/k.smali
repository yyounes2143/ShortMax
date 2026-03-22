.class public final Lcom/moloco/sdk/internal/services/init/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(I)Z
    .locals 2

    .line 1
    sget-object v0, Lwr/o;->c:Lwr/o$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwr/o$a;->U()Lwr/o;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lwr/o;->e0()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eq p0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lwr/o$a;->K()Lwr/o;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lwr/o;->e0()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq p0, v0, :cond_1

    .line 22
    .line 23
    const/16 v0, 0x190

    .line 24
    .line 25
    if-lt p0, v0, :cond_1

    .line 26
    .line 27
    const/16 v0, 0x1f4

    .line 28
    .line 29
    if-lt p0, v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    :goto_1
    return p0
.end method

.method public static final b(Lcom/moloco/sdk/internal/g0$a;)Z
    .locals 1
    .param p0    # Lcom/moloco/sdk/internal/g0$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/g0$a<",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            "Lcom/moloco/sdk/internal/services/init/i;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v0, v0, Lcom/moloco/sdk/internal/services/init/i$b;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/moloco/sdk/internal/services/init/i$b;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/init/i$b;->a()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p0}, Lcom/moloco/sdk/internal/services/init/k;->a(I)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x1

    .line 30
    return p0
.end method
