.class Lcom/ss/ttvideoengine/portrait/PortraitEngine$Holder;
.super Ljava/lang/Object;
.source "PortraitEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/portrait/PortraitEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final Instance:Lcom/ss/ttvideoengine/portrait/PortraitEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/portrait/PortraitEngine;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/portrait/PortraitEngine$Holder;->Instance:Lcom/ss/ttvideoengine/portrait/PortraitEngine;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000()Lcom/ss/ttvideoengine/portrait/PortraitEngine;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/portrait/PortraitEngine$Holder;->Instance:Lcom/ss/ttvideoengine/portrait/PortraitEngine;

    .line 2
    .line 3
    return-object v0
.end method
