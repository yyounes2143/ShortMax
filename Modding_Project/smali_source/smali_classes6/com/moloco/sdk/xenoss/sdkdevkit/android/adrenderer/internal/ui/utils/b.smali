.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;
    .locals 4
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "buttonType"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;

    .line 7
    .line 8
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;-><init>(FF)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;

    .line 15
    .line 16
    invoke-direct {v3, v2, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;-><init>(FF)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
