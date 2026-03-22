.class public final Lcom/inmobi/adquality/models/AdQualityControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private beacon:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private enableSdkAdQuality:Z

.field private screenshotDelayInSeconds:F

.field private takeScreenshot:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getBeacon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/adquality/models/AdQualityControl;->beacon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnableSdkAdQuality()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/adquality/models/AdQualityControl;->enableSdkAdQuality:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getScreenshotDelayInSeconds()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/adquality/models/AdQualityControl;->screenshotDelayInSeconds:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTakeScreenshot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/adquality/models/AdQualityControl;->takeScreenshot:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setBeacon(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/adquality/models/AdQualityControl;->beacon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableSdkAdQuality(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/adquality/models/AdQualityControl;->enableSdkAdQuality:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setScreenshotDelayInSeconds(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/adquality/models/AdQualityControl;->screenshotDelayInSeconds:F

    .line 2
    .line 3
    return-void
.end method

.method public final setTakeScreenshot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/adquality/models/AdQualityControl;->takeScreenshot:Z

    .line 2
    .line 3
    return-void
.end method
