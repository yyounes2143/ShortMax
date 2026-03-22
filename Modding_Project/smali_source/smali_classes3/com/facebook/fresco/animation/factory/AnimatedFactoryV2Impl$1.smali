.class Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$1;
.super Ljava/lang/Object;
.source "AnimatedFactoryV2Impl.java"

# interfaces
.implements Lw3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->getGifDecoder()Lw3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$1;->this$0:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public decode(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$1;->this$0:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lm3/d;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p3, p4, Ls3/d;->i:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    invoke-interface {p2, p1, p4, p3}, Lm3/d;->b(Ly3/k;Ls3/d;Landroid/graphics/Bitmap$Config;)Ly3/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
