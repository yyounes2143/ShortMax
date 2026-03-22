.class public final Lcom/google/ads/mediation/vungle/VungleSdkWrapper;
.super Ljava/lang/Object;
.source "VungleSdkWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/ads/mediation/vungle/VungleSdkWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static delegate:Lcom/google/ads/mediation/vungle/SdkWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/mediation/vungle/VungleSdkWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/mediation/vungle/VungleSdkWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/mediation/vungle/VungleSdkWrapper;->INSTANCE:Lcom/google/ads/mediation/vungle/VungleSdkWrapper;

    .line 7
    .line 8
    new-instance v0, Lcom/google/ads/mediation/vungle/VungleSdkWrapper$delegate$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/ads/mediation/vungle/VungleSdkWrapper$delegate$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/ads/mediation/vungle/VungleSdkWrapper;->delegate:Lcom/google/ads/mediation/vungle/SdkWrapper;

    .line 14
    .line 15
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
