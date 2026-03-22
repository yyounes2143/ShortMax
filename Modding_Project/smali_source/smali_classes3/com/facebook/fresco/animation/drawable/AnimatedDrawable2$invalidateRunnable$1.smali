.class public final Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$invalidateRunnable$1;
.super Ljava/lang/Object;
.source "AnimatedDrawable2.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$invalidateRunnable$1;->this$0:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$invalidateRunnable$1;->this$0:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$invalidateRunnable$1;->this$0:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
