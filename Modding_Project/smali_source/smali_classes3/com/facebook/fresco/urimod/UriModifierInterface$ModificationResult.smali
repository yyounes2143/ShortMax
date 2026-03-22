.class public abstract Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.super Ljava/lang/Object;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ModificationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Disabled;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpMemoryCache;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final comment:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;->comment:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getBestAllowlistedSize()Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;->comment:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
