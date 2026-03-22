.class public final synthetic Lpq/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/privacy/b;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/privacy/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpq/b;->a:Lio/bidmachine/rendering/internal/view/privacy/b;

    .line 5
    .line 6
    iput p2, p0, Lpq/b;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    iget-object v0, p0, Lpq/b;->a:Lio/bidmachine/rendering/internal/view/privacy/b;

    .line 2
    .line 3
    iget v1, p0, Lpq/b;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lio/bidmachine/rendering/internal/view/privacy/b;->a(Lio/bidmachine/rendering/internal/view/privacy/b;ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
