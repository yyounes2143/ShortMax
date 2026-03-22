.class public final Lcom/facebook/fresco/vito/options/BorderOptions$Companion;
.super Ljava/lang/Object;
.source "BorderOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/BorderOptions;
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
    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/facebook/fresco/vito/options/BorderOptions$Companion;IFFZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p4, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;->create(IFFZ)Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public final create(IF)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;->create$default(Lcom/facebook/fresco/vito/options/BorderOptions$Companion;IFFZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object p1

    return-object p1
.end method

.method public final create(IFF)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;->create$default(Lcom/facebook/fresco/vito/options/BorderOptions$Companion;IFFZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object p1

    return-object p1
.end method

.method public final create(IFFZ)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Lcom/facebook/fresco/vito/options/BorderOptions;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/fresco/vito/options/BorderOptions;-><init>(IFFZ)V

    return-object v0
.end method
