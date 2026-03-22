.class public final Lcom/unity3d/services/UnityAdsConstants$Timeout;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timeout"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INIT_TIMEOUT_MS:J = 0x1d4c0L

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Timeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$Timeout;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$Timeout;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$Timeout;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Timeout;

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
