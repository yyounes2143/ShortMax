.class Lio/bidmachine/NetworkRegistry$a;
.super Ljava/lang/Thread;
.source "NetworkRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/NetworkRegistry;->initializeNetworksAsync(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lio/bidmachine/NetworkRegistry$c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/NetworkRegistry$a;->b:Lio/bidmachine/NetworkRegistry$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$a;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->access$000(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$a;->b:Lio/bidmachine/NetworkRegistry$c;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lio/bidmachine/NetworkRegistry$c;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
