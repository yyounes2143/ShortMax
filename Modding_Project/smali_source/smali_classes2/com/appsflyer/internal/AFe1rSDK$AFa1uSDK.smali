.class public final Lcom/appsflyer/internal/AFe1rSDK$AFa1uSDK;
.super Lcom/appsflyer/internal/AFe1rSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFe1rSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AFa1uSDK"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appsflyer/internal/AFe1rSDK$AFa1uSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFe1rSDK$AFa1uSDK;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1rSDK$AFa1uSDK;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/appsflyer/internal/AFe1rSDK$AFa1uSDK;->INSTANCE:Lcom/appsflyer/internal/AFe1rSDK$AFa1uSDK;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "af_sandbox_revenue"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFe1rSDK;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
