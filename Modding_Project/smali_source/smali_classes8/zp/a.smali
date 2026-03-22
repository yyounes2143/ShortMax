.class public final Lzp/a;
.super Lup/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final r:Lio/bidmachine/rendering/internal/view/c;
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
    new-instance p2, Lio/bidmachine/rendering/internal/view/c;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Lio/bidmachine/rendering/internal/view/c;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lzp/a;->r:Lio/bidmachine/rendering/internal/view/c;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public D()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lzp/a;->r:Lio/bidmachine/rendering/internal/view/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lup/a;->z()Lup/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lup/c;->a(Lup/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e(JJF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lzp/a;->r:Lio/bidmachine/rendering/internal/view/c;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move-wide v3, p3

    .line 5
    move v5, p5

    .line 6
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/rendering/internal/view/c;->e(JJF)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
