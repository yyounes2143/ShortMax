.class public interface abstract Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/media/P5;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NETWORK_FAILURE_AND_NO_LOCAL_DATA_PRESENT:Ljava/lang/String; = "Fetching the unifiedIds from ID Service has failed and there are no unified ids present in cache"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NO_LOCAL_DATA_PRESENT:Ljava/lang/String; = "No local data present"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PUSH_NEEDS_TO_BE_CALLED_FIRST:Ljava/lang/String; = "Push api needs to called prior to fetch"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNIFIED_SERVICE_IS_NOT_ENABLED:Ljava/lang/String; = "UnifiedId Service not enabled, please connect with your respective partner manager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USER_HAS_AGE_RESTRICTION:Ljava/lang/String; = "User has age restriction"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USER_HAS_OPTED_OUT:Ljava/lang/String; = "User has opted out for tracking"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/P5;->a:Lcom/inmobi/media/P5;

    .line 2
    .line 3
    sput-object v0, Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;->Companion:Lcom/inmobi/media/P5;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract onFetchCompleted(Lorg/json/JSONObject;Ljava/lang/Error;)V
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Error;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method
