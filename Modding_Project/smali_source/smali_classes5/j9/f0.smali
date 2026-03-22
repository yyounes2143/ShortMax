.class public final Lj9/f0;
.super Ljava/lang/Object;
.source "SessionGenerator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lj9/m0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lj9/o0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj9/m0;Lj9/o0;)V
    .locals 1
    .param p1    # Lj9/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lj9/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "timeProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "uuidGenerator"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lj9/f0;->a:Lj9/m0;

    .line 15
    .line 16
    iput-object p2, p0, Lj9/f0;->b:Lj9/o0;

    .line 17
    .line 18
    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lj9/f0;->b:Lj9/o0;

    .line 2
    .line 3
    invoke-interface {v0}, Lj9/o0;->next()Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v0, "toString(...)"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v2, "-"

    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "toLowerCase(...)"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/firebase/sessions/j;)Lcom/google/firebase/sessions/j;
    .locals 7
    .param p1    # Lcom/google/firebase/sessions/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lj9/f0;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    new-instance v6, Lcom/google/firebase/sessions/j;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/sessions/j;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v2, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move-object v2, v1

    .line 19
    :goto_1
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/firebase/sessions/j;->c()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    :goto_2
    move v3, p1

    .line 28
    goto :goto_3

    .line 29
    :cond_2
    const/4 p1, 0x0

    .line 30
    goto :goto_2

    .line 31
    :goto_3
    iget-object p1, p0, Lj9/f0;->a:Lj9/m0;

    .line 32
    .line 33
    invoke-interface {p1}, Lj9/m0;->a()Lcom/google/firebase/sessions/k;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/firebase/sessions/k;->b()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    move-object v0, v6

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/sessions/j;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 43
    .line 44
    .line 45
    return-object v6
.end method
