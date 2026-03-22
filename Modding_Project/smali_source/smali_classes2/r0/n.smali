.class public final Lr0/n;
.super Ljava/lang/Object;
.source "ImageLoaderOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:I

.field private final e:Lcoil/decode/ExifOrientationPolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZILcoil/decode/ExifOrientationPolicy;)V
    .locals 0
    .param p5    # Lcoil/decode/ExifOrientationPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lr0/n;->a:Z

    .line 3
    iput-boolean p2, p0, Lr0/n;->b:Z

    .line 4
    iput-boolean p3, p0, Lr0/n;->c:Z

    .line 5
    iput p4, p0, Lr0/n;->d:I

    .line 6
    iput-object p5, p0, Lr0/n;->e:Lcoil/decode/ExifOrientationPolicy;

    return-void
.end method

.method public synthetic constructor <init>(ZZZILcoil/decode/ExifOrientationPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    move p7, v0

    goto :goto_0

    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const/4 p4, 0x4

    :cond_3
    move v2, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    .line 7
    sget-object p5, Lcoil/decode/ExifOrientationPolicy;->RESPECT_PERFORMANCE:Lcoil/decode/ExifOrientationPolicy;

    :cond_4
    move-object p6, p5

    move-object p1, p0

    move p2, p7

    move p3, v1

    move p4, v0

    move p5, v2

    .line 8
    invoke-direct/range {p1 .. p6}, Lr0/n;-><init>(ZZZILcoil/decode/ExifOrientationPolicy;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr0/n;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Lcoil/decode/ExifOrientationPolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lr0/n;->e:Lcoil/decode/ExifOrientationPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lr0/n;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr0/n;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr0/n;->c:Z

    .line 2
    .line 3
    return v0
.end method
