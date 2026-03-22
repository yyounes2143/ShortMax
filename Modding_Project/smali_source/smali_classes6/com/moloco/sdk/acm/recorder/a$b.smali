.class public final Lcom/moloco/sdk/acm/recorder/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/acm/recorder/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;
    .locals 0
    .param p0    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p0, "eventName"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/moloco/sdk/acm/AndroidClientMetrics;->a:Lcom/moloco/sdk/acm/AndroidClientMetrics;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/acm/AndroidClientMetrics;->w(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
