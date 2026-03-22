.class public final Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1$a;
.super Lyd/f;
.source "ConfigRepo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1$a;->a:Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Lyd/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lyd/f;->a(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lud/b;->a:Lud/b;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1$a;->a:Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1$a;->a:Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;->getUserId()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Lud/b;->h4(IIZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lyd/f;->b(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lud/b;->a:Lud/b;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1$a;->a:Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1$a;->a:Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;->getUserId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p1, v0, v1, v2}, Lud/b;->h4(IIZ)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
