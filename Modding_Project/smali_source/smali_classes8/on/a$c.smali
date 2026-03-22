.class public final Lon/a$c;
.super Ljava/lang/Object;
.source "BitmapFactoryImageDecoder.java"

# interfaces
.implements Lon/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lon/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final b:Lon/a$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lon/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lon/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lon/a$c;->b:Lon/a$b;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c([BI)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lon/a$c;->e([BI)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic e([BI)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lon/a;->t([BI)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public a(Lio/bidmachine/media3/common/a;)I
    .locals 1

    .line 1
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {v0}, Lzm/u;->q(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lcn/m0;->E0(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x1

    .line 27
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_0
    return p1

    .line 32
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 33
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public bridge synthetic b()Lon/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lon/a$c;->d()Lon/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()Lon/a;
    .locals 3

    .line 1
    new-instance v0, Lon/a;

    .line 2
    .line 3
    iget-object v1, p0, Lon/a$c;->b:Lon/a$b;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lon/a;-><init>(Lon/a$b;Lon/a$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
