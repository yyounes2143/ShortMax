.class public final Leq/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leq/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leq/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leq/g<",
        "Lrq/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lrq/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrq/c;)V
    .locals 1
    .param p1    # Lrq/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Leq/l;->a:Lrq/c;

    .line 10
    .line 11
    return-void
.end method

.method private final c(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationDirectionType;)Leq/f;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    sget-object v1, Leq/l$a;->c:[I

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    aget v2, v1, v2

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    neg-float v0, v0

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    aget p2, v1, p2

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    if-eq p2, v1, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    if-eq p2, v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    neg-float v2, v2

    .line 49
    :cond_3
    :goto_1
    new-instance p2, Leq/f;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-direct {p2, p1, v0, v2}, Leq/f;-><init>(FFF)V

    .line 56
    .line 57
    .line 58
    return-object p2
.end method

.method private final d(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationStyleType;Lio/bidmachine/rendering/model/AnimationDirectionType;)Leq/f;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Leq/l$a;->b:[I

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    aget p2, v0, p2

    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x1

    .line 14
    if-eq p2, v0, :cond_3

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p2, v0, :cond_1

    .line 18
    .line 19
    new-instance p2, Leq/f;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Leq/f;-><init>(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    if-eqz p3, :cond_2

    .line 26
    .line 27
    invoke-direct {p0, p1, p3}, Leq/l;->c(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationDirectionType;)Leq/f;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-nez p2, :cond_4

    .line 32
    .line 33
    :cond_2
    new-instance p2, Leq/f;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Leq/f;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    new-instance p2, Leq/f;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-direct {p2, v0, p3, p1}, Leq/f;-><init>(FFF)V

    .line 51
    .line 52
    .line 53
    :cond_4
    :goto_1
    return-object p2
.end method


# virtual methods
.method public a(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;)Leq/f;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "eventType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Leq/l$a;->a:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    aget v0, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/4 p2, 0x2

    .line 23
    if-ne v0, p2, :cond_0

    .line 24
    .line 25
    new-instance p2, Leq/f;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Leq/f;-><init>(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 32
    .line 33
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    iget-object v0, p0, Leq/l;->a:Lrq/c;

    .line 38
    .line 39
    invoke-virtual {v0}, Lrq/c;->b()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lrq/d;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2}, Lrq/d;->d()Lio/bidmachine/rendering/model/AnimationStyleType;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object v1, v0

    .line 58
    :goto_0
    if-eqz p2, :cond_3

    .line 59
    .line 60
    invoke-virtual {p2}, Lrq/d;->a()Lio/bidmachine/rendering/model/AnimationDirectionType;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_3
    invoke-direct {p0, p1, v1, v0}, Leq/l;->d(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationStyleType;Lio/bidmachine/rendering/model/AnimationDirectionType;)Leq/f;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :goto_1
    return-object p2
.end method

.method public b(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;)Leq/f;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "eventType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Leq/l$a;->a:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    aget v0, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_3

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Leq/l;->a:Lrq/c;

    .line 26
    .line 27
    invoke-virtual {v0}, Lrq/c;->b()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lrq/d;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p2}, Lrq/d;->d()Lio/bidmachine/rendering/model/AnimationStyleType;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v1, v0

    .line 46
    :goto_0
    if-eqz p2, :cond_1

    .line 47
    .line 48
    invoke-virtual {p2}, Lrq/d;->a()Lio/bidmachine/rendering/model/AnimationDirectionType;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/AnimationDirectionType;->inverted()Lio/bidmachine/rendering/model/AnimationDirectionType;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_1
    invoke-direct {p0, p1, v1, v0}, Leq/l;->d(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationStyleType;Lio/bidmachine/rendering/model/AnimationDirectionType;)Leq/f;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 64
    .line 65
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_3
    new-instance p1, Leq/f;

    .line 70
    .line 71
    const/high16 p2, 0x3f800000    # 1.0f

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-direct {p1, p2, v0, v0}, Leq/f;-><init>(FFF)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-object p1
.end method
