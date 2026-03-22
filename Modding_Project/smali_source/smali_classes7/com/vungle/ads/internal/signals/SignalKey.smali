.class public final Lcom/vungle/ads/internal/signals/SignalKey;
.super Ljava/lang/Object;
.source "SignalKey.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final AD_LOADED_PLAYED_DURATION:I = 0x6e

.field public static final AD_SIGNAL:I = 0x6a

.field public static final DURATION_AFTER_PREVIOUS_LOAD:I = 0x6d

.field public static final EVENT_ID:I = 0x6b

.field public static final INSTANCE:Lcom/vungle/ads/internal/signals/SignalKey;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCREEN_ORIENTATION:I = 0x6c

.field public static final SESSION_COUNT:I = 0x67

.field public static final SESSION_CREATION_TIME:I = 0x64

.field public static final SESSION_DEPTH:I = 0x68

.field public static final SESSION_DURATION:I = 0x66

.field public static final SESSION_ID:I = 0x65

.field public static final TEMPLATE_SIGNAL:I = 0x1f4

.field public static final UNCLOSED_AD:I = 0x69


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/signals/SignalKey;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/signals/SignalKey;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/signals/SignalKey;->INSTANCE:Lcom/vungle/ads/internal/signals/SignalKey;

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
