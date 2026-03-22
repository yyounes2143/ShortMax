.class public abstract Lrl/a;
.super Ljava/lang/Object;
.source "ScarAdBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Landroid/content/Context;

.field protected c:Lnl/c;

.field protected d:Lql/a;

.field protected e:Lrl/b;

.field protected f:Lcom/unity3d/scar/adapter/common/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnl/c;Lql/a;Lcom/unity3d/scar/adapter/common/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrl/a;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lrl/a;->c:Lnl/c;

    .line 7
    .line 8
    iput-object p3, p0, Lrl/a;->d:Lql/a;

    .line 9
    .line 10
    iput-object p4, p0, Lrl/a;->f:Lcom/unity3d/scar/adapter/common/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b(Lnl/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrl/a;->d:Lql/a;

    .line 2
    .line 3
    iget-object v1, p0, Lrl/a;->c:Lnl/c;

    .line 4
    .line 5
    invoke-virtual {v1}, Lnl/c;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lql/a;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lrl/a;->e:Lrl/b;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lrl/b;->a(Lnl/b;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0, p1}, Lrl/a;->c(Lcom/google/android/gms/ads/AdRequest;Lnl/b;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected abstract c(Lcom/google/android/gms/ads/AdRequest;Lnl/b;)V
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lrl/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method
