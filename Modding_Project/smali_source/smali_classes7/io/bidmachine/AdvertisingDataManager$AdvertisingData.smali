.class public Lio/bidmachine/AdvertisingDataManager$AdvertisingData;
.super Ljava/lang/Object;
.source "AdvertisingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdvertisingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvertisingData"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final limitAdTrackingEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->id:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->limitAdTrackingEnabled:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->limitAdTrackingEnabled:Z

    .line 2
    .line 3
    return v0
.end method
