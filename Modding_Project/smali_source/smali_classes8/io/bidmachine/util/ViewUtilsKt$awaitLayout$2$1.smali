.class final Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/ViewUtilsKt;->d(Landroid/view/View;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lio/bidmachine/util/ViewUtilsKt$a;


# direct methods
.method constructor <init>(Landroid/view/View;Lio/bidmachine/util/ViewUtilsKt$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;->d:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;->e:Lio/bidmachine/util/ViewUtilsKt$a;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;->d:Landroid/view/View;

    iget-object v0, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;->e:Lio/bidmachine/util/ViewUtilsKt$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
