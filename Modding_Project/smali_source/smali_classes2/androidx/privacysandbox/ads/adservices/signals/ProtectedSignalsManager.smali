.class public abstract Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;
.super Ljava/lang/Object;
.source "ProtectedSignalsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ProtectedSignalsManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;->Companion:Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext12OptIn;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;->Companion:Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;->obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public abstract updateSignals(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;Lrs/c;)Ljava/lang/Object;
    .param p1    # Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_PROTECTED_SIGNALS"
    .end annotation

    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext12OptIn;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
