.class public final Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;
.super Ljava/lang/Object;
.source "RoundingOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/RoundingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;-><init>()V

    return-void
.end method

.method public static synthetic forCornerRadii$default(Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;[FZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final asCircle()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->getAS_CIRCLE()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public final asCircle(Z)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->getAS_CIRCLE_ANTI_ALIASING()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->getAS_CIRCLE()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final asCircle(ZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v6, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    move-object v0, v6

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v6
.end method

.method public final forCornerRadii(FFFF)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v6, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/16 v0, 0x8

    .line 3
    new-array v3, v0, [F

    const/4 v0, 0x0

    aput p1, v3, v0

    const/4 v0, 0x1

    aput p1, v3, v0

    const/4 p1, 0x2

    aput p2, v3, p1

    const/4 p1, 0x3

    aput p2, v3, p1

    const/4 p1, 0x4

    aput p3, v3, p1

    const/4 p1, 0x5

    aput p3, v3, p1

    const/4 p1, 0x6

    aput p4, v3, p1

    const/4 p1, 0x7

    aput p4, v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v6
.end method

.method public final forCornerRadii([F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 3
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cornerRadii"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii$default(Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;[FZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p1

    return-object p1
.end method

.method public final forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 7
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cornerRadii"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v0
.end method

.method public final forCornerRadiusPx(F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v0, v6

    .line 8
    move v2, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public final getAS_CIRCLE()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/fresco/vito/options/RoundingOptions;->access$getAS_CIRCLE$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getAS_CIRCLE_ANTI_ALIASING()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/fresco/vito/options/RoundingOptions;->access$getAS_CIRCLE_ANTI_ALIASING$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
