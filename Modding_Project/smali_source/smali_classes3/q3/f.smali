.class public Lq3/f;
.super Ljava/lang/Object;
.source "SimpleBitmapReleaser.java"

# interfaces
.implements Lo2/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo2/h<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lq3/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lq3/f;
    .locals 1

    .line 1
    sget-object v0, Lq3/f;->a:Lq3/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lq3/f;

    .line 6
    .line 7
    invoke-direct {v0}, Lq3/f;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lq3/f;->a:Lq3/f;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lq3/f;->a:Lq3/f;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lq3/f;->b(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
