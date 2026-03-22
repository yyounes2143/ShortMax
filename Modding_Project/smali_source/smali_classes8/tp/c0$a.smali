.class public final Ltp/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llq/a$a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lio/bidmachine/rendering/model/ScaleType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Lrq/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic f:Ltp/c0;


# direct methods
.method public constructor <init>(Ltp/c0;Landroid/view/View;ZLio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lrq/j;)V
    .locals 1
    .param p1    # Ltp/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/rendering/model/ScaleType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Lio/bidmachine/rendering/model/ScaleType;",
            "Ljava/lang/Integer;",
            "Lrq/j;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ltp/c0$a;->f:Ltp/c0;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-boolean p3, p0, Ltp/c0$a;->a:Z

    .line 12
    .line 13
    iput-object p4, p0, Ltp/c0$a;->b:Lio/bidmachine/rendering/model/ScaleType;

    .line 14
    .line 15
    iput-object p5, p0, Ltp/c0$a;->c:Ljava/lang/Integer;

    .line 16
    .line 17
    iput-object p6, p0, Ltp/c0$a;->d:Lrq/j;

    .line 18
    .line 19
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Ltp/c0$a;->e:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a(Lrq/t;)V
    .locals 1
    .param p1    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "successType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ltp/c0$a;->f:Ltp/c0;

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Ltp/c0$a;->e:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Landroid/view/View;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string v0, "weakView.get() ?: return"

    .line 21
    .line 22
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v3, p0, Ltp/c0$a;->a:Z

    .line 26
    .line 27
    iget-object v5, p0, Ltp/c0$a;->b:Lio/bidmachine/rendering/model/ScaleType;

    .line 28
    .line 29
    iget-object v6, p0, Ltp/c0$a;->c:Ljava/lang/Integer;

    .line 30
    .line 31
    iget-object v7, p0, Ltp/c0$a;->d:Lrq/j;

    .line 32
    .line 33
    move-object v4, p1

    .line 34
    invoke-virtual/range {v1 .. v7}, Ltp/c0;->c(Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lrq/j;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    :catchall_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ltp/c0$a;->b(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
