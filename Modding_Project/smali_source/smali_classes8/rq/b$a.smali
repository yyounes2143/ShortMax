.class public final Lrq/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrq/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lrq/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lio/bidmachine/rendering/model/CacheType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lrq/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lrq/q0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lio/bidmachine/rendering/model/Orientation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lrq/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lrq/b$a;->a:Ljava/util/Queue;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lrq/b$a;->b:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lrq/c;)Lrq/b$a;
    .locals 1
    .param p1    # Lrq/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "adPhaseParams"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrq/b$a;->a:Ljava/util/Queue;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final b()Lrq/b;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v6, p0, Lrq/b$a;->g:Lrq/f;

    .line 2
    .line 3
    iget-object v0, p0, Lrq/b$a;->c:Lio/bidmachine/rendering/model/CacheType;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Ltp/k;->a:Ltp/k;

    .line 8
    .line 9
    invoke-virtual {v0}, Ltp/k;->d()Lio/bidmachine/rendering/model/CacheType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    iget-object v2, p0, Lrq/b$a;->a:Ljava/util/Queue;

    .line 15
    .line 16
    iget-object v0, p0, Lrq/b$a;->e:Lrq/q0;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lrq/q0$a;

    .line 21
    .line 22
    invoke-direct {v0}, Lrq/q0$a;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lrq/q0$a;->a()Lrq/q0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    move-object v3, v0

    .line 30
    iget-object v4, p0, Lrq/b$a;->d:Lrq/c;

    .line 31
    .line 32
    iget-object v5, p0, Lrq/b$a;->f:Lio/bidmachine/rendering/model/Orientation;

    .line 33
    .line 34
    iget-object v7, p0, Lrq/b$a;->b:Ljava/util/Map;

    .line 35
    .line 36
    new-instance v8, Lrq/b;

    .line 37
    .line 38
    move-object v0, v8

    .line 39
    invoke-direct/range {v0 .. v7}, Lrq/b;-><init>(Lio/bidmachine/rendering/model/CacheType;Ljava/util/Queue;Lrq/q0;Lrq/c;Lio/bidmachine/rendering/model/Orientation;Lrq/f;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    return-object v8
.end method

.method public final c(Lrq/f;)Lrq/b$a;
    .locals 0
    .param p1    # Lrq/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lrq/b$a;->g:Lrq/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Lio/bidmachine/rendering/model/CacheType;)Lrq/b$a;
    .locals 1
    .param p1    # Lio/bidmachine/rendering/model/CacheType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cacheType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lrq/b$a;->c:Lio/bidmachine/rendering/model/CacheType;

    .line 7
    .line 8
    return-object p0
.end method

.method public final e(Ljava/util/Map;)Lrq/b$a;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrq/b$a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/b$a;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lyq/s;->z(Ljava/util/Map;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final f(Lio/bidmachine/rendering/model/Orientation;)Lrq/b$a;
    .locals 0
    .param p1    # Lio/bidmachine/rendering/model/Orientation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lrq/b$a;->f:Lio/bidmachine/rendering/model/Orientation;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g(Lrq/c;)Lrq/b$a;
    .locals 0
    .param p1    # Lrq/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lrq/b$a;->d:Lrq/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Lrq/q0;)Lrq/b$a;
    .locals 0
    .param p1    # Lrq/q0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lrq/b$a;->e:Lrq/q0;

    .line 2
    .line 3
    return-object p0
.end method
