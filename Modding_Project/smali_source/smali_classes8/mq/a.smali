.class public final Lmq/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lmq/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmq/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lmq/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmq/a;->a:Lmq/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/os/Handler;Lmq/b;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lmq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "handler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "screenshotListener"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x1a

    .line 19
    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p3}, Lmq/b;->a()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->g(Landroid/view/View;)Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p3}, Lmq/b;->a()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->h(Landroid/view/View;)Landroid/graphics/Rect;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 49
    .line 50
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "{\n            Bitmap.cre\u2026nfig.ARGB_8888)\n        }"

    .line 55
    .line 56
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    .line 58
    .line 59
    new-instance v2, Lmq/a$a;

    .line 60
    .line 61
    invoke-direct {v2, p3, v1}, Lmq/a$a;-><init>(Lmq/b;Landroid/graphics/Bitmap;)V

    .line 62
    .line 63
    .line 64
    :try_start_1
    invoke-static {v0, p1, v1, v2, p2}, Lcom/applovin/impl/ha;->a(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    invoke-interface {p3}, Lmq/b;->a()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_1
    invoke-interface {p3}, Lmq/b;->a()V

    .line 73
    .line 74
    .line 75
    return-void
.end method
