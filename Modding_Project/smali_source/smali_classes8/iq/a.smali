.class public abstract Liq/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lrq/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrq/k;)V
    .locals 1
    .param p1    # Lrq/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "algorithmParams"

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
    iput-object p1, p0, Liq/a;->a:Lrq/k;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 3

    .line 1
    invoke-static {p1}, Lyq/r;->s(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x3e991687    # 0.299f

    .line 6
    .line 7
    .line 8
    mul-float/2addr v0, v1

    .line 9
    invoke-static {p1}, Lyq/r;->l(I)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0x3f1645a2    # 0.587f

    .line 14
    .line 15
    .line 16
    mul-float/2addr v1, v2

    .line 17
    add-float/2addr v0, v1

    .line 18
    invoke-static {p1}, Lyq/r;->a(I)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const v1, 0x3de978d5    # 0.114f

    .line 23
    .line 24
    .line 25
    mul-float/2addr p1, v1

    .line 26
    add-float/2addr v0, p1

    .line 27
    return v0
.end method

.method public final b(Landroid/graphics/Bitmap;II)I
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Liq/a;->f(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public abstract c(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final d()Lrq/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Liq/a;->a:Lrq/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ltp/s;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Liq/a;->a:Lrq/k;

    .line 14
    .line 15
    invoke-virtual {v1}, Lrq/k;->b()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " result - "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " (isBroken - "

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 p1, 0x29

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 p2, 0x0

    .line 52
    new-array p2, p2, [Ljava/lang/Object;

    .line 53
    .line 54
    const-string v0, "BrokenCreativeDetector"

    .line 55
    .line 56
    invoke-static {v0, p1, p2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final f(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const v1, 0x3e991687    # 0.299f

    .line 7
    .line 8
    .line 9
    mul-float/2addr v0, v1

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    const v2, 0x3f1645a2    # 0.587f

    .line 16
    .line 17
    .line 18
    mul-float/2addr v1, v2

    .line 19
    add-float/2addr v0, v1

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p1, p1

    .line 25
    const v1, 0x3de978d5    # 0.114f

    .line 26
    .line 27
    .line 28
    mul-float/2addr p1, v1

    .line 29
    add-float/2addr v0, p1

    .line 30
    float-to-int p1, v0

    .line 31
    return p1
.end method

.method public final g(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Liq/a;->c(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return-object p1
.end method
