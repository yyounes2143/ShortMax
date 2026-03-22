.class public final synthetic Lcom/applovin/impl/sdk/utils/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/f;->a:Landroid/widget/ImageView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/f;->b:Landroid/net/Uri;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/f;->a:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/f;->b:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/ImageViewUtils;->c(Landroid/widget/ImageView;Landroid/net/Uri;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
