.class public final synthetic Lcom/google/android/material/search/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/animation/AnimatableView$Listener;


# instance fields
.field public final synthetic a:Landroid/animation/Animator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/search/f;->a:Landroid/animation/Animator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/f;->a:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
