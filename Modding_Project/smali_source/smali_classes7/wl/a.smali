.class public Lwl/a;
.super Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;
.source "QueryInfoCallback.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lol/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwl/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lwl/a;->b:Lol/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwl/a;->b:Lol/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lol/a;->onFailure(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/ads/query/QueryInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lwl/a;->b:Lol/a;

    .line 2
    .line 3
    iget-object v1, p0, Lwl/a;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/query/QueryInfo;->getQuery()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2, p1}, Lol/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
