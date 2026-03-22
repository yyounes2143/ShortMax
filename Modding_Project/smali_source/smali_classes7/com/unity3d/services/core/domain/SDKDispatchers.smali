.class public final Lcom/unity3d/services/core/domain/SDKDispatchers;
.super Ljava/lang/Object;
.source "SDKDispatchers.kt"

# interfaces
.implements Lcom/unity3d/services/core/domain/ISDKDispatchers;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final default:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final io:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final main:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->io:Lgt/c0;

    .line 9
    .line 10
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->default:Lgt/c0;

    .line 15
    .line 16
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->main:Lgt/c0;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public getDefault()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->default:Lgt/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIo()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->io:Lgt/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMain()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/domain/SDKDispatchers;->main:Lgt/c0;

    .line 2
    .line 3
    return-object v0
.end method
