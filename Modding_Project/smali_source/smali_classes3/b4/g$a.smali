.class Lb4/g$a;
.super Ljava/lang/Object;
.source "BitmapCounter.java"

# interfaces
.implements Lo2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb4/g;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo2/h<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb4/g;


# direct methods
.method constructor <init>(Lb4/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb4/g$a;->a:Lb4/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lb4/g$a;->a:Lb4/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb4/g;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lb4/g$a;->a(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
