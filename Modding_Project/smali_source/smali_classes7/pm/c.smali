.class public final Lpm/c;
.super Ljava/lang/Object;
.source "PrivacySheetDataMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lpm/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpm/a;)V
    .locals 1
    .param p1    # Lpm/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "labelDataMapper"

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
    iput-object p1, p0, Lpm/c;->a:Lpm/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;)Lio/bidmachine/PrivacySheetData;
    .locals 4
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->getValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "data.data.value"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lsq/g;->c(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v2, p0, Lpm/c;->a:Lpm/a;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getLabel()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$LabelAsset;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v3, "data.label"

    .line 34
    .line 35
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Lpm/a;->a(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$LabelAsset;)Lio/bidmachine/LabelData;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v2, Lio/bidmachine/PrivacySheetData;

    .line 46
    .line 47
    invoke-direct {v2, p1, v1}, Lio/bidmachine/PrivacySheetData;-><init>(Lio/bidmachine/LabelData;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    move-object v0, v2

    .line 51
    :catchall_0
    :goto_0
    return-object v0
.end method
