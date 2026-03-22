.class public final Lcom/facebook/i$b;
.super Ljava/lang/Object;
.source "CallbackManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/facebook/i$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/i$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/i$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/i$b;->a:Lcom/facebook/i$b;

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

.method public static final a()Lcom/facebook/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/internal/CallbackManagerImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
