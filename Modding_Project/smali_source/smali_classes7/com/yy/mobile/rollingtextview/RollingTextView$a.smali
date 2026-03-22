.class public final Lcom/yy/mobile/rollingtextview/RollingTextView$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RollingTextView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yy/mobile/rollingtextview/RollingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/yy/mobile/rollingtextview/RollingTextView;


# direct methods
.method constructor <init>(Lcom/yy/mobile/rollingtextview/RollingTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView$a;->a:Lcom/yy/mobile/rollingtextview/RollingTextView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView$a;->a:Lcom/yy/mobile/rollingtextview/RollingTextView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/yy/mobile/rollingtextview/RollingTextView;->e(Lcom/yy/mobile/rollingtextview/RollingTextView;)Lzl/h;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lzl/h;->h()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
