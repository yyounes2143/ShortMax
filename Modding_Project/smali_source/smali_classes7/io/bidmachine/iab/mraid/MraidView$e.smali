.class Lio/bidmachine/iab/mraid/MraidView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/mraid/MraidView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->D(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/mraid/MraidAdView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidAdView;->Y(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
