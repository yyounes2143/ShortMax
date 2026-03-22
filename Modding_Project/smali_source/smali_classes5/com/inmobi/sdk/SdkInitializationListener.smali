.class public interface abstract Lcom/inmobi/sdk/SdkInitializationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/media/Wc;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INVALID_ACCOUNT_ID:Ljava/lang/String; = "Account id cannot be empty. Please provide a valid account id."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INVALID_SITE_ID:Ljava/lang/String; = "SiteId cannot be empty. Please provide a valid SiteId."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MISSING_CONTEXT:Ljava/lang/String; = "Context cannot be null. Please provide a valid context object."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MISSING_REQUIRED_DEPENDENCIES:Ljava/lang/String; = "SDK could not be initialized; Required dependency could not be found. Please check out documentation and include the required dependency."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MISSING_WEBVIEW_DEPENDENCY:Ljava/lang/String; = "SDK could not be initialized; Required WebView dependency could not be found."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "SDK could not be initialized; an unexpected error was encountered."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/Wc;->a:Lcom/inmobi/media/Wc;

    .line 2
    .line 3
    sput-object v0, Lcom/inmobi/sdk/SdkInitializationListener;->Companion:Lcom/inmobi/media/Wc;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract onInitializationComplete(Ljava/lang/Error;)V
    .param p1    # Ljava/lang/Error;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method
