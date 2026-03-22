.class public final Ll0/e$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll0/e;-><init>(Landroid/net/ConnectivityManager;Ll0/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Ll0/e;


# direct methods
.method constructor <init>(Ll0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll0/e$a;->a:Ll0/e;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ll0/e$a;->a:Ll0/e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, v1}, Ll0/e;->b(Ll0/e;Landroid/net/Network;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ll0/e$a;->a:Ll0/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, v1}, Ll0/e;->b(Ll0/e;Landroid/net/Network;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
