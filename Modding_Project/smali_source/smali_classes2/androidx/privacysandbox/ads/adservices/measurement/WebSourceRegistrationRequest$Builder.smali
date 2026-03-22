.class public final Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
.super Ljava/lang/Object;
.source "WebSourceRegistrationRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWebSourceRegistrationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSourceRegistrationRequest.kt\nandroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1#2:182\n*E\n"
    }
.end annotation


# instance fields
.field private appDestination:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private inputEvent:Landroid/view/InputEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final topOriginUri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private verifiedDestination:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private webDestination:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final webSourceParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "webSourceParams"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "topOriginUri"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->webSourceParams:Ljava/util/List;

    .line 17
    .line 18
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->topOriginUri:Landroid/net/Uri;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final build()Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->webSourceParams:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->topOriginUri:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->inputEvent:Landroid/view/InputEvent;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->appDestination:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->webDestination:Landroid/net/Uri;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->verifiedDestination:Landroid/net/Uri;

    .line 14
    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;-><init>(Ljava/util/List;Landroid/net/Uri;Landroid/view/InputEvent;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 17
    .line 18
    .line 19
    return-object v7
.end method

.method public final setAppDestination(Landroid/net/Uri;)Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->appDestination:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setInputEvent(Landroid/view/InputEvent;)Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .locals 1
    .param p1    # Landroid/view/InputEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inputEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->inputEvent:Landroid/view/InputEvent;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setVerifiedDestination(Landroid/net/Uri;)Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->verifiedDestination:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setWebDestination(Landroid/net/Uri;)Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->webDestination:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method
