.class public interface abstract Lmn/e;
.super Ljava/lang/Object;
.source "HlsExtractorFactory.java"


# static fields
.field public static final a:Lmn/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmn/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lmn/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmn/e;->a:Lmn/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lyo/r$a;)Lmn/e;
    .locals 0

    .line 1
    return-object p0
.end method

.method public b(I)Lmn/e;
    .locals 0

    .line 1
    return-object p0
.end method

.method public c(Z)Lmn/e;
    .locals 0

    .line 1
    return-object p0
.end method

.method public d(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;
    .locals 0

    .line 1
    return-object p1
.end method

.method public abstract e(Landroid/net/Uri;Lio/bidmachine/media3/common/a;Ljava/util/List;Lcn/h0;Ljava/util/Map;Lao/q;Lhn/b2;)Lmn/f;
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lio/bidmachine/media3/common/a;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/a;",
            ">;",
            "Lcn/h0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lao/q;",
            "Lhn/b2;",
            ")",
            "Lmn/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
