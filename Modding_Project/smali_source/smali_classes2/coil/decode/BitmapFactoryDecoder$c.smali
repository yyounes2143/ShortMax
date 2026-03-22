.class public final Lcoil/decode/BitmapFactoryDecoder$c;
.super Ljava/lang/Object;
.source "BitmapFactoryDecoder.kt"

# interfaces
.implements Ld0/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/decode/BitmapFactoryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcoil/decode/ExifOrientationPolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lqt/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcoil/decode/ExifOrientationPolicy;)V
    .locals 2
    .param p2    # Lcoil/decode/ExifOrientationPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcoil/decode/BitmapFactoryDecoder$c;->a:Lcoil/decode/ExifOrientationPolicy;

    .line 5
    .line 6
    const/4 p2, 0x2

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v1, p2, v0}, Lkotlinx/coroutines/sync/d;->b(IIILjava/lang/Object;)Lqt/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcoil/decode/BitmapFactoryDecoder$c;->b:Lqt/e;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Lg0/l;Lm0/j;Lcoil/ImageLoader;)Ld0/g;
    .locals 2
    .param p1    # Lg0/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lm0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p3, Lcoil/decode/BitmapFactoryDecoder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lg0/l;->b()Ld0/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcoil/decode/BitmapFactoryDecoder$c;->b:Lqt/e;

    .line 8
    .line 9
    iget-object v1, p0, Lcoil/decode/BitmapFactoryDecoder$c;->a:Lcoil/decode/ExifOrientationPolicy;

    .line 10
    .line 11
    invoke-direct {p3, p1, p2, v0, v1}, Lcoil/decode/BitmapFactoryDecoder;-><init>(Ld0/m;Lm0/j;Lqt/e;Lcoil/decode/ExifOrientationPolicy;)V

    .line 12
    .line 13
    .line 14
    return-object p3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of p1, p1, Lcoil/decode/BitmapFactoryDecoder$c;

    .line 2
    .line 3
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    const-class v0, Lcoil/decode/BitmapFactoryDecoder$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
