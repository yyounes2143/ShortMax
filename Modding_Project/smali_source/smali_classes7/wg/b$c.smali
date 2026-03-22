.class final Lwg/b$c;
.super Ljava/lang/Object;
.source "FirebaseTokenRemoteDS.kt"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwg/b;->b(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lwg/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lwg/b;Ljava/lang/String;Lgt/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/b;",
            "Ljava/lang/String;",
            "Lgt/i<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lwg/b$c;->a:Lwg/b;

    .line 2
    .line 3
    iput-object p2, p0, Lwg/b$c;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lwg/b$c;->c:Lgt/i;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 4

    .line 1
    iget-object v0, p0, Lwg/b$c;->a:Lwg/b;

    .line 2
    .line 3
    invoke-static {v0}, Lwg/b;->a(Lwg/b;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lwg/b$c;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "FirebaseRemoteDS"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "ignore appCheck cancel -> appCheckId("

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lwg/b$c;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, ") mCurrentAppCheckId("

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lwg/b$c;->a:Lwg/b;

    .line 40
    .line 41
    invoke-static {v3}, Lwg/b;->a(Lwg/b;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v3, 0x29

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 62
    .line 63
    const-string v2, "appCheck canceled"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object v0, p0, Lwg/b$c;->c:Lgt/i;

    .line 69
    .line 70
    const-string v1, ""

    .line 71
    .line 72
    invoke-static {v0, v1}, Ljk/e;->a(Lgt/i;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
