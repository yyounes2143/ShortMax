.class public final Lcom/unity3d/ads/core/data/repository/AndroidTcfRepository;
.super Ljava/lang/Object;
.source "AndroidTcfRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/TcfRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final tcfDataSource:Lcom/unity3d/ads/core/data/datasource/TcfDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/TcfDataSource;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/datasource/TcfDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tcfDataSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidTcfRepository;->tcfDataSource:Lcom/unity3d/ads/core/data/datasource/TcfDataSource;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getTcfDataSource()Lcom/unity3d/ads/core/data/datasource/TcfDataSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidTcfRepository;->tcfDataSource:Lcom/unity3d/ads/core/data/datasource/TcfDataSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTcfString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidTcfRepository;->tcfDataSource:Lcom/unity3d/ads/core/data/datasource/TcfDataSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/TcfDataSource;->getTcfString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
