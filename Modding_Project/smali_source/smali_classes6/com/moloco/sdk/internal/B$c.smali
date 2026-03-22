.class public final Lcom/moloco/sdk/internal/B$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/B;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnAttach$1\n+ 2 ViewLifecycleOwner.kt\ncom/moloco/sdk/internal/ViewLifecycleOwnerImpl\n*L\n1#1,411:1\n81#2,2:412\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/moloco/sdk/internal/B;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/moloco/sdk/internal/B;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/B$c;->a:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/B$c;->b:Lcom/moloco/sdk/internal/B;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/B$c;->c:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "view"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/moloco/sdk/internal/B$c;->a:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/moloco/sdk/internal/B$c;->b:Lcom/moloco/sdk/internal/B;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/internal/B$c;->c:Landroid/view/View;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/moloco/sdk/internal/B;->e(Lcom/moloco/sdk/internal/B;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "view"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
