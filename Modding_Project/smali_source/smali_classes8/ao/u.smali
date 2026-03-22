.class public interface abstract Lao/u;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# static fields
.field public static final a:Lao/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lao/t;

    .line 2
    .line 3
    invoke-direct {v0}, Lao/t;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lao/u;->a:Lao/u;

    .line 7
    .line 8
    return-void
.end method

.method private static synthetic c()[Lao/p;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lao/p;

    .line 3
    .line 4
    return-object v0
.end method

.method public static synthetic f()[Lao/p;
    .locals 1

    .line 1
    invoke-static {}, Lao/u;->c()[Lao/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public a(Lyo/r$a;)Lao/u;
    .locals 0

    .line 1
    return-object p0
.end method

.method public b(I)Lao/u;
    .locals 0

    .line 1
    return-object p0
.end method

.method public abstract createExtractors()[Lao/p;
.end method

.method public d(Landroid/net/Uri;Ljava/util/Map;)[Lao/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lao/p;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lao/u;->createExtractors()[Lao/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Z)Lao/u;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-object p0
.end method
