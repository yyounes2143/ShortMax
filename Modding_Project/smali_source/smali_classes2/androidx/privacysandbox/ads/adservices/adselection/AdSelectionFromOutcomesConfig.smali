.class public final Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;
.super Ljava/lang/Object;
.source "AdSelectionFromOutcomesConfig.kt"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext10OptIn;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final adSelectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final adSelectionSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectionLogicUri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/util/List;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "seller"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adSelectionIds"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adSelectionSignals"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "selectionLogicUri"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionIds:Ljava/util/List;

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 29
    .line 30
    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->selectionLogicUri:Landroid/net/Uri;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .locals 2
    .annotation build Landroidx/annotation/RequiresExtension$Container;
        value = {
            .subannotation Landroidx/annotation/RequiresExtension;
                extension = 0xf4240
                version = 0xa
            .end subannotation,
            .subannotation Landroidx/annotation/RequiresExtension;
                extension = 0x1f
                version = 0xa
            .end subannotation
        }
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/adselection/o;->a()Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->convertToAdServices$ads_adservices_release()Landroid/adservices/common/AdSelectionSignals;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/j;->a(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionIds:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/k;->a(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;Ljava/util/List;)Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->selectionLogicUri:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/l;->a(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;->convertToAdServices$ads_adservices_release()Landroid/adservices/common/AdTechIdentifier;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/m;->a(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroidx/privacysandbox/ads/adservices/adselection/n;->a(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;)Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "Builder()\n            .s\u2026s())\n            .build()"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 12
    .line 13
    check-cast p1, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionIds:Ljava/util/List;

    .line 24
    .line 25
    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionIds:Ljava/util/List;

    .line 26
    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 34
    .line 35
    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 36
    .line 37
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->selectionLogicUri:Landroid/net/Uri;

    .line 44
    .line 45
    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->selectionLogicUri:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v0, v2

    .line 55
    :goto_0
    return v0
.end method

.method public final getAdSelectionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionIds:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdSelectionSignals()Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelectionLogicUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->selectionLogicUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSeller()Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionIds:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->selectionLogicUri:Landroid/net/Uri;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public final setSelectionLogicUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->selectionLogicUri:Landroid/net/Uri;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AdSelectionFromOutcomesConfig: seller="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", adSelectionIds=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionIds:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "\', adSelectionSignals="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->adSelectionSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", selectionLogicUri="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;->selectionLogicUri:Landroid/net/Uri;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
