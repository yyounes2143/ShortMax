.class public final Lcom/startshorts/androidplayer/ui/view/guide/model/a;
.super Ljava/lang/Object;
.source "GuidePage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/guide/model/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/ui/view/guide/model/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:I

.field private e:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lyd/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/guide/model/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/guide/model/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->h:Lcom/startshorts/androidplayer/ui/view/guide/model/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->a:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->b:Z

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/guide/model/a;Landroid/view/View;Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;IILkj/a;Landroid/view/View$OnClickListener;ILjava/lang/Object;)Lcom/startshorts/androidplayer/ui/view/guide/model/a;
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x2

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;->RECTANGLE:Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;

    .line 6
    .line 7
    :cond_0
    move-object v2, p2

    .line 8
    and-int/lit8 p2, p7, 0x4

    .line 9
    .line 10
    const/4 p8, 0x0

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    move v3, p8

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v3, p3

    .line 16
    :goto_0
    and-int/lit8 p2, p7, 0x8

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    move v4, p8

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move v4, p4

    .line 23
    :goto_1
    and-int/lit8 p2, p7, 0x10

    .line 24
    .line 25
    const/4 p3, 0x0

    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    move-object v5, p3

    .line 29
    goto :goto_2

    .line 30
    :cond_3
    move-object v5, p5

    .line 31
    :goto_2
    and-int/lit8 p2, p7, 0x20

    .line 32
    .line 33
    if-eqz p2, :cond_4

    .line 34
    .line 35
    move-object v6, p3

    .line 36
    goto :goto_3

    .line 37
    :cond_4
    move-object v6, p6

    .line 38
    :goto_3
    move-object v0, p0

    .line 39
    move-object v1, p1

    .line 40
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->a(Landroid/view/View;Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;IILkj/a;Landroid/view/View$OnClickListener;)Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;IILkj/a;Landroid/view/View$OnClickListener;)Lcom/startshorts/androidplayer/ui/view/guide/model/a;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkj/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shape"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/view/guide/model/c;-><init>(Landroid/view/View;Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;II)V

    .line 14
    .line 15
    .line 16
    if-eqz p5, :cond_0

    .line 17
    .line 18
    invoke-virtual {p5, v0}, Lkj/a;->f(Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p5}, Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;->c(Lkj/a;)Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, p6}, Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;->b(Landroid/view/View$OnClickListener;)Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;->a()Lcom/startshorts/androidplayer/ui/view/guide/model/b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->d(Lcom/startshorts/androidplayer/ui/view/guide/model/b;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->a:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->f:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lyd/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->g:Lyd/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->e:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()Ljj/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkj/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;->getOptions()Lcom/startshorts/androidplayer/ui/view/guide/model/b;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/view/guide/model/b;->b()Lkj/a;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final l(I)Lcom/startshorts/androidplayer/ui/view/guide/model/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final m(I)Lcom/startshorts/androidplayer/ui/view/guide/model/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->d:I

    .line 2
    .line 3
    return-object p0
.end method
