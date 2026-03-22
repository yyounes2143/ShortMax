.class public final Lcom/inmobi/media/X0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/I4;


# instance fields
.field public final a:Landroid/graphics/drawable/AnimatedImageDrawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "filePath"

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
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/c;->a(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/b;->a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.AnimatedImageDrawable"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lai/turbolink/sdk/campaign/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/inmobi/media/X0;->a:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/X0;->a:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-static {v0}, Lub/s2;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/graphics/Canvas;FF)V
    .locals 0

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget-object p2, p0, Lcom/inmobi/media/X0;->a:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-static {p2, p1}, Lub/w2;->a(Landroid/graphics/drawable/AnimatedImageDrawable;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final a(Lcom/inmobi/media/K4;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X0;->a:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 2
    .line 3
    invoke-static {v0}, Lub/u2;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X0;->a:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 2
    .line 3
    invoke-static {v0}, Lub/v2;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X0;->a:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 2
    .line 3
    invoke-static {v0}, Lai/turbolink/sdk/campaign/d;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X0;->a:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 2
    .line 3
    new-instance v1, Lcom/inmobi/media/W0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/inmobi/media/W0;-><init>(Lcom/inmobi/media/X0;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lub/t2;->a(Landroid/graphics/drawable/AnimatedImageDrawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/inmobi/media/X0;->a:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 12
    .line 13
    invoke-static {v0}, Lai/turbolink/sdk/campaign/d;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
