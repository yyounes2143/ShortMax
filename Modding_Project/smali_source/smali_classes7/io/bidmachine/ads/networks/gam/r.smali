.class public Lio/bidmachine/ads/networks/gam/r;
.super Ljava/lang/Object;
.source "GAMTypeConfig.java"


# instance fields
.field private final a:Lio/bidmachine/AdsFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam/t;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/AdsFormat;Ljava/util/List;I)V
    .locals 0
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam/t;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/r;->a:Lio/bidmachine/AdsFormat;

    .line 5
    .line 6
    iput p3, p0, Lio/bidmachine/ads/networks/gam/r;->c:I

    .line 7
    .line 8
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/r;->b:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Lio/bidmachine/AdsFormat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/r;->a:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/ads/networks/gam/r;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/r;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
