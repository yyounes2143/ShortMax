.class public final Lcom/unity3d/services/core/domain/task/EmptyParams;
.super Ljava/lang/Object;
.source "EmptyParams.kt"

# interfaces
.implements Lcom/unity3d/services/core/domain/task/BaseParams;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/core/domain/task/EmptyParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/unity3d/services/core/domain/task/EmptyParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/services/core/domain/task/EmptyParams;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/unity3d/services/core/domain/task/EmptyParams;->INSTANCE:Lcom/unity3d/services/core/domain/task/EmptyParams;

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
