.class public final Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequestHelper;
.super Ljava/lang/Object;
.source "GetTopicsRequestHelper.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClassVerificationFailure"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequestHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequestHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequestHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequestHelper;->INSTANCE:Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequestHelper;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final convertRequestWithRecordObservation$ads_adservices_release(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;)Li/a;
    .locals 2
    .param p1    # Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresExtension$Container;
        value = {
            .subannotation Landroidx/annotation/RequiresExtension;
                extension = 0xf4240
                version = 0x5
            .end subannotation,
            .subannotation Landroidx/annotation/RequiresExtension;
                extension = 0x1f
                version = 0x9
            .end subannotation
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Li/a$a;

    .line 7
    .line 8
    invoke-direct {v0}, Li/a$a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->getAdsSdkName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Li/a$a;->b(Ljava/lang/String;)Li/a$a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->shouldRecordObservation()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, p1}, Li/a$a;->c(Z)Li/a$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Li/a$a;->a()Li/a;

    .line 28
    .line 29
    .line 30
    const-string p1, "Builder()\n            .s\u2026ion)\n            .build()"

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final convertRequestWithoutRecordObservation$ads_adservices_release(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;)Li/a;
    .locals 1
    .param p1    # Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresExtension$Container;
        value = {
            .subannotation Landroidx/annotation/RequiresExtension;
                extension = 0xf4240
                version = 0x4
            .end subannotation,
            .subannotation Landroidx/annotation/RequiresExtension;
                extension = 0x1f
                version = 0x9
            .end subannotation
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Li/a$a;

    .line 7
    .line 8
    invoke-direct {v0}, Li/a$a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->getAdsSdkName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Li/a$a;->b(Ljava/lang/String;)Li/a$a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Li/a$a;->a()Li/a;

    .line 20
    .line 21
    .line 22
    const-string p1, "Builder()\n            .s\u2026ame)\n            .build()"

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
