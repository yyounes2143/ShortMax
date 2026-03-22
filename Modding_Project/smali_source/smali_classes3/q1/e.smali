.class public final synthetic Lq1/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lq1/f;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lq1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq1/e;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lq1/e;->b:Lq1/f;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/e;->a:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lq1/e;->b:Lq1/f;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lq1/f;->a(Landroid/view/View;Lq1/f;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
