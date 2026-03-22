.class Lol/e$b;
.super Ljava/lang/Object;
.source "SignalsCollectorBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lol/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lol/b;

.field private b:Lol/f;

.field final synthetic c:Lol/e;


# direct methods
.method public constructor <init>(Lol/e;Lol/b;Lol/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lol/e$b;->c:Lol/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lol/e$b;->a:Lol/b;

    .line 7
    .line 8
    iput-object p3, p0, Lol/e$b;->b:Lol/f;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lol/e$b;->b:Lol/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lol/f;->c()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lol/e$b;->a:Lol/b;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Lol/b;->onSignalsCollected(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lol/e$b;->b:Lol/f;

    .line 29
    .line 30
    invoke-virtual {v0}, Lol/f;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lol/e$b;->a:Lol/b;

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    invoke-interface {v0, v1}, Lol/b;->onSignalsCollected(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lol/e$b;->a:Lol/b;

    .line 45
    .line 46
    iget-object v1, p0, Lol/e$b;->b:Lol/f;

    .line 47
    .line 48
    invoke-virtual {v1}, Lol/f;->b()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v0, v1}, Lol/b;->onSignalsCollectionFailed(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method
