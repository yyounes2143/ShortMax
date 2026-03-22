.class public final Lcom/unity3d/services/UnityAdsConstants$ClientInfo;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$ClientInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SDK_VERSION:I = 0xa281

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "4.16.1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$ClientInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$ClientInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$ClientInfo;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$ClientInfo;

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
