.class public final Lcom/moloco/sdk/internal/publisher/nativead/parser/b;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V
    .locals 1
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "errorSubType"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;->a:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 2
    .line 3
    return-object v0
.end method
