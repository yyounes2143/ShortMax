.class public final Lcom/startshorts/androidplayer/startup/NetworkInitializer$b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/startup/NetworkInitializer;->e(Landroid/content/Context;Z)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/startup/NetworkInitializer;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/startup/NetworkInitializer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer$b;->a:Lcom/startshorts/androidplayer/startup/NetworkInitializer;

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
    .locals 1

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer$b;->a:Lcom/startshorts/androidplayer/startup/NetworkInitializer;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->g(Lcom/startshorts/androidplayer/startup/NetworkInitializer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer$b;->a:Lcom/startshorts/androidplayer/startup/NetworkInitializer;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->h(Lcom/startshorts/androidplayer/startup/NetworkInitializer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
