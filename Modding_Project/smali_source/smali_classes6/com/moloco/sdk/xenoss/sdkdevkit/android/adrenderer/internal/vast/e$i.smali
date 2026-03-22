.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkt/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->v(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkt/b<",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkt/b;

.field public final synthetic b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

.field public final synthetic c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;

.field public final synthetic d:D

.field public final synthetic e:Lcom/moloco/sdk/common_adapter_internal/b;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkt/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->a:Lkt/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->d:D

    .line 8
    .line 9
    iput-object p6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->e:Lcom/moloco/sdk/common_adapter_internal/b;

    .line 10
    .line 11
    iput-boolean p7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->f:Z

    .line 12
    .line 13
    iput-object p8, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p9, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public collect(Lkt/c;Lrs/c;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->a:Lkt/b;

    .line 2
    .line 3
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->d:D

    .line 10
    .line 11
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->e:Lcom/moloco/sdk/common_adapter_internal/b;

    .line 12
    .line 13
    iget-boolean v8, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->f:Z

    .line 14
    .line 15
    iget-object v9, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->g:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v10, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 18
    .line 19
    move-object v1, v11

    .line 20
    move-object v2, p1

    .line 21
    invoke-direct/range {v1 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;-><init>(Lkt/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v11, p2}, Lkt/b;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-ne p1, p2, :cond_0

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p1
.end method
