.class public final Lcom/moloco/sdk/acm/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/moloco/sdk/acm/d;)Lcom/moloco/sdk/acm/h;
    .locals 7
    .param p0    # Lcom/moloco/sdk/acm/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/moloco/sdk/acm/h;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/moloco/sdk/acm/d;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/moloco/sdk/acm/d;->d()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p0}, Lcom/moloco/sdk/acm/d;->e()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    invoke-virtual {p0}, Lcom/moloco/sdk/acm/d;->b()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    move-object v1, v0

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/moloco/sdk/acm/h;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
