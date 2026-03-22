.class public final synthetic Lub/v3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lokhttp3/OkHttpClient;

.field public final synthetic b:Lokhttp3/Request;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/v3;->a:Lokhttp3/OkHttpClient;

    .line 5
    .line 6
    iput-object p2, p0, Lub/v3;->b:Lokhttp3/Request;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lub/v3;->a:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    iget-object v1, p0, Lub/v3;->b:Lokhttp3/Request;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/inmobi/media/c3;->a(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Response;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
