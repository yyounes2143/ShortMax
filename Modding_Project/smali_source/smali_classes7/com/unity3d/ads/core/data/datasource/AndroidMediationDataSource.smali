.class public final Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;
.super Ljava/lang/Object;
.source "AndroidMediationDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/MediationDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MEDIATION_NAME:Ljava/lang/String; = "name"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MEDIATION_NAME_KEY:Ljava/lang/String; = "mediation.name.value"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MEDIATION_STORAGE_NAME:Ljava/lang/String; = "mediation"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MEDIATION_VALUE:Ljava/lang/String; = "value"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MEDIATION_VERSION:Ljava/lang/String; = "version"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MEDIATION_VERSION_KEY:Ljava/lang/String; = "mediation.version.value"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final storage:Lcom/unity3d/services/core/misc/JsonStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->Companion:Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;

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
    const-string v0, "storage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->storage:Lcom/unity3d/services/core/misc/JsonStorage;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->storage:Lcom/unity3d/services/core/misc/JsonStorage;

    .line 2
    .line 3
    const-string v1, "mediation.name.value"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->storage:Lcom/unity3d/services/core/misc/JsonStorage;

    .line 2
    .line 3
    const-string v1, "mediation.version.value"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method
