.class final Lcom/facebook/appevents/internal/AppLinkManager$preferences$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppLinkManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/AppLinkManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lcom/facebook/appevents/internal/AppLinkManager$preferences$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/appevents/internal/AppLinkManager$preferences$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/appevents/internal/AppLinkManager$preferences$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/appevents/internal/AppLinkManager$preferences$2;->d:Lcom/facebook/appevents/internal/AppLinkManager$preferences$2;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 3

    .line 2
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.sdk.APPLINK_INFO"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/appevents/internal/AppLinkManager$preferences$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
