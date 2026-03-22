.class public final Lcom/bytedance/bdtracker/u0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/u0;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/u0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/u0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/u0$b;->a:Lcom/bytedance/bdtracker/u0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/bytedance/bdtracker/u0$b;->a:Lcom/bytedance/bdtracker/u0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/bdtracker/u0;->a(Lcom/bytedance/bdtracker/u0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
