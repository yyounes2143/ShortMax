.class public final Lcom/startshorts/androidplayer/startup/DataCacheInitializer;
.super Lcom/startshorts/androidplayer/startup/BaseInitializer;
.source "DataCacheInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/startup/DataCacheInitializer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/startup/BaseInitializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lcom/startshorts/androidplayer/startup/DataCacheInitializer$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/startup/DataCacheInitializer$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/startup/DataCacheInitializer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/startup/DataCacheInitializer;->b:Lcom/startshorts/androidplayer/startup/DataCacheInitializer$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/BaseInitializer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DataCacheInitializer"

    .line 2
    .line 3
    return-object v0
.end method

.method public dependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/startup/LoggerInitializer;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public e(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Ldd/k;->a:Ldd/k;

    .line 7
    .line 8
    sget-object v0, Lid/a;->a:Lid/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    new-instance v1, Lcom/startshorts/androidplayer/startup/DataCacheInitializer$b;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/startup/DataCacheInitializer$b;-><init>(Lcom/startshorts/androidplayer/startup/DataCacheInitializer;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "v1"

    .line 20
    .line 21
    invoke-virtual {p2, p1, v2, v0, v1}, Ldd/k;->m(Landroid/content/Context;Ljava/lang/String;ZLdd/d;)Z

    .line 22
    .line 23
    .line 24
    sget-object p1, Ldd/c;->a:Ldd/c;

    .line 25
    .line 26
    new-instance p2, Lcom/startshorts/androidplayer/startup/DataCacheInitializer$c;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/startup/DataCacheInitializer$c;-><init>(Lcom/startshorts/androidplayer/startup/DataCacheInitializer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ldd/c;->j(Ldd/d;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lud/a;->a:Lud/a;

    .line 35
    .line 36
    sget-object p2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    invoke-virtual {p1, v0, v1}, Lud/a;->a0(J)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Ljava/lang/Object;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    return-object p1
.end method
