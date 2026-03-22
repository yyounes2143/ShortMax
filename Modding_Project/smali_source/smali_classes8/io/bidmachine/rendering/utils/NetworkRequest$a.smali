.class public Lio/bidmachine/rendering/utils/NetworkRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lio/bidmachine/rendering/utils/NetworkRequest$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/rendering/utils/NetworkRequest$f<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field private h:Lio/bidmachine/rendering/utils/NetworkRequest$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/rendering/utils/NetworkRequest$e<",
            "TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$Method;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/utils/NetworkRequest$Method;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->c:Ljava/util/Map;

    .line 14
    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->d:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/rendering/utils/NetworkRequest$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/rendering/utils/NetworkRequest$a<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b()Lio/bidmachine/rendering/utils/NetworkRequest;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/rendering/utils/NetworkRequest<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    new-instance v11, Lio/bidmachine/rendering/utils/NetworkRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->c:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v4, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->d:Ljava/util/Map;

    .line 10
    .line 11
    iget-object v5, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->e:Ljava/lang/Integer;

    .line 12
    .line 13
    iget-object v6, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->f:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v9, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->g:Lio/bidmachine/rendering/utils/NetworkRequest$f;

    .line 16
    .line 17
    iget-object v10, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->h:Lio/bidmachine/rendering/utils/NetworkRequest$e;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    move-object v0, v11

    .line 22
    invoke-direct/range {v0 .. v10}, Lio/bidmachine/rendering/utils/NetworkRequest;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$Method;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lio/bidmachine/rendering/utils/NetworkRequest$i;Lio/bidmachine/rendering/utils/NetworkRequest$c;Lio/bidmachine/rendering/utils/NetworkRequest$f;Lio/bidmachine/rendering/utils/NetworkRequest$e;)V

    .line 23
    .line 24
    .line 25
    return-object v11
.end method

.method public c()Lio/bidmachine/rendering/utils/NetworkRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/rendering/utils/NetworkRequest<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/NetworkRequest$a;->b()Lio/bidmachine/rendering/utils/NetworkRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->i()V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public d(Lio/bidmachine/rendering/utils/NetworkRequest$e;)Lio/bidmachine/rendering/utils/NetworkRequest$a;
    .locals 0
    .param p1    # Lio/bidmachine/rendering/utils/NetworkRequest$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/utils/NetworkRequest$e<",
            "TResponseType;>;)",
            "Lio/bidmachine/rendering/utils/NetworkRequest$a<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->h:Lio/bidmachine/rendering/utils/NetworkRequest$e;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Lio/bidmachine/rendering/utils/NetworkRequest$f;)Lio/bidmachine/rendering/utils/NetworkRequest$a;
    .locals 0
    .param p1    # Lio/bidmachine/rendering/utils/NetworkRequest$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/utils/NetworkRequest$f<",
            "TResponseType;>;)",
            "Lio/bidmachine/rendering/utils/NetworkRequest$a<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$a;->g:Lio/bidmachine/rendering/utils/NetworkRequest$f;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lio/bidmachine/rendering/utils/NetworkRequest$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/rendering/utils/NetworkRequest$a<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "User-Agent"

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest$a;->a(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/rendering/utils/NetworkRequest$a;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method
