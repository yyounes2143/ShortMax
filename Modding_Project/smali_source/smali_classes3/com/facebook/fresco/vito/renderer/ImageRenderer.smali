.class public final Lcom/facebook/fresco/vito/renderer/ImageRenderer;
.super Ljava/lang/Object;
.source "ImageRenderer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImageRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer\n*L\n1#1,133:1\n47#1,2:134\n115#1,4:136\n49#1,3:140\n128#1,3:143\n120#1,3:146\n53#1:149\n115#1,4:150\n56#1:154\n128#1,3:155\n120#1,3:158\n58#1:161\n62#1,2:162\n120#1,3:164\n73#1,2:167\n96#1:169\n115#1,4:170\n128#1,3:174\n120#1,3:177\n115#1,4:180\n128#1,3:184\n120#1,3:187\n115#1,4:190\n128#1,3:194\n120#1,3:197\n115#1,4:200\n128#1,3:204\n120#1,3:207\n120#1,3:210\n*S KotlinDebug\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer\n*L\n36#1:134,2\n36#1:136,4\n36#1:140,3\n36#1:143,3\n36#1:146,3\n36#1:149\n36#1:150,4\n36#1:154\n36#1:155,3\n36#1:158,3\n36#1:161\n37#1:162,2\n37#1:164,3\n38#1:167,2\n38#1:169\n48#1:170,4\n51#1:174,3\n51#1:177,3\n53#1:180,4\n56#1:184,3\n56#1:187,3\n48#1:190,4\n51#1:194,3\n51#1:197,3\n53#1:200,4\n56#1:204,3\n56#1:207,3\n63#1:210,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/fresco/vito/renderer/ImageRenderer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer;->INSTANCE:Lcom/facebook/fresco/vito/renderer/ImageRenderer;

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

.method public static synthetic createImageDataModelRenderCommand$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Lcom/facebook/fresco/vito/renderer/ImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;ILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/fresco/vito/renderer/ImageRenderer;->createImageDataModelRenderCommand(Lcom/facebook/fresco/vito/renderer/ImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic createRenderCommand$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;ILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 0

    and-int/lit8 p0, p5, 0x4

    if-eqz p0, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shape"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "paint"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {p1, p4, p0, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of p0, p2, Lcom/facebook/fresco/vito/renderer/CircleShape;

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular()Z

    move-result p0

    if-nez p0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 7
    new-instance p1, Landroid/graphics/BitmapShader;

    sget-object p5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p0, p5, p5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 8
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 9
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 11
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {p1, p4, p0, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 13
    new-instance p1, Landroid/graphics/BitmapShader;

    sget-object p5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p0, p5, p5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 14
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 15
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    :goto_0
    return-object p1
.end method

.method public static synthetic createRenderCommand$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;ILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 0

    and-int/lit8 p0, p5, 0x4

    if-eqz p0, :cond_0

    const/4 p4, 0x0

    .line 16
    :cond_0
    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shape"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "paint"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of p0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    return-object p0

    .line 18
    :cond_1
    new-instance p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Paint;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;)V

    return-object p0
.end method

.method public static synthetic setBitmap$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;ILjava/lang/Object;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    and-int/lit8 p0, p4, 0x2

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    const-string p0, "<this>"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "bitmap"

    .line 12
    .line 13
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Landroid/graphics/BitmapShader;

    .line 17
    .line 18
    sget-object p4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 19
    .line 20
    invoke-direct {p0, p2, p4, p4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method


# virtual methods
.method public final bitmapRenderCommand(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "paint"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bitmap"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    .line 12
    .line 13
    invoke-direct {v0, p3, p2, p1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final createImageDataModelRenderCommand(Lcom/facebook/fresco/vito/renderer/ImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .param p1    # Lcom/facebook/fresco/vito/renderer/ImageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/vito/renderer/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/ImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "model"

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
    const-string v0, "paint"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    instance-of v0, p1, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    check-cast p1, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;

    .line 21
    .line 22
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    .line 31
    .line 32
    invoke-direct {p2, p4, p1, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/CircleShape;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 52
    .line 53
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 54
    .line 55
    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    .line 69
    .line 70
    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance p2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    .line 79
    .line 80
    invoke-direct {p2, p4, p1, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 89
    .line 90
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 91
    .line 92
    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 103
    .line 104
    .line 105
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    .line 106
    .line 107
    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    instance-of v0, p1, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    check-cast p1, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;

    .line 116
    .line 117
    sget-object p4, Lcom/facebook/fresco/vito/renderer/util/ColorUtils;->Companion:Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;->getColorInt()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {p4, p1, v0}, Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;->multiplyColorAlpha(II)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    .line 135
    .line 136
    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    .line 137
    .line 138
    .line 139
    :goto_0
    move-object p2, p1

    .line 140
    goto :goto_2

    .line 141
    :cond_4
    instance-of v0, p1, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    .line 142
    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    check-cast p1, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    .line 146
    .line 147
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    .line 148
    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;

    .line 152
    .line 153
    invoke-direct {v0, p1, p4, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    .line 154
    .line 155
    .line 156
    :goto_1
    move-object p2, v0

    .line 157
    goto :goto_2

    .line 158
    :cond_5
    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;

    .line 159
    .line 160
    invoke-direct {v0, p1, p3, p4, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Paint;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :goto_2
    return-object p2

    .line 165
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 166
    .line 167
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 168
    .line 169
    .line 170
    throw p1
.end method

.method public final createRenderCommand(Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .param p1    # Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/vito/renderer/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {p2, p4, p1, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 3
    :cond_0
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/CircleShape;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 7
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 8
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {p2, p4, p1, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 12
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 13
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 14
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method public final createRenderCommand(Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .param p1    # Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/vito/renderer/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/facebook/fresco/vito/renderer/util/ColorUtils;->Companion:Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;->getColorInt()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;->multiplyColorAlpha(II)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public final createRenderCommand(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1    # Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/vito/renderer/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;

    invoke-direct {v0, p1, p3, p4, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Paint;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;)V

    return-object v0
.end method

.method public final paintRenderCommand(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1    # Lcom/facebook/fresco/vito/renderer/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "shape"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paint"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final setBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Paint;
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bitmap"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 12
    .line 13
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 14
    .line 15
    invoke-direct {v0, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2, p3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method
