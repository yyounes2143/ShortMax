.class public final synthetic Lcom/unity3d/services/banners/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/services/banners/BannerView;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/unity3d/services/banners/a;->a:Lcom/unity3d/services/banners/BannerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/banners/a;->a:Lcom/unity3d/services/banners/BannerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/unity3d/services/banners/BannerView;->a(Lcom/unity3d/services/banners/BannerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
