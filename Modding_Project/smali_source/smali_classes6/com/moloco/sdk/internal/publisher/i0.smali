.class public final synthetic Lcom/moloco/sdk/internal/publisher/i0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/publisher/m;

.field public final synthetic b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;

.field public final synthetic c:Lkt/d;


# direct methods
.method public synthetic constructor <init>(Lcom/moloco/sdk/internal/publisher/m;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;Lkt/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/i0;->a:Lcom/moloco/sdk/internal/publisher/m;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/i0;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/i0;->c:Lkt/d;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/i0;->a:Lcom/moloco/sdk/internal/publisher/m;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/i0;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/i0;->c:Lkt/d;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1, p2}, Lcom/moloco/sdk/internal/publisher/m;->k(Lcom/moloco/sdk/internal/publisher/m;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;Lkt/d;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
