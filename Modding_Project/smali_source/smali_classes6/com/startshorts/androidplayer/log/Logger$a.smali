.class public final Lcom/startshorts/androidplayer/log/Logger$a;
.super Ljava/lang/Object;
.source "Logger.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/log/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/log/Logger;->n(Ljava/io/File;Ljava/lang/String;Lyd/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lyd/f;


# direct methods
.method constructor <init>(Ljava/io/File;Lyd/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/log/Logger$a;->a:Ljava/io/File;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/log/Logger$a;->b:Lyd/f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/startshorts/androidplayer/log/Logger;->a(Z)V

    .line 3
    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/utils/FileUtil;->a:Lcom/startshorts/androidplayer/utils/FileUtil;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/log/Logger$a;->a:Ljava/io/File;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/utils/FileUtil;->b(Ljava/io/File;Z)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 14
    .line 15
    const-string v1, "Logger"

    .line 16
    .line 17
    const-string/jumbo v2, "uploadAppLog success"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/log/Logger$a;->b:Lyd/f;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lyd/f;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "uploadAppLog failed -> "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "Logger"

    .line 27
    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-static {p1}, Lcom/startshorts/androidplayer/log/Logger;->a(Z)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/startshorts/androidplayer/utils/FileUtil;->a:Lcom/startshorts/androidplayer/utils/FileUtil;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/log/Logger$a;->a:Ljava/io/File;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/utils/FileUtil;->b(Ljava/io/File;Z)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/startshorts/androidplayer/log/Logger$a;->b:Lyd/f;

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 48
    .line 49
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lyd/f;->a(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method
