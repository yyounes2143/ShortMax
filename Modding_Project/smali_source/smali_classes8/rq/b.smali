.class public final Lrq/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrq/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/bidmachine/rendering/model/CacheType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/Queue;
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

.field private final c:Lrq/q0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lrq/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Lio/bidmachine/rendering/model/Orientation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Lrq/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/CacheType;Ljava/util/Queue;Lrq/q0;Lrq/c;Lio/bidmachine/rendering/model/Orientation;Lrq/f;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/model/CacheType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Queue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrq/q0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrq/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/rendering/model/Orientation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lrq/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/CacheType;",
            "Ljava/util/Queue<",
            "Lrq/c;",
            ">;",
            "Lrq/q0;",
            "Lrq/c;",
            "Lio/bidmachine/rendering/model/Orientation;",
            "Lrq/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "cacheType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adPhaseParamsQueue"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "visibilityParams"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "customParams"

    .line 17
    .line 18
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lrq/b;->a:Lio/bidmachine/rendering/model/CacheType;

    .line 25
    .line 26
    iput-object p2, p0, Lrq/b;->b:Ljava/util/Queue;

    .line 27
    .line 28
    iput-object p3, p0, Lrq/b;->c:Lrq/q0;

    .line 29
    .line 30
    iput-object p4, p0, Lrq/b;->d:Lrq/c;

    .line 31
    .line 32
    iput-object p5, p0, Lrq/b;->e:Lio/bidmachine/rendering/model/Orientation;

    .line 33
    .line 34
    iput-object p6, p0, Lrq/b;->f:Lrq/f;

    .line 35
    .line 36
    iput-object p7, p0, Lrq/b;->g:Ljava/util/Map;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lrq/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/b;->b:Ljava/util/Queue;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lrq/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/b;->f:Lrq/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lio/bidmachine/rendering/model/CacheType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/b;->a:Lio/bidmachine/rendering/model/CacheType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lio/bidmachine/rendering/model/Orientation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/b;->e:Lio/bidmachine/rendering/model/Orientation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lrq/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/b;->d:Lrq/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lrq/q0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/b;->c:Lrq/q0;

    .line 2
    .line 3
    return-object v0
.end method
