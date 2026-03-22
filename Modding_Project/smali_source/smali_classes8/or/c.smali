.class public final Lor/c;
.super Ljava/lang/Object;
.source "HttpClientEngineCapability.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Ljava/util/Map<",
            "Lor/b<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/ktor/client/plugins/HttpTimeout$Plugin;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyr/a;

    .line 2
    .line 3
    const-string v1, "EngineCapabilities"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lor/c;->a:Lyr/a;

    .line 9
    .line 10
    sget-object v0, Lio/ktor/client/plugins/HttpTimeout;->d:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/collections/y0;->d(Ljava/lang/Object;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lor/c;->b:Ljava/util/Set;

    .line 17
    .line 18
    return-void
.end method

.method public static final a()Lyr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyr/a<",
            "Ljava/util/Map<",
            "Lor/b<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lor/c;->a:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method
