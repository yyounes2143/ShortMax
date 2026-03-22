.class Ly3/i;
.super Ly3/b;
.source "DefaultCloseableStaticBitmap.java"


# direct methods
.method protected constructor <init>(Landroid/graphics/Bitmap;Lo2/h;Ly3/p;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lo2/h<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ly3/p;",
            "II)V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p5}, Ly3/b;-><init>(Landroid/graphics/Bitmap;Lo2/h;Ly3/p;II)V

    return-void
.end method

.method protected constructor <init>(Lo2/a;Ly3/p;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ly3/p;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ly3/b;-><init>(Lo2/a;Ly3/p;II)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ly3/b;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "DefaultCloseableStaticBitmap"

    .line 29
    .line 30
    const-string v2, "finalize: %s %x still open."

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Ll2/a;->z(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p0}, Ly3/b;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 44
    .line 45
    .line 46
    throw v0
.end method
