.class public Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;
.super Ljava/lang/Object;
.source "BareVideoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/model/BareVideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BareGearInfo"
.end annotation


# instance fields
.field public key:I

.field public mGearType:Lcom/ss/ttvideoengine/model/BareVideoInfo$GearType;

.field public value:I


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/model/BareVideoInfo$GearType;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;->mGearType:Lcom/ss/ttvideoengine/model/BareVideoInfo$GearType;

    .line 5
    .line 6
    iput p2, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;->key:I

    .line 7
    .line 8
    iput p3, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;->value:I

    .line 9
    .line 10
    return-void
.end method
