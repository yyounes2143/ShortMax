.class public final Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;
.super Lcom/unity3d/ads/core/configuration/MetadataReader;
.source "MediationTraitsMetadataReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/ads/core/configuration/MetadataReader<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMediationTraitsMetadataReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediationTraitsMetadataReader.kt\ncom/unity3d/ads/core/configuration/MediationTraitsMetadataReader\n+ 2 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n7#2,7:20\n1#3:27\n*S KotlinDebug\n*F\n+ 1 MediationTraitsMetadataReader.kt\ncom/unity3d/ads/core/configuration/MediationTraitsMetadataReader\n*L\n11#1:20,7\n*E\n"
    }
.end annotation


# static fields
.field public static final BOLD_SDK_ENABLED:Ljava/lang/String; = "boldSdkEnabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MEDIATION_TRAITS:Ljava/lang/String; = "mediation.traits.value"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USE_REFACTORED_HTTP_CLIENT:Ljava/lang/String; = "useRefactoredHttpClient"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;->Companion:Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/misc/JsonStorage;)V
    .locals 1
    .param p1    # Lcom/unity3d/services/core/misc/JsonStorage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "jsonStorage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mediation.traits.value"

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/configuration/MetadataReader;-><init>(Lcom/unity3d/services/core/misc/JsonStorage;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getBooleanTrait(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/unity3d/ads/core/configuration/MetadataReader;->getJsonStorage()Lcom/unity3d/services/core/misc/JsonStorage;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/unity3d/ads/core/configuration/MetadataReader;->getKey()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v2, "get(key)"

    .line 22
    .line 23
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    instance-of v2, v0, Lorg/json/JSONObject;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v1

    .line 32
    :goto_0
    if-nez v0, :cond_2

    .line 33
    .line 34
    :cond_1
    move-object v0, v1

    .line 35
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move-object v0, v1

    .line 47
    :goto_1
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_4
    return-object v1
.end method
