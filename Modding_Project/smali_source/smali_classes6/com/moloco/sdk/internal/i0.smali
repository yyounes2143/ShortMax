.class public final Lcom/moloco/sdk/internal/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/h0;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSdkEventUrlTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SdkEventUrlTracker.kt\ncom/moloco/sdk/internal/SdkEventUrlTrackerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "persistentHttpRequest"

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
    iput-object p1, p0, Lcom/moloco/sdk/internal/i0;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JLcom/moloco/sdk/internal/c0;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/c0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "url"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/c0;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 p4, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/i0;->b(Ljava/lang/String;JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/moloco/sdk/internal/i0;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string/jumbo p3, "toString(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/16 v5, 0xc

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    const-string v1, "SdkEventUrlTrackerImpl"

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    :goto_2
    return p1
.end method

.method public final b(Ljava/lang/String;JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p4, :cond_1

    .line 2
    .line 3
    invoke-interface {p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-static {p1, p4}, Lcom/moloco/sdk/internal/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    if-nez p4, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p1, p4

    .line 15
    :cond_1
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/moloco/sdk/internal/utils/d;->b(Ljava/lang/String;J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
