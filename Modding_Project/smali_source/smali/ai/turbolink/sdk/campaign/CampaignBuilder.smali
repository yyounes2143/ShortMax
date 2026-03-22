.class public final Lai/turbolink/sdk/campaign/CampaignBuilder;
.super Ljava/lang/Object;
.source "CampaignBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;,
        Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;,
        Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;,
        Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;,
        Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;,
        Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;,
        Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;,
        Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;,
        Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;,
        Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;,
        Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private _appLoginActivityRef:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _appRegActivityRef:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final _context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private eventListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->_context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->url:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final build()V
    .locals 4

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v0, "TurboLink is not setup properly. make sure to call autoInstance."

    .line 10
    .line 11
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->url:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v0, "The campaign URL passed cannot be empty."

    .line 24
    .line 25
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 30
    .line 31
    iget-object v2, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->_context:Landroid/content/Context;

    .line 32
    .line 33
    const-class v3, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 34
    .line 35
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 39
    .line 40
    invoke-virtual {v2}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getWEBVIEW_INTENT_EXTRA_KEY()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->url:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->url:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lai/turbolink/sdk/TurboLink$Companion;->setLastOpenWebViewUrl(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->_context:Landroid/content/Context;

    .line 55
    .line 56
    instance-of v2, v0, Landroid/app/Activity;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "The context is not an activity object."

    .line 65
    .line 66
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method public final getLoginActivityRef()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->_appLoginActivityRef:Lkotlin/reflect/KClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRegActivityRef()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->_appRegActivityRef:Lkotlin/reflect/KClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public final withEventListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;)Lai/turbolink/sdk/campaign/CampaignBuilder;
    .locals 1
    .param p1    # Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "eventListenerCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->eventListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;

    .line 7
    .line 8
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->withEventListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final withLoginActivityRef(Lkotlin/reflect/KClass;)Lai/turbolink/sdk/campaign/CampaignBuilder;
    .locals 1
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lai/turbolink/sdk/campaign/CampaignBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activityRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->_appLoginActivityRef:Lkotlin/reflect/KClass;

    .line 7
    .line 8
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->withLoginActivity(Lkotlin/reflect/KClass;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final withRegActivityRef(Lkotlin/reflect/KClass;)Lai/turbolink/sdk/campaign/CampaignBuilder;
    .locals 1
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lai/turbolink/sdk/campaign/CampaignBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activityRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/CampaignBuilder;->_appRegActivityRef:Lkotlin/reflect/KClass;

    .line 7
    .line 8
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->withRegActivity(Lkotlin/reflect/KClass;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method
