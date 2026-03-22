.class public final Lxp/a;
.super Lup/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxp/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final r:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lup/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/rendering/internal/detector/brokencreative/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adElementParams"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "adFormListener"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "eventCallback"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct/range {p0 .. p6}, Lup/a;-><init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    .line 27
    .line 28
    .line 29
    new-instance p2, Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lxp/a;->r:Landroid/widget/ImageView;

    .line 35
    .line 36
    return-void
.end method

.method public static final synthetic I(Lxp/a;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lxp/a;->r:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private final J(Lio/bidmachine/rendering/model/MediaSource;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lup/a;->C()Llq/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lxp/a$a;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lxp/a$a;-><init>(Lxp/a;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1, v1}, Llq/a;->b(Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public D()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lxp/a;->r:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()V
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/MediaSource;->b:Lio/bidmachine/rendering/model/MediaSource$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lrq/a;->k()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/model/MediaSource$a;->c(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p0, v1}, Lxp/a;->J(Lio/bidmachine/rendering/model/MediaSource;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lup/a;->z()Lup/c;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1, p0}, Lup/c;->a(Lup/a;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lrq/a;->l()Lrq/k0;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lrq/k0;->a()Lrq/l0;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    if-eqz v1, :cond_3

    .line 42
    .line 43
    instance-of v2, v1, Lrq/i;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    check-cast v1, Lrq/i;

    .line 48
    .line 49
    invoke-virtual {v1}, Lrq/i;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/model/MediaSource$a;->b(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lxp/a;->J(Lio/bidmachine/rendering/model/MediaSource;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    instance-of v2, v1, Lrq/p0;

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    check-cast v1, Lrq/p0;

    .line 66
    .line 67
    invoke-virtual {v1}, Lrq/p0;->a()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/model/MediaSource$a;->d(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lxp/a;->J(Lio/bidmachine/rendering/model/MediaSource;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "Invalid resource type ("

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, "), it should be Base64ResourceSource or UrlResourceSource"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lup/a;->x(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lrq/a;->m()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/model/MediaSource$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p0, v0}, Lxp/a;->J(Lio/bidmachine/rendering/model/MediaSource;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void
.end method
