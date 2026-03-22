.class Lio/bidmachine/ViewAdObject$a;
.super Ljava/lang/Object;
.source "ViewAdObject.java"

# interfaces
.implements Lwm/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ViewAdObject;->show(Landroid/view/ViewGroup;Lio/bidmachine/RendererConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/ViewAdObject;


# direct methods
.method constructor <init>(Lio/bidmachine/ViewAdObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/ViewAdObject$a;->a:Lio/bidmachine/ViewAdObject;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$a;->a:Lio/bidmachine/ViewAdObject;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processVisibilityTrackerShown()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$a;->a:Lio/bidmachine/ViewAdObject;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processVisibilityTrackerImpression()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
