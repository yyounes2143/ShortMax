.class public final Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToAllowlistedSize;
.super Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifiedToAllowlistedSize"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bestAllowlistedSize:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "newUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ModifiedToAllowlistedSize"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;-><init>(Landroid/net/Uri;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToAllowlistedSize;->bestAllowlistedSize:Ljava/lang/Integer;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getBestAllowlistedSize()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToAllowlistedSize;->bestAllowlistedSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method
