.class public final Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;
.super Lio/bidmachine/media3/datasource/DataSourceException;
.source "AssetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/AssetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
