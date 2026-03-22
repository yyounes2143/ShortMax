.class public interface abstract annotation Lcom/inmobi/unification/sdk/InitializationStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/media/e6;
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

.field public static final MISSING_REQUIRED_DEPENDENCIES:Ljava/lang/String; = "SDK could not be initialized; Required dependency could not be found. Please check out documentation and include the required dependency."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUCCESS:Ljava/lang/String; = "Success"
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
    sget-object v0, Lcom/inmobi/media/e6;->a:Lcom/inmobi/media/e6;

    .line 2
    .line 3
    sput-object v0, Lcom/inmobi/unification/sdk/InitializationStatus;->Companion:Lcom/inmobi/media/e6;

    .line 4
    .line 5
    return-void
.end method
