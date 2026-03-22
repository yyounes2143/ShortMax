.class public final Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;
.super Ljava/lang/Object;
.source "RVDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;IZILjava/lang/Object;)Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;->HORIZONTAL:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    const/4 p4, 0x1

    .line 17
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;IZ)Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;IZ)Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "orientation"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;

    .line 12
    .line 13
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->shape_rv_divider_line:I

    .line 14
    .line 15
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, p3, v2, p3, v2}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;-><init>(IIII)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p2, p1, v1, p4}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;-><init>(Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;Landroid/graphics/drawable/Drawable;Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;Z)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
