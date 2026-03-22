.class public Lol/d;
.super Ljava/lang/Object;
.source "SignalCallbackListener.java"

# interfaces
.implements Lol/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lol/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/unity3d/scar/adapter/common/a;

.field private b:Lol/f;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/a;Lol/f;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lol/d;-><init>(Lcom/unity3d/scar/adapter/common/a;Lol/g;Lol/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/scar/adapter/common/a;Lol/g;Lol/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/scar/adapter/common/a;",
            "Lol/g<",
            "TT;>;",
            "Lol/f;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lol/d;->a:Lcom/unity3d/scar/adapter/common/a;

    .line 4
    iput-object p3, p0, Lol/d;->b:Lol/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lol/d;->b:Lol/f;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Lol/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lol/d;->a:Lcom/unity3d/scar/adapter/common/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/unity3d/scar/adapter/common/a;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lol/d;->b:Lol/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lol/f;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lol/d;->a:Lcom/unity3d/scar/adapter/common/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/unity3d/scar/adapter/common/a;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
