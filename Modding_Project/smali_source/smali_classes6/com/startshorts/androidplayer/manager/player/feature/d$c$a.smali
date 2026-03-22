.class public final Lcom/startshorts/androidplayer/manager/player/feature/d$c$a;
.super Ljava/lang/Object;
.source "DecryptFeature.kt"

# interfaces
.implements Lof/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/player/feature/d$c;->opened(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/manager/player/feature/d;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/player/feature/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c$a;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c$a;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;->e(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "DecryptFeature"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
