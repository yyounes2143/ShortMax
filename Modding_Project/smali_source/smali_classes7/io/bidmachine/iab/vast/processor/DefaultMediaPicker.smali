.class public Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;
.super Lio/bidmachine/iab/vast/processor/VastMediaPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/iab/vast/processor/VastMediaPicker<",
        "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/vast/processor/VastMediaPicker;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 15
    .line 16
    invoke-direct {p0, v1, v0}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->f(II)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lsm/q;->w(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->b:Z

    .line 24
    .line 25
    return-void
.end method

.method static synthetic d(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->a:I

    .line 2
    .line 3
    return p0
.end method

.method private e(Ljava/util/List;)Landroid/util/Pair;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lio/bidmachine/iab/vast/tags/LinearCreativeTag;",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Lio/bidmachine/iab/vast/tags/LinearCreativeTag;",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "DefaultMediaPicker"

    .line 5
    .line 6
    const-string v2, "getBestMatch"

    .line 7
    .line 8
    invoke-static {v1, v2, v0}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/util/Pair;

    .line 27
    .line 28
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->g(Lio/bidmachine/iab/vast/tags/MediaFileTag;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->h(Lio/bidmachine/iab/vast/tags/MediaFileTag;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_1
    if-nez v0, :cond_0

    .line 50
    .line 51
    move-object v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-object v0
.end method

.method private f(II)V
    .locals 0

    .line 1
    mul-int/2addr p1, p2

    .line 2
    iput p1, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->a:I

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;)Landroid/util/Pair;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lio/bidmachine/iab/vast/tags/LinearCreativeTag;",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Lio/bidmachine/iab/vast/tags/LinearCreativeTag;",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;-><init>(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$a;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->e(Ljava/util/List;)Landroid/util/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method protected g(Lio/bidmachine/iab/vast/tags/MediaFileTag;)Z
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/tags/MediaFileTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->a0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method protected h(Lio/bidmachine/iab/vast/tags/MediaFileTag;)Z
    .locals 3
    .param p1    # Lio/bidmachine/iab/vast/tags/MediaFileTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->k0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->Z()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-le v0, p1, :cond_0

    .line 12
    .line 13
    move p1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v1

    .line 16
    :goto_0
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->b:Z

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    move v1, v2

    .line 21
    :cond_1
    return v1
.end method
