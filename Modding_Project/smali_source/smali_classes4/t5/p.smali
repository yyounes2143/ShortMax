.class public interface abstract Lt5/p;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# static fields
.field public static final a:Lt5/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt5/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lt5/o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt5/p;->a:Lt5/p;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a()[Lt5/k;
    .locals 1

    .line 1
    invoke-static {}, Lt5/p;->c()[Lt5/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static synthetic c()[Lt5/k;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lt5/k;

    .line 3
    .line 4
    return-object v0
.end method


# virtual methods
.method public abstract createExtractors()[Lt5/k;
.end method

.method public d(Landroid/net/Uri;Ljava/util/Map;)[Lt5/k;
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
            "Lt5/k;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lt5/p;->createExtractors()[Lt5/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
