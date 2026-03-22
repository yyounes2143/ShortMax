.class public final Lcom/moloco/sdk/internal/android_context/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/moloco/sdk/internal/android_context/a;->a:Lcom/moloco/sdk/internal/android_context/a;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/moloco/sdk/internal/android_context/a;->b(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lcom/moloco/sdk/internal/android_context/a;->a:Lcom/moloco/sdk/internal/android_context/a;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/android_context/a;->a()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;ILjava/lang/Object;)Landroid/content/Context;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/moloco/sdk/internal/android_context/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
