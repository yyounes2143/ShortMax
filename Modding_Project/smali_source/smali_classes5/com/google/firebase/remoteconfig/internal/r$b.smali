.class Lcom/google/firebase/remoteconfig/internal/r$b;
.super Ljava/lang/Object;
.source "ConfigRealtimeHttpClient.java"

# interfaces
.implements Lf9/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/remoteconfig/internal/r;->D(Ljava/net/HttpURLConnection;)Lcom/google/firebase/remoteconfig/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/remoteconfig/internal/r;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/internal/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/r$b;->a:Lcom/google/firebase/remoteconfig/internal/r;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lf9/b;)V
    .locals 0
    .param p1    # Lf9/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public b(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    .locals 1
    .param p1    # Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/r$b;->a:Lcom/google/firebase/remoteconfig/internal/r;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/r;->c(Lcom/google/firebase/remoteconfig/internal/r;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/r$b;->a:Lcom/google/firebase/remoteconfig/internal/r;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->d(Lcom/google/firebase/remoteconfig/internal/r;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
