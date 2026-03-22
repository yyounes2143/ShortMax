.class public final synthetic Lb/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/hades/aar/admanager/activity/FullScreenAdActivity;

.field public final synthetic d:Lca/d;

.field public final synthetic e:Lca/f;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/view/View;Lcom/hades/aar/admanager/activity/FullScreenAdActivity;Lca/d;Lca/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb/d;->a:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p2, p0, Lb/d;->b:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lb/d;->c:Lcom/hades/aar/admanager/activity/FullScreenAdActivity;

    .line 9
    .line 10
    iput-object p4, p0, Lb/d;->d:Lca/d;

    .line 11
    .line 12
    iput-object p5, p0, Lb/d;->e:Lca/f;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/d;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lb/d;->b:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lb/d;->c:Lcom/hades/aar/admanager/activity/FullScreenAdActivity;

    .line 6
    .line 7
    iget-object v3, p0, Lb/d;->d:Lca/d;

    .line 8
    .line 9
    iget-object v4, p0, Lb/d;->e:Lca/f;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lad-manager/a/e;->i(Landroid/widget/TextView;Landroid/view/View;Lcom/hades/aar/admanager/activity/FullScreenAdActivity;Lca/d;Lca/f;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
