.class public final Lwr/g;
.super Lio/ktor/util/StringValuesBuilderImpl;
.source "Headers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lwr/g;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lio/ktor/util/StringValuesBuilderImpl;-><init>(ZI)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x8

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lwr/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected l(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lio/ktor/util/StringValuesBuilderImpl;->l(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lwr/i;->a:Lwr/i;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lwr/i;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected m(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lio/ktor/util/StringValuesBuilderImpl;->m(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lwr/i;->a:Lwr/i;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lwr/i;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public n()Lwr/f;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lwr/h;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/util/StringValuesBuilderImpl;->i()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lwr/h;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
