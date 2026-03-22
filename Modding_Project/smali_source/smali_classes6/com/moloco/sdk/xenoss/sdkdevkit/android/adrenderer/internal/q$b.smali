.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/q$b;
.super Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/q;->c(Landroid/content/Context;Lgt/g0;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkt/e;Z)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic m:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;Lkt/e;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;",
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v11, p0

    .line 2
    move-object/from16 v0, p4

    .line 3
    .line 4
    iput-object v0, v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/q$b;->m:Lkt/e;

    .line 5
    .line 6
    const/16 v9, 0x58

    .line 7
    .line 8
    const/4 v10, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    move-object/from16 v2, p5

    .line 15
    .line 16
    move-object/from16 v3, p6

    .line 17
    .line 18
    move-object v6, p2

    .line 19
    move-object v8, p3

    .line 20
    invoke-direct/range {v0 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public p0()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->p0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/q$b;->m:Lkt/e;

    .line 5
    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
